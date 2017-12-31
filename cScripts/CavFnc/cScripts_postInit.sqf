if (is3DEN) exitWith {};
#include "..\script_component.hpp";
FORCEINFO("Loading postInit");

// Add diary records on mission start
if (cScripts_Settings_showDiaryRecords) then {
    call cScripts_fnc_initDocuments;
};

if (cScripts_Settings_allowCustomInit) then {
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

if (cScripts_Settings_setMissionType == 0) then {
    if (cScripts_Settings_enableStartHint) then {
        [cScripts_Settings_setCustomHintTopic, cScripts_Settings_setCustomHintText, 15] call cScripts_fnc_initCustomStartHint;
    };
};

if (cScripts_Settings_setMissionType == 1) then {
// Set time and run the "Red Light" start script.
    if (cScripts_Settings_enableStartHint) then {
        [cScripts_Settings_setRedLightTime] call cScripts_fnc_initMissionStartHint;
    };
};

if (cScripts_Settings_setMissionType == 2) then {
// Set time and run Training Mission start script.
    if (cScripts_Settings_enableStartHint) then {
        [cScripts_Settings_setTrainingHintTime] call cScripts_fnc_initTrainingStartHint;
    };
};
FORCEINFO("postInit loaded");
