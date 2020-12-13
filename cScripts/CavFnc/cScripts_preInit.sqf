#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This is the rules set for the mission using the cba XEH. Each setting here is alterd via cbaSettings
 */

#ifdef DEBUG_MODE
    if !(is3DEN) then {
            ["Initializing CBA Settings...", "preInit"] call FUNC(logInfo);
    } else {
        diag_log formatText ["[%1] (%2) %3: %4", QUOTE(PREFIX), "INFO", "EDEN", "Initializing CBA Settings..."];
    };
#endif

// Check installed moduels
EGVAR(patches,usesACE)      = isClass (configFile >> "CfgPatches" >> "ace_main");
EGVAR(patches,usesACRE)     = isClass (configFile >> "CfgPatches" >> "acre_sys_core");
EGVAR(patches,usesTFAR)     = isClass (configFile >> "CfgPatches" >> "task_force_radio");
EGVAR(patches,usesAlive)    = isClass (configFile >> "CfgPatches" >> "ALiVE_main");
EGVAR(patches,usesAchilles) = isClass (configFile >> "CfgPatches" >> "achilles_data_f_achilles");
EGVAR(patches,usesZen)      = isClass (configFile >> "CfgPatches" >> "zen_main");

EGVAR(patches,usesCavPack)  = isClass (configFile >> "CfgPatches" >> "cavx_main");

// Global Variables
EGVAR(Staging,ZoneStatus) = false;


// Make settings name
private _cScriptSettings = "cScripts Mission Settings";

// Mission type
[
    QEGVAR(Settings,setMissionType),
    "LIST",
    ["Mission Type", "This will deside on what kind of startup hint you get on mission start."],
    [_cScriptSettings, "1; Mission"],
    [[0,1,2,3,4], ["Custom", "Operation", "Training", "Public", "Public ALiVE"], 1],
    true,
    {},
    true
] call CBA_fnc_addSetting;

// Ai setting
[
    QEGVAR(Settings,setAiSystemDifficulty),
    "LIST",
    ["AI Setting", "This adjustes the ai and make them less godlike and more arcade to play against."],
    [_cScriptSettings, "1; Mission"],
    [[0,1,2], ["Arma Default", "Adjusted", "Faction Based"], 2],
    true,
    {},
    true
] call CBA_fnc_addSetting;

// Acre Radio
[
    QEGVAR(Settings,setRadioChannelNames),
    "EDITBOX",
    ["Long Range Radio Channels","Array of radio channels used for ACRE"],
    [_cScriptSettings, "3; Player Radio"],
    '["UNUSED","AVIATION","VIKING","LANCER","BANSHEE","SABRE","BANDIT","MISFIT","HAVOC","IDF-1","IDF-2","CAS-1","CAS-2","GROUND-TO-AIR","ATLAS","FARP","CONVOY","ZEUS","CAG","COMMAND"]',
    true,
    {},
    true
] call CBA_fnc_addSetting;

// Mission startup hint settings
[
    QEGVAR(Settings,enableStartHint),
    "CHECKBOX",
    ["Startup Hint", "Enable or disable startup hints on mission start."],
    [_cScriptSettings, "2; Mission Startup"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
[
    QEGVAR(Settings,setStartupDelay),
    "SLIDER",
    ["Startup delay time","Define in seconds for how long the startup hint is shown or be enected."],
    [_cScriptSettings, "2; Mission Startup"],
    [5, 180, 30, 0],
    true,
    {},
    true
] call CBA_fnc_addSetting;
[
    QEGVAR(Settings,setCustomHintTopic),
    "EDITBOX",
    ["Custom hint topic", "When mission is set to Custom this topic will be shown.\nIt will look something like this:\n\n               Welcome!\n      My Custom Topic!\n                 [IMAGE]\n  My custom mission text...\n               Have fun!"],
    [_cScriptSettings, "2; Mission Startup"],
    "My custom Mission!",
    true,
    {},
    true
] call CBA_fnc_addSetting;
[
    QEGVAR(Settings,setCustomHintText),
    "EDITBOX",
    ["Custom hint text", "When mission is set to Custom this text will be shown.\nIt will look something like this:\n\n               Welcome!\n      My Custom Topic!\n                 [IMAGE]\n  My custom mission text...\n               Have fun!"],
    [_cScriptSettings, "2; Mission Startup"],
    "I have design this mission! Yey for me!",
    true,
    {},
    true
] call CBA_fnc_addSetting;



// Diary Records
[
    QEGVAR(Settings,showDiaryRecords),
    "CHECKBOX",
    ["Documents","Allow the mission to write diary help documents."],
    [_cScriptSettings, "3; Player"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;

// Rank
[
    QEGVAR(Settings,setPlayerRank),
    "CHECKBOX",
    ["Rank Based on Prefix","Allow mission to apply rank based on clan name prefixes."],
    [_cScriptSettings, "3; Player"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;

// Tagging
[
    QEGVAR(Settings,allowCustomTagging),
    "CHECKBOX",
    ["Custom Tagging","Allow players to spray custom taggs."],
    [_cScriptSettings, "3; Player"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;

// Auto Insignia Application
[
    QEGVAR(Settings,allowInsigniaApplication),
    "CHECKBOX",
    ["Apply Insignia","Automaticly apply insignias based on squad name."],
    [_cScriptSettings, "3; Player"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;

// Radio Switch
[
    QEGVAR(Settings,setRadio),
    "CHECKBOX",
    ["Apply Radio Channel","Allow radio channels to be changed based on player squadname."],
    [_cScriptSettings, "3; Player Radio"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;

// Automatic Earplugs
[
    QEGVAR(Settings,addEarplugs),
    "CHECKBOX",
    ["Apply Earplugs","Automaticly apply earplugs to players on spawn and respawn."],
    [_cScriptSettings, "3; Player"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;

// Vehicle
[
    QEGVAR(Settings,useCustomVehicleSettings),
    "CHECKBOX",
    ["Vehicle Systems", "Enables scripted settings and functions to apply to vehicles."],
    [_cScriptSettings, "4; Vehicle"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
[
    QEGVAR(Settings,useCustomVehicleInventory),
    "CHECKBOX",
    ["Vehicle Loadouts", "Enables scripted loadouts to be applied to vehicles on mission init."],
    [_cScriptSettings, "4; Vehicle"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;


// Fortify
[
    QEGVAR(Settings,setFortifyRestriction),
    "LIST",
    ["Fortification Restrictions", "Define hwo can use the fortify action."],
    [_cScriptSettings, "5; Fortify"],
    [[0,1,2], ["Anyone", "Engineer", "Adv. Engineer"], 1],
    true,
    {},
    true
] call CBA_fnc_addSetting;
[
    QEGVAR(Settings,setFortifyBudget),
    "SLIDER",
    ["Fortification Budget","Define the budget per fortification site."],
    [_cScriptSettings, "5; Fortify"],
    [50, 2500, 800, 0],
    true,
    {},
    true
] call CBA_fnc_addSetting;


// Item Replacement system
[
    QEGVAR(Settings,allowReplaceItem),
    "CHECKBOX",
    ["Enable","Allow objects to be replaced with streamlined gear for consistency."],
    [_cScriptSettings, "6; Item Replacement"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
[
    QEGVAR(Settings,replaceMedical),
    "LIST",
    ["Medical Items","Allow medical items to be replaced with our custom ones.\nNote: this system will not be disabled if the ace medical convert items is enabled."],
    [_cScriptSettings, "6; Item Replacement"],
    [[0,1], ["Disabled", "Convert medical equipment"], 1],
    true,
    {},
    true
] call CBA_fnc_addSetting;
[
    QEGVAR(Settings,replaceHandGrenades),
    "LIST",
    ["M67 Fragmentation Grenade","Force specific usage of sertain objects"],
    [_cScriptSettings, "6; Item Replacement"],
    [[0,1,2], ["Disabled", "Use ACE M67", "Use RHS M67"], 2],
    true,
    {},
    true
] call CBA_fnc_addSetting;
[
    QEGVAR(Settings,replaceStunGrenades),
    "LIST",
    ["M84 Stun Grenade","Force specific usage of sertain objects"],
    [_cScriptSettings, "6; Item Replacement"],
    [[0,1,2], ["Disabled", "Use ACE M84", "Use RHS M84"], 1],
    true,
    {},
    true
] call CBA_fnc_addSetting;
[
    QEGVAR(Settings,replaceSmokeGrenades),
    "LIST",
    ["Smoke Grenade","Force specific usage of sertain objects"],
    [_cScriptSettings, "6; Item Replacement"],
    [[0,1,2], ["Disabled", "Use ACE Smokes", "Use RHS Smokes"], 1],
    true,
    {},
    true
] call CBA_fnc_addSetting;



// JumpSimulation
[
    QEGVAR(Settings,jumpSimulation),
    "LIST",
    ["Simulation Type","Combat jump simulation is a system that checks for lose equiped gear in the form of;\nnight vision googles, hats or glasses and make you lose the on a combat jump.\n    None: No simulation is done.\n    Basic: Lose gear unassigned.\n    Advanced: Lose gear is removed."],
    [_cScriptSettings, "7; Combat Jump Simulation"],
    [[0,1,2], ["None", "Basic", "Advanced"], 2],
    true,
    {},
    true
] call CBA_fnc_addSetting;
[
    QEGVAR(Settings,jumpSimulationNVG),
    "CHECKBOX",
    ["Include Night Vision Googles","Include equiped Night Vison Googles in the simulation."],
    [_cScriptSettings, "7; Combat Jump Simulation"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
[
    QEGVAR(Settings,jumpSimulationGlasses),
    "CHECKBOX",
    ["Include Non-combat Googles","Include Non-combat Googles in the simulation. This refere to sunshades and simular non-safety googles."],
    [_cScriptSettings, "7; Combat Jump Simulation"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
[
    QEGVAR(Settings,jumpSimulationHat),
    "CHECKBOX",
    ["Include Non-combat Headgear","Include Non-combat Headgear in the simulation. This refere to hats bandanas and baretes."],
    [_cScriptSettings, "7; Combat Jump Simulation"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;



// Zeus Moduels
[
    QEGVAR(Settings,enable7cavZeusModules),
    "CHECKBOX",
    ["Enable Custom Zeus Moduels","Allow mission to add 7Cav moduels using the Achilles or ZEN framework."],
    [_cScriptSettings, "8; Zeus"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;

#ifdef DEBUG_MODE
    if !(is3DEN) then {
            ["Initialization of CBA Settings completed...", "preInit"] call FUNC(logInfo);
    } else {
        diag_log formatText ["[%1] (%2) %3: %4", QUOTE(PREFIX), "INFO", "EDEN", "Initialization of CBA Settings completed..."];
    };
#endif


if (isClass (configFile >> "CfgPatches" >> "ace_arsenal")) then {
    if !(is3DEN) then {
        call FUNC(initACELoadouts);
    } else {
        0 spawn compile preprocessFileLineNumbers 'cScripts\CavFnc\functions\init\fn_initACELoadouts.sqf';
    };
};

// Load preInit mission settings
if (is3DEN) exitWith {};

#ifdef DEBUG_MODE
    ["Initializing...", "preInit"] call FUNC(logInfo);
#endif

switch (EGVAR(Settings,setMissionType)) do {
    case (0): { // Custom
    };
    case (1): { // Operation
    };
    case (2): { // Training
    };
    case (3): { // Public
    };
    case (4): { // Public Alive
    };
};

if (EGVAR(Settings,allowCustomTagging)) then {
    call FUNC(initTagging);
};

if (EGVAR(Settings,enable7cavZeusModules)) then {
    call FUNC(initModulesAchilles);
    call FUNC(initModulesZen);
};

if (EGVAR(Settings,setAiSystemDifficulty) >= 1 ) then {
    call FUNC(initAI);
};

switch (EGVAR(Settings,setFortifyRestriction)) do {
    case (0): { // Anyone
        [{true}] call acex_fortify_fnc_addDeployHandler;
    };
    case (1): { // Engineers
        [{
            params ["_unit"];
            private _isEngineer = _unit getVariable ["ACE_isEngineer", _unit getUnitTrait "engineer"];
            if (_isEngineer isEqualType 0) then {_isEngineer = _isEngineer >= 1};
            _isEngineer;
        }] call acex_fortify_fnc_addDeployHandler;
    };
    case (2): { // Adv Engineers
        [{
            params ["_unit"];
            private _isEngineer = _unit getVariable ["ACE_isEngineer", _unit getUnitTrait "engineer"];
            if (_isEngineer isEqualType 0) then {_isEngineer = _isEngineer >= 2};
            _isEngineer;
        }] call acex_fortify_fnc_addDeployHandler;
    };
};


#ifdef DEBUG_MODE
    ["Initialization completed", "preInit"] call FUNC(logInfo);
#endif
