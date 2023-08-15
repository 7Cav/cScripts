#include "..\script_component.hpp"
/*
 * Author: CPL.Brostrom.A
 * This function return your current loadout.
 *
 * Arguments:
 * 0: Unit <Object>
 *
 * Return Value:
 * Loadout name <STRING>
 *
 * Example:
 * [player] call cScripts_fnc_gear_getCurrentLoadoutName;
 * [cursorObject] call cScripts_fnc_gear_getCurrentLoadoutName;
 *
 */

params [["_unit", objNull, [objNull]]];

private _return = _unit getVariable [QEGVAR(Gear,loadoutClass), typeOf player];

_return