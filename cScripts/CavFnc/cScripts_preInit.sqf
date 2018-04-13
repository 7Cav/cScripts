
#include "..\script_component.hpp";
diag_log formatText ["[cScripts] INFO: Loading CBA Settings"];

private _cScriptSettings = "cScripts Mission Settings";

// Debug Mode
[
    "cScripts_Settings_setDebugMode",
    "CHECKBOX",
    "Debug Mode",
    _cScriptSettings,
    false,
    true,
    {}
] call CBA_Settings_fnc_init;

// Mission type
[
    "cScripts_Settings_setMissionType",
    "LIST",
    "Mission Type",
    _cScriptSettings,
    [[0,1,2], ["Custom", "Operation", "Training"], 1],
    true,
    {}
] call CBA_Settings_fnc_init;

// Ai setting
[
    "cScripts_Settings_setAiSystemDifficulty",
    "LIST",
    "AI Setting",
    _cScriptSettings,
    [[0,1], ["Day", "Night / Forset"], 0],
    true,
    {}
] call CBA_Settings_fnc_init;

// Mission startup hint settings
[
    "cScripts_Settings_enableStartHint",
    "CHECKBOX",
    "Startup Hint",
    _cScriptSettings,
    true,
    true,
    {}
] call CBA_Settings_fnc_init;
[
    "cScripts_Settings_setRedLightTime",
    "SLIDER",
    "Red light delay",
    _cScriptSettings,
    [5, 180, 15, 0],
    true,
    {}
] call CBA_Settings_fnc_init;
[
    "cScripts_Settings_setTrainingHintTime",
    "SLIDER",
    "Training hint delay",
    _cScriptSettings,
    [5, 180, 15, 0],
    true,
    {}
] call CBA_Settings_fnc_init;
[
    "cScripts_Settings_setCustomHintTopic",
    "EDITBOX",
    "Custom hint topic",
    _cScriptSettings,
    "My custom Mission!",
    true,
    {}
] call CBA_Settings_fnc_init;
[
    "cScripts_Settings_setCustomHintText",
    "EDITBOX",
    "Custom hint text",
    _cScriptSettings,
    "I have design this mission! Yey for me!",
    true,
    {}
] call CBA_Settings_fnc_init;

// Diary Records
[
    "cScripts_Settings_showDiaryRecords",
    "CHECKBOX",
    "Show checklists and radio reports",
    _cScriptSettings,
    true,
    true,
    {}
] call CBA_Settings_fnc_init;

// Custom init
[
    "cScripts_Settings_allowCustomInit",
    "CHECKBOX",
    "Allow mission to automaticly applying init",
    _cScriptSettings,
    true,
    true,
    {}
] call CBA_Settings_fnc_init;

// Vehicle
[
    "cScripts_Settings_useCustomVehicleInventory",
    "CHECKBOX",
    "Add vehicle inventory and settings",
    _cScriptSettings,
    true,
    true,
    {}
] call CBA_Settings_fnc_init;

// Supply
[
    "cScripts_Settings_useCustomSupplyInventory",
    "CHECKBOX",
    "Add NATO crate inventory",
    _cScriptSettings,
    false,
    true,
    {}
] call CBA_Settings_fnc_init;

// Get out right left
[
    "cScripts_Settings_useHeloGetOutRL",
    "CHECKBOX",
    "Add Get out right and left on helicopters",
    _cScriptSettings,
    true,
    true,
    {}
] call CBA_Settings_fnc_init;

// Aries Achilles Zeus Moduels
if (isClass (configFile >> "CfgPatches" >> "achilles_data_f_ares")) then {
    [
        "cScripts_Settings_enable7cavZeusModules",
        "CHECKBOX",
        "Use 7Cav Zeus Moduels",
        _cScriptSettings,
        true,
        true,
        {}
    ] call CBA_Settings_fnc_init;
};

if (is3DEN) exitWith {};
FORCEINFO("Loading preInit");

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

FORCEINFO("preInit loaded");
