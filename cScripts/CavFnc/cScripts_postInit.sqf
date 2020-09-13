#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This is the rules set for the mission using the cba XEH. Each setting here is alterd via cbaSettings
 */
if (is3DEN) exitWith {};

#ifdef DEBUG_MODE
    ["Initializing...", "postInit"] call FUNC(logInfo);
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
    case (4): { // Public Alive
    };
};

// item replacement
if (EGVAR(Settings,allowReplaceItem)) then {
    call FUNC(initItemReplace);
};

call FUNC(initStaging);

// Handle player announcement
if !(EGVAR(Settings,setMissionType) >= 3) then {
    [player] call FUNC(doPlayerAnnouncement);
};


// Handle hint
if (EGVAR(Settings,enableStartHint)) then {
    { [EGVAR(Settings,setStartupDelay), EGVAR(Settings,setMissionType), EGVAR(Settings,setCustomHintTopic), EGVAR(Settings,setCustomHintText)] spawn FUNC(initStartupHint) } call CBA_fnc_directCall;
};

#ifdef DEBUG_MODE
    ["Initialization completed", "postInit"] call FUNC(logInfo);
#endif
