#include "..\script_component.hpp"
/*
 * Author: CPL.Brostrom.A
 * This function return a units current loadout.
 *
 * Arguments:
 * 0: Unit <Object>
 *
 * Return Value:
 * Loadout name <STRING>
 *
 * Example:
 * [player] call cScripts_fnc_gear_getLoadoutName;
 * [cursorObject] call cScripts_fnc_gear_getLoadoutName;
 *
 */

params [["_unit", objNull, [objNull]]];

private _return = GETVAR(_unit,EGVAR(Gear,loadoutClass), typeOf _unit);

_return