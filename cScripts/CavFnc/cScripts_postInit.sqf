#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This is the rules set for the mission using the cba XEH. Each setting here is alterd via cbaSettings
 */
if (is3DEN) exitWith {};

#ifdef DEBUG_MODE
    ["postInit Initializing."] call FUNC(logInfo);
#endif

// Add diary records on mission start
if (EGVAR(Settings,showDiaryRecords)) then {
    call FUNC(initDocuments);
};

if (EGVAR(Settings,allowCustomInit)) then {
    // Change inventory content of supply crates on mission start.
    if (EGVAR(Settings,useCustomVehicleSettings)) then {
        call FUNC(initVehicle);

        // Make sure curator object gets its functions reapplied.
        call  FUNC(initCuratorObjectPlaced);
    };

    // Change inventory content of nato supply crates on mission start.
    if (EGVAR(Settings,useCustomSupplyInventory)) then {
        call FUNC(initSupply);
    };
};

switch (EGVAR(Settings,setMissionType)) do {
    case (0): { // Custom
    };
    case (1): { // Operation
    };
    case (2): { // Training
    };
    case (3): { // Public
    };
};

if (EGVAR(Settings,enableStartHint)) then {
    [EGVAR(Settings,setStartupDelay), EGVAR(Settings,setMissionType), EGVAR(Settings,setCustomHintTopic), EGVAR(Settings,setCustomHintText)] call FUNC(initStartupHint);
};

#ifdef DEBUG_MODE
    ["postInit initialization completed."] call FUNC(logInfo);
#endif
