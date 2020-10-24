#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function tells you if your inside of any predefined stageing zones
 *
 * Arguments:
 * 0: Distance <NUMBER> (Optional) [Default; 12]
 *
 * Return:
 * <BOOL>
 *
 * Example:
 * [12] call cScripts_fnc_getStagingZone
 */

params [
    ["_maxDistance", 12]
];

private _markers = [
    "respawn_west",
    "respawn_west_0",
    "respawn_west_1",
    "respawn_west_2",
    "respawn_west_3",
    "respawn_west_4",
    "respawn_west_5",
    "respawn_west_6",
    "respawn_west_7",
    "respawn_west_8",
    "respawn_west_9",
    "respawn_west_10"
];

{
    private _markerPos = getMarkerPos [_x, false];
    private _distance = player distance _markerPos;
    if (_distance <= _maxDistance) exitWith {true};
    false;
} forEach _markers;