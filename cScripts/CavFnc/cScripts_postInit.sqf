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
if (EGVAR(Settings,useCustomVehicleSettings)) then {
    call FUNC(initVehicle);

    // Make sure curator object gets its functions reapplied.
    call  FUNC(initCuratorObjectPlaced);
};

switch (EGVAR(Settings,setMissionType)) do {
    case (0): { // Custom
    };
    case (1): { // Operation
        if !(EGVAR(patches,usesCavPack)) then {
            systemChat 'WARNING: You do not have CavPack activated, please enable it and reconnect.';
        };
    };
    case (2): { // Training
        if !(EGVAR(patches,usesCavPack)) then {
            systemChat 'WARNING: You do not have CavPack activated, please enable it and reconnect.';
        };
    };
    case (3): { // Public
        if (EGVAR(patches,usesAlive)) then {
            systemChat 'WARNING: You have ALiVE mod activated, please disable it and reconnect.';
        };
        if (EGVAR(patches,usesCavPack)) then {
            systemChat 'WARNING: You have CavPack ModPack activated, please disable it and reconnect.';
        };
    };
    case (4): { // Public Alive
        if !(EGVAR(patches,usesAlive)) then {
            systemChat 'WARNING: You do not have ALiVE mod activated, please enable it and reconnect.';
        };
        if (EGVAR(patches,usesCavPack)) then {
            systemChat 'WARNING: You have CavPack activated, please disable it and reconnect.';
        };
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

// Add diary records on mission start
if (EGVAR(Settings,showDiaryRecords)) then {
    call FUNC(initDocuments);
};

// Handle hint
if (EGVAR(Settings,enableStartHint)) then {
    { [EGVAR(Settings,setStartupDelay), EGVAR(Settings,setMissionType), EGVAR(Settings,setCustomHintTopic), EGVAR(Settings,setCustomHintText)] spawn FUNC(initStartupHint) } call CBA_fnc_directCall;
};

#ifdef DEBUG_MODE
    ["Initialization completed", "postInit"] call FUNC(logInfo);
#endif
