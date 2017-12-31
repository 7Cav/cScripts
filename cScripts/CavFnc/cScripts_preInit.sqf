
#include "..\script_component.hpp";
FORCEINFO("Loading CBA Settings");

private _cScriptSettings = "cScripts Mission Settings";

// Debug Mode
[
    "cScripts_Settings_setDebugMode",
    "CHECKBOX",
    "Debug Mode",
    _cScriptSettings,
    false,
    2,
    {}
] call CBA_Settings_fnc_init;

// Mission type
[
    "cScripts_Settings_setMissionType",
    "LIST",
    "Mission Type",
    _cScriptSettings,
    [[0,1,2], ["Custom", "Operation", "Training"], 1],
    2,
    {}
] call CBA_Settings_fnc_init;

// Mission startup hint settings
[
    "cScripts_Settings_enableStartHint",
    "CHECKBOX",
    "Startup Hint",
    _cScriptSettings,
    true,
    2,
    {}
] call CBA_Settings_fnc_init;
[
    "cScripts_Settings_setRedLightTime",
    "SLIDER",
    "Red light delay",
    _cScriptSettings,
    [5, 180, 30, 0],
    2,
    {}
] call CBA_Settings_fnc_init;
[
    "cScripts_Settings_setTrainingHintTime",
    "SLIDER",
    "Training hint delay",
    _cScriptSettings,
    [5, 180, 15, 0],
    2,
    {}
] call CBA_Settings_fnc_init;
[
    "cScripts_Settings_setCustomHintTopic",
    "EDITBOX",
    "Custom hint topic",
    _cScriptSettings,
    "My custom Mission!",
    2,
    {}
] call CBA_Settings_fnc_init;
[
    "cScripts_Settings_setCustomHintText",
    "EDITBOX",
    "Custom hint text",
    _cScriptSettings,
    "I have design this mission! Yey for me!",
    2,
    {}
] call CBA_Settings_fnc_init;

// Diary Records
[
    "cScripts_Settings_showDiaryRecords",
    "CHECKBOX",
    "Show checklists and radio reports",
    _cScriptSettings,
    true,
    2,
    {}
] call CBA_Settings_fnc_init;

// Custom init
[
    "cScripts_Settings_allowCustomInit",
    "CHECKBOX",
    "Allow custom init",
    _cScriptSettings,
    true,
    2,
    {}
] call CBA_Settings_fnc_init;
// Vehicle
[
    "cScripts_Settings_useCustomVehicleInventory",
    "CHECKBOX",
    "Allow mission to set vehicle inits",
    _cScriptSettings,
    true,
    2,
    {}
] call CBA_Settings_fnc_init;
// Supply
[
    "cScripts_Settings_useCustomSupplyInventory",
    "CHECKBOX",
    "Allow mission to set supplycrate inits",
    _cScriptSettings,
    false,
    2,
    {}
] call CBA_Settings_fnc_init;
// Get out right left
[
    "cScripts_Settings_useHeloGetOutRL",
    "CHECKBOX",
    "Allow mission to add get out right and left on helicopters",
    _cScriptSettings,
    true,
    2,
    {}
] call CBA_Settings_fnc_init;

// Aries Achilles Zeus Moduels
[
    "cScripts_Settings_enable7cavZeusModules",
    "CHECKBOX",
    "7Cav Zeus Moduels",
    _cScriptSettings,
    true,
    2,
    {}
] call CBA_Settings_fnc_init;

if (is3DEN) exitWith {};
FORCEINFO("Loading preInit");

if (cScripts_Settings_setMissionType == 0) then {

};

if (cScripts_Settings_setMissionType == 1) then {

};

if (cScripts_Settings_setMissionType == 2) then {

};

if (cScripts_Settings_allowCustomInit) then {

};

if (cScripts_Settings_enable7cavZeusModules) then {
    call cScripts_fnc_initModules;
};

FORCEINFO("preInit loaded");
