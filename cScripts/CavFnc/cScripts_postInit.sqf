#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This is the rules set for the mission using the cba XEH. Each setting here is alterd via cbaSettings
 */
if (is3DEN) exitWith {};

#ifdef DEBUG_MODE
    ["Initializing...", "postInit"] call FUNC(logInfo);
#endif

// Change inventory content of supply crates on mission start.
if (EGVAR(Settings,useCustomVehicleSystem)) then {
    call FUNC(initVehicle);

    // Make sure curator object gets its functions reapplied.
    call  FUNC(initCuratorObjectPlaced);
};

// item replacement
if (EGVAR(Settings,allowReplaceItem)) then {
    call FUNC(initItemReplace);
};

call FUNC(initStaging);

// Add diary records on mission start
if (EGVAR(Settings,showDiaryRecords)) then {
    call FUNC(initDocuments);
};

#ifdef DEBUG_MODE
    ["Initialization completed", "postInit"] call FUNC(logInfo);
#endif
