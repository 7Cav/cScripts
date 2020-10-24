#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function tells you if your inside of a staging zone
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Distance <NUMBER> (Optional) [Default; 12]
 *
 * Return:
 * <BOOL>
 *
 * Example:
 * [this] call cScripts_fnc_inStageingZone
 * [this, 12] call cScripts_fnc_inStageingZone
 */
#include "..\script_component.hpp";

params [
    ["_object", objNull, [objNull]],
    ["_maxDistance", 12]
];

private _objectPos = getPos _object;
private _distance = player distance _objectPos;
if (_distance <= _maxDistance) exitWith {true};
false;