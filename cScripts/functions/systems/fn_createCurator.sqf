#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function creates a zeus and attaches it for the for a defined player
 *
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Example:
 * [player] call cScripts_fnc_createCurator
 *
 * Public: No
 */

params [
    ["_player", player, [objNull]]
];

if (!isServer) exitWith {};
if (!isNull (getAssignedCuratorLogic _player)) exitWith { SHOW_WARNING_2("Zeus", "Player %1 [%2] already assigned as curator", _player, typeOf _player); };

private _unit = _player getVariable [QEGVAR(Player,Unit), ""];
_unit = toLower _unit;
if (!(_unit in ["s3", "zeus", "curator", "debug"])) exitWith {
    SHOW_WARNING_2("Zeus", "Player %1 [%2] can not be assigned as curator", _player, typeOf _player);
};

private _group = createGroup sideLogic;
private _curator = _group createUnit ["ModuleCurator_F", [0,0,0], [], 0, "NONE"];
_curator setVariable ["owner", _owner, true];
_curator setVariable ["Addons", 3, true];
_curator setVariable ["BIS_fnc_initModules_disableAutoActivation", false];
_curator setCuratorCoef ["Place", 0];
_curator setCuratorCoef ["Delete", 0];

_group deleteGroupWhenEmpty true;

_curator addCuratorAddons activatedAddons;
_player assignCurator _curator;

SHOW_CHAT_INFO_2("Zeus", "Curator created for %1 [%2]", _player, typeOf _player);
