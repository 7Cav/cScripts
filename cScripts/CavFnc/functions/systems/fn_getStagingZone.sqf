#include "..\script_component.hpp";

params [
    ["_maxDistance", 12]
];

private _markers = [
    "respawn_west"
];

{
    private _markerPos = getMarkerPos [_x, false];
    private _distance = player distance _markerPos;
    if (_distance <= _maxDistance) exitWith {true};
    false;
} forEach _markers;