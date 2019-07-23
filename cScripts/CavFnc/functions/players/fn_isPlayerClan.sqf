#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * Compare given clan tag to compare clan tag and return true or false.
 *
 * Arguments:
 * 0: player <STRING>
 * 1: Compare clan tag <STRING>
 *
 * Return Value:
 * True or False <BOOL>
 *
 * Example:
 * [player,"7CAV"] call cScripts_fnc_isPlayerClan
 *
 */

params [
    ["_player", objNull, [objNull]],
    ["_clanTag", "", [""]]
];

private _playerClan = [_player] call FUNC(getPlayerClan);
_clanTag = toUpper(_clanTag);

_return = if (_playerClan == _clanTag) then {true} else {false};
_return;
