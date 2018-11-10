#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A, with from Commy2
 * This function make a given gate the ability to open and close automaticly whitout much fiddeling with triggers. 
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Side <STRING> (Optional) (Default; WEST)
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

if (isNil "mission_gates") then {
	mission_gates = [];
};

private _gate = _object;
private _index = mission_gates pushBack _gate;

private _pos = _object getPos [0, getdir _object];
private _dir = getDir _object;
[
	_pos,
	"AREA:", [3, _distance, _dir, true],
	"ACT:", [_triggerSide, "PRESENT", true],
	"STATE:", [
		"this",
		format["(mission_gates select %1) animateSource ['Door_1_sound_source', 1]", _index],
		format["(mission_gates select %1) animateSource ['Door_1_sound_source', 0]", _index]
	]
] call CBA_fnc_createTrigger;
