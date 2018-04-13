/*
 * Author: CPL.Brostrom.A
 * This is the rule set for the mission using the cba XEH. Each setting here is turned on and off
 * in the cfgSettings in the root folder.
 */
if (is3DEN) exitWith {};
#include "..\script_component.hpp";
FORCEINFO("Loading postInit");

// Add diary records on mission start
if (cScripts_Settings_showDiaryRecords) then {
    call cScripts_fnc_initDocuments;
};

if (cScripts_Settings_allowCustomInit) then {
    // Add a Get Out Right and Left on all helicopters on Mission Start and on zeus spawned items.
    if (getNumber (missionConfigFile >> "CfgSettings" >> "useHeloGetOutRL") == 1) then {
        call cScripts_fnc_initHelo;
        call cScripts_fnc_initCuratorHeloGetOutRL;
    };
    // Change inventory content of supply crates on mission start.
    if (cScripts_Settings_useCustomVehicleInventory) then {
        call cScripts_fnc_initVehicle;
    };
    // Change inventory content of vehicle on mission start.
    if (cScripts_Settings_useCustomSupplyInventory) then {
        call cScripts_fnc_initSupply;
    };
    // Add a Get Out Right and Left on all helicopters on Mission Start and on zeus spawned items.
    if (cScripts_Settings_useHeloGetOutRL) then {
        call cScripts_fnc_initHelo;
        call cScripts_fnc_initCuratorHeloGetOutRL;
    };
};

switch (cScripts_Settings_setMissionType) do {
    case (0): {
        if (cScripts_Settings_enableStartHint) then {
            [cScripts_Settings_setCustomHintTopic, cScripts_Settings_setCustomHintText, 15] call cScripts_fnc_initCustomStartHint;
        };
    };
    case (1): {
        if (cScripts_Settings_enableStartHint) then {
            [cScripts_Settings_setRedLightTime] call cScripts_fnc_initMissionStartHint;
        };
    };
    case (2): {
        if (cScripts_Settings_enableStartHint) then {
            [cScripts_Settings_setTrainingHintTime] call cScripts_fnc_initTrainingStartHint;
        };
    };
};

FORCEINFO("postInit loaded");
