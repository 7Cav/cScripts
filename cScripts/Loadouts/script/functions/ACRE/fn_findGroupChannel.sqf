#include "..\script_component.hpp"
params ["_unit"];
private ["_missionSQM", "_sideGroups", "_groupOffsets", "_channel"];

_missionSQM = loadFile "mission.sqm";
if (count _missionSQM >= 9999999) exitWith {
    ["Poppy could not reliably detect the group channel due to an unusually large mission.sqm file."] call FUNC(logWarning);
    1
};

_sideGroups = allGroups select {side _x == side group _unit};
_groupOffsets = _sideGroups apply {[_missionSQM find groupID _x, _x]};
_groupOffsets sort true;
_channel = {
    _x params ["_index", "_group"];
    if ((_group == group _unit) && {_index != -1}) exitWith {
        _forEachIndex + 1
    };
    1
} forEach _groupOffsets;

_channel
