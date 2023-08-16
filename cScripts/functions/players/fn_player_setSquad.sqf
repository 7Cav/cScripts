#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function sets your squad name.
 *
 * Arguments:
 * 0: player <STRING>
 * 1: squadLeader <BOOLEAN>
 *
 * Return Value:
 * Squad Name <STRING>
 *
 * Example:
 * [this, "Bandit-1"] call cScripts_fnc_player_setSquad
 * [this, "Bandit-1", true] call cScripts_fnc_player_setSquad
 *
 */

params [
    ["_player", objNull, [objNull]],
    ["_squadName", "", [""]],
    ["_squadLeader", false, [false]]
];

if (!GVAR(isPlayer)) exitWith {};
if (_squadName == "") exitWith {};

private _group = group _player;
_group setGroupId [_squadName];

if (_squadLeader) then {
    _group setGroupIdGlobal ["_squadName"];
};

SETVAR(player,EGVAR(Player,Squad),_rank);
_rank