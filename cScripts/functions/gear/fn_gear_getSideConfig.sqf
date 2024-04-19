#include "..\script_component.hpp"
/*
 * Author: BaerMitUmlaut
 * This function return a side string based on side object provided.
 *
 * Arguments:
 * 0: Side <OBJECT>
 *
 * Return Value:
 * Loadout side config name <STRING>
 *
 * Example:
 * [west] call cScripts_fnc_gear_getSideConfig
 * [independent] call cScripts_fnc_gear_getSideConfig
 *
 */

params ["_side"];

switch (_side) do {
    case west:        { "CommonBlufor" };
    case east:        { "CommonOpfor" };
    case independent: { "CommonIndependant" };
    case civilian:    { "CommonCivilian" };
    default           { "CommonDefault" };
};
