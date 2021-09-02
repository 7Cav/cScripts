#include "..\script_component.hpp"
/*
 * Author: CPL.Brostrom.A
 * This function return your role
 *
 * Arguments:
 * 0: Loadout <STRING>
 *
 * Return Value:
 * Role <STRING>
 *
 * Example:
 * [player] call cScripts_fnc_gear_getLoadoutRole
 *
 */
params ["_player"];

private _return = "trooper";

private _loadout = if (!isNil {player getVariable "cScripts_gear_loadoutClass"}) then {
    player getVariable "cScripts_gear_loadoutClass";
} else {
    typeOf player;
};

_config = missionConfigFile >> "CfgLoadouts" >> _loadout;
_role = getText (_config >> "role");
if (_role != "") then {_return = _role};

_return