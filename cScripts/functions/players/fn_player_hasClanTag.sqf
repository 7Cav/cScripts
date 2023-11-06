#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function checks if you have the defined clan tag.
 *
 * Arguments:
 * 0: player <STRING>
 *
 * Return Value:
 * True or False <BOOL>
 *
 * Example:
 * [player] call cScripts_fnc_player_hasClanTag
 *
 */

if (!GVAR(isPlayer)) exitWith {false};
if (!isMultiplayer) exitWith {false};

private _playerTag = call EFUNC(player,getClanTag);
private _settingsTag = toUpper EGVAR(Settings,primaryClanTag);
if (_playerTag == _settingsTag) exitWith {true};

false