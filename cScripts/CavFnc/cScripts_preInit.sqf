#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This is the rules set for the mission using the cba XEH. Each setting here is alterd via cbaSettings
 */

#ifdef DEBUG_MODE
    ["Initializing CBA Settings from preInit."] call FUNC(logInfo);
#endif

// Make settings name
private _cScriptSettings = "cScripts Mission Settings";

// Mission type
[
    QEGVAR(Settings,setMissionType),
    "LIST",
    ["Mission Type", "This will deside on what kind of startup hint you get on mission start.\n"],
    [_cScriptSettings, "1; Mission"],
    [[0,1,2,3], ["Custom", "Operation", "Training", "Public"], 1],
    true,
    {}
] call CBA_Settings_fnc_init;

// Ai setting
[
    QEGVAR(Settings,setAiSystemDifficulty),
    "LIST",
    ["AI Setting", "This adjustes the ai and make them less godlike and more roleplay to play against.\n"],
    [_cScriptSettings, "1; Mission"],
    [[0,1], ["Day", "Night / Jungle"], 0],
    true,
    {}
] call CBA_Settings_fnc_init;

// Mission startup hint settings
[
    QEGVAR(Settings,enableStartHint),
    "CHECKBOX",
    ["Startup Hint", "Enable or disable startup hints on mission start.\n"],
    [_cScriptSettings, "2; Mission Startup"],
    true,
    true,
    {}
] call CBA_Settings_fnc_init;
[
    QEGVAR(Settings,setStartupDelay),
    "SLIDER",
    ["Startup delay time","Define in seconds for how long the startup hint is shown or be enected.\n"],
    [_cScriptSettings, "2; Mission Startup"],
    [5, 180, 30, 0],
    true,
    {}
] call CBA_Settings_fnc_init;
[
    QEGVAR(Settings,setCustomHintTopic),
    "EDITBOX",
    ["Custom hint topic", "When mission is set to Custom this topic will be shown.\nIt will look something like this:\n\n               Welcome!\n      My Custom Topic!\n                 [IMAGE]\n  My custom mission text...\n               Have fun!\n"],
    [_cScriptSettings, "2; Mission Startup"],
    "My custom Mission!",
    true,
    {}
] call CBA_Settings_fnc_init;
[
    QEGVAR(Settings,setCustomHintText),
    "EDITBOX",
    ["Custom hint text", "When mission is set to Custom this text will be shown.\nIt will look something like this:\n\n               Welcome!\n      My Custom Topic!\n                 [IMAGE]\n  My custom mission text...\n               Have fun!\n"],
    [_cScriptSettings, "2; Mission Startup"],
    "I have design this mission! Yey for me!",
    true,
    {}
] call CBA_Settings_fnc_init;

// Diary Records
[
    QEGVAR(Settings,showDiaryRecords),
    "CHECKBOX",
    ["Help documents","Allow the mission to write diary help documents.\n"],
    _cScriptSettings,
    true,
    true,
    {}
] call CBA_Settings_fnc_init;

// Custom init
[
    QEGVAR(Settings,allowCustomInit),
    "CHECKBOX",
    ["Custom object init", "Allow the mission to be able to apply custom init to vehicles and objects pressent on mission start.\n"],
    [_cScriptSettings, "3; Custom Initzialisation"],
    true,
    true,
    {}
] call CBA_Settings_fnc_init;

// Vehicle
[
    QEGVAR(Settings,useCustomVehicleSettings),
    "CHECKBOX",
    ["Vehicle Settings", "Allow mission to apply custom settings, including change inventory, to vehicles.\nC130 jump action and Helicopter Get out right and Left is Included here.\n"],
    [_cScriptSettings, "3; Custom Initzialisation"],
    true,
    true,
    {}
] call CBA_Settings_fnc_init;
[
    QEGVAR(Settings,useCustomVehicleInventory),
    "CHECKBOX",
    ["Vehicle Inventory", "Allow mission to change the vehicles inventory.\n"],
    [_cScriptSettings, "3; Custom Initzialisation"],
    true,
    true,
    {}
] call CBA_Settings_fnc_init;



// Supply
[
    QEGVAR(Settings,useCustomSupplyInventory),
    "CHECKBOX",
    ["Custom supplies Crates","Allow mission to adjust crate content.\n"],
    [_cScriptSettings, "3; Custom Initzialisation"],
    false,
    true,
    {}
] call CBA_Settings_fnc_init;

// Tagging
[
    QEGVAR(Settings,allowCustomTagging),
    "CHECKBOX",
    ["Allow Custom Tagging","Allow players to spray custom taggs.\n"],
    [_cScriptSettings, "4; Player Actions"],
    true,
    true,
    {}
] call CBA_Settings_fnc_init;

// Aries Achilles Zeus Moduels
if (isClass (configFile >> "CfgPatches" >> "achilles_data_f_ares")) then {
    [
        QEGVAR(Settings,enable7cavZeusModules),
        "CHECKBOX",
        ["Use 7Cav Zeus Moduels","Allow mission to add 7Cav moduels using the Achilles framework.\n"],
        [_cScriptSettings, "5; Zeus"],
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

switch (EGVAR(Settings,setMissionType)) do {
    case (0): {
    };
    case (1): {
    };
    case (2): {
    };
    case (3): {
    };
};

if (EGVAR(Settings,allowCustomInit)) then {
};

if (EGVAR(Settings,allowCustomTagging)) then {
    call FUNC(initTagging);
};

if (EGVAR(Settings,enable7cavZeusModules)) then {
    call FUNC(initModules);
};

#ifdef DEBUG_MODE
    ["postInit initialization completed."] call FUNC(logInfo);
#endif
