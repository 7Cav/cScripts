#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * Retun the player clan tag
 *
 * Arguments:
 * 0: player <STRING>
 *
 * Return Value:
 * Clan Tag <STRING>
 *
 * Example:
 * [player] call cScripts_fnc_getPlayerClan
 *
 */

params [
    ["_player", objNull, [objNull]]
];

private _playerClan = "";
if !(isNil {squadParams _player select 0 select 0}) then {
    _playerClan = squadParams _player select 0 select 0;
    _playerClan = toUpper(_playerClan);
};

_playerClan;
