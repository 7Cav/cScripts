#include "..\script_component.hpp"
/*
 * Author: CPL.Brostrom.A
 * This function return your role
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Role <STRING>
 *
 * Example:
 * call cScripts_fnc_gear_getLoadoutRole
 *
 */

private _return = "trooper";

private _loadout = GETVAR(player,EGVAR(Gear,loadoutClass),typeOf player);

private _config = missionConfigFile >> "CfgLoadouts" >> _loadout;
private _role = getText (_config >> "role");
if (_role != "") then {_return = _role};

_return