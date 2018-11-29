#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A, with help from Commy2
 * This function make a given gate the ability to open and close automaticly whitout much fiddeling with triggers. 
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Side <STRING> (Optional) (Default; WEST)
 * 2: Distance <STRING> (Optional) (Default; 30)
 *
 * Return Value:
 * None
 *
 * Example:
 * ["gate"] call cScripts_fnc_gate
 * ["gate","WEST"] call cScripts_fnc_gate
 * ["gate","WEST", 30] call cScripts_fnc_gate
 *
 * Public: Yes
 */

params[
    ["_object", objNull, [objNull]],
    ["_triggerSide", "WEST", [""]],
    ["_distance", 30]
];

private _pos = _object getPos [0, getdir _object];
private _dir = getDir _object;
[
    _pos,
    "AREA:", [3, _distance, _dir, true],
    "ACT:", [_triggerSide, "PRESENT", true],
    "STATE:", [
        "this",
        format["('%1' call BIS_fnc_objectFromNetId) animateSource ['Door_1_sound_source', 1]", _object call BIS_fnc_netId],
        format["('%1' call BIS_fnc_objectFromNetId) animateSource ['Door_1_sound_source', 0]", _object call BIS_fnc_netId]
    ]
] call CBA_fnc_createTrigger;
