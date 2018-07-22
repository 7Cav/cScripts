/*
 * Author: CPL.Brostrom.A
 * This is the rules set for the mission using the cba XEH. Each setting here is alterd via cbaSettings
 */
#include "..\script_component.hpp";

#ifdef DEBUG_MODE
    ["Initializing CBA Settings from preInit."] call FUNC(logInfo);
#endif

// Make settings name
private _cScriptSettings = "cScripts Mission Settings";

// Mission type
[
    "cScripts_Settings_setMissionType",
    "LIST",
    ["Mission Type", "This will deside on what kind of startup hint you get on mission start.\n"],
    [_cScriptSettings, "1; Mission"],
    [[0,1,2], ["Custom", "Operation", "Training"], 1],
    true,
    {}
] call CBA_Settings_fnc_init;

// Ai setting
[
    "cScripts_Settings_setAiSystemDifficulty",
    "LIST",
    ["AI Setting", "This adjustes the ai and make them less godlike and more roleplay to play against.\n"],
    [_cScriptSettings, "1; Mission"],
    [[0,1], ["Day", "Night / Jungle"], 0],
    true,
    {}
] call CBA_Settings_fnc_init;

// Mission startup hint settings
[
    "cScripts_Settings_enableStartHint",
    "CHECKBOX",
    ["Startup Hint", "Enable or disable startup hints on mission start.\n"],
    [_cScriptSettings, "2; Mission Startup"],
    true,
    true,
    {}
] call CBA_Settings_fnc_init;
[
    "cScripts_Settings_setRedLightTime",
    "SLIDER",
    ["Red light delay","Define in seconds for how long red light is enected.\n"],
    [_cScriptSettings, "2; Mission Startup"],
    [5, 180, 30, 0],
    true,
    {}
] call CBA_Settings_fnc_init;
[
    "cScripts_Settings_setTrainingHintTime",
    "SLIDER",
    ["Training hint delay","Define in seconds for how long training hint time is shown.\n"],
    [_cScriptSettings, "2; Mission Startup"],
    [5, 180, 20, 0],
    true,
    {}
] call CBA_Settings_fnc_init;
[
    "cScripts_Settings_setCustomHintTopic",
    "EDITBOX",
    "Custom hint topic",
    [_cScriptSettings, "2; Mission Startup"],
    "My custom Mission!",
    true,
    {}
] call CBA_Settings_fnc_init;
[
    "cScripts_Settings_setCustomHintText",
    "EDITBOX",
    "Custom hint text",
    [_cScriptSettings, "2; Mission Startup"],
    "I have design this mission! Yey for me!",
    true,
    {}
] call CBA_Settings_fnc_init;

// Diary Records
[
    "cScripts_Settings_showDiaryRecords",
    "CHECKBOX",
    ["Help documents","Allow the mission to write diary help documents.\n"],
    _cScriptSettings,
    true,
    true,
    {}
] call CBA_Settings_fnc_init;

// Custom init
[
    "cScripts_Settings_allowCustomInit",
    "CHECKBOX",
    ["Custom object init", "Allow the mission to be able to apply custom init to vehicles and objects pressent on mission start.\n"],
    [_cScriptSettings, "3; Custom Initzialisation"],
    true,
    true,
    {}
] call CBA_Settings_fnc_init;

// Vehicle
[
    "cScripts_Settings_useCustomVehicleSettings",
    "CHECKBOX",
    ["Vehicle Settings", "Allow mission to apply custom settings, including change inventory, to vehicles.\nC130 jump action and Helicopter Get out right and Left is Included here.\n"],
    [_cScriptSettings, "3; Custom Initzialisation"],
    true,
    true,
    {}
] call CBA_Settings_fnc_init;
[
    "cScripts_Settings_useCustomVehicleInventory",
    "CHECKBOX",
    ["Vehicle Inventory", "Allow mission to change the vehicles inventory.\n"],
    [_cScriptSettings, "3; Custom Initzialisation"],
    true,
    true,
    {}
] call CBA_Settings_fnc_init;



// Supply
[
    "cScripts_Settings_useCustomSupplyInventory",
    "CHECKBOX",
    ["Custom supplies Crates","Allow mission to adjust crate content.\n"],
    [_cScriptSettings, "3; Custom Initzialisation"],
    false,
    true,
    {}
] call CBA_Settings_fnc_init;

// Aries Achilles Zeus Moduels
if (isClass (configFile >> "CfgPatches" >> "achilles_data_f_ares")) then {
    [
        "cScripts_Settings_enable7cavZeusModules",
        "CHECKBOX",
        ["Use 7Cav Zeus Moduels","Allow mission to add 7Cav moduels using the Achilles framework.\n"],
        [_cScriptSettings, "4; Zeus"],
        true,
        true,
        {}
    ] call CBA_Settings_fnc_init;
};

#ifdef DEBUG_MODE
    ["CBA Settings initialization from preInit completed"] call FUNC(logInfo);
#endif

// Load preInit mission settings
if (is3DEN) exitWith {};

#ifdef DEBUG_MODE
    ["postInit Initializing."] call FUNC(logInfo);
#endif

switch (cScripts_Settings_setMissionType) do {
    case (0): {
    };
    case (1): {
    };
    case (2): {
    };
};

if (cScripts_Settings_allowCustomInit) then {

};

if (cScripts_Settings_enable7cavZeusModules) then {
    call cScripts_fnc_initModules;
};

#ifdef DEBUG_MODE
    ["postInit initialization completed."] call FUNC(logInfo);
#endif
