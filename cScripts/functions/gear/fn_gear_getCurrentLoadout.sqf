#include "..\script_component.hpp"
/*
 * Author: CPL.Brostrom.A
 * This function return your current loadout.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Loadout name <STRING>
 *
 * Example:
 * call cScripts_fnc_gear_getCurrentLoadout
 *
 */

private _return = player getVariable [QEGVAR(Gear,loadoutClass), typeOf player];

_return