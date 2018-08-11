/*
 * Author: CPL.Brostrom.A
 * This is the rules set for the mission using the cba XEH. Each setting here is alterd via cbaSettings
 */
if (is3DEN) exitWith {};

#include "..\script_component.hpp";

#ifdef DEBUG_MODE
    ["postInit Initializing."] call FUNC(logInfo);
#endif

// Add diary records on mission start
if (EGVAR(Settings,showDiaryRecords)) then {
    call FUNC(initDocuments);
};

if (EGVAR(Settings,allowCustomInit)) then {
    // Change inventory content of supply crates on mission start.
    if (EGVAR(Settings,useCustomVehicleSettings) then {
        call FUNC(initVehicle);

        // Make sure curator object gets its functions reapplied.
        call FUNC(initCuratorC130);
        call FUNC(initCuratorHeloGetOutRL);
    };

    // Change inventory content of nato supply crates on mission start.
    if (EGVAR(Settings,useCustomSupplyInventory)) then {
        call FUNC(initSupply);
    };
};

switch (EGVAR(Settings,setMissionType) do {
    case (0): {
        if (EGVAR(Settings,enableStartHint)) then {
            [EGVAR(Settings,setCustomHintTopic), EGVAR(Settings,setCustomHintText), 15] call FUNC(initCustomStartHint);
        };
    };
    case (1): {
        if (EGVAR(Settings,enableStartHint)) then {
            [EGVAR(Settings,setRedLightTime)] call FUNC(initMissionStartHint);
        };
    };
    case (2): {
        if (EGVAR(Settings,enableStartHint)) then {
            [EGVAR(Settings,setTrainingHintTime)] call FUNC(initTrainingStartHint);
        };
    };
};

#ifdef DEBUG_MODE
    ["postInit initialization completed."] call FUNC(logInfo);
#endif
