#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function fetches your name based on your name BIS profile or Steam Profile name.
 *
 * Arguments:
 * 0: player <STRING>
 * 1: type <STRING>     ['PROFILE', 'STEAM']
 *
 * Return Value:
 * Player name <STRING>
 *
 * Example:
 * [player,'PROFILE'] call cScripts_fnc_getPlayerName
 *
 */

params [
    ["_player", objNull, [objNull]],
    ["_getType", 'PROFILE', ['']]
];

private _return = "";

_getType = toUpper(_getType);

private _playerClan = "";

// featch clan tag if in multiplayer
if ((isMultiplayer) && !(isnil QUOTE(squadParams _player))) then {
    _playerClan = squadParams _player select 0 select 0;
};

// Profile name
if (_getType == 'PROFILE') then {
    private _profileName = profileName;
    if (_playerClan == "7CAV") then {_profileName = [_profileName, 4] call BIS_fnc_trimString;};
    _return = _profileName;
};

if (_getType == 'STEAM') then {
    private _profileNameSteam = profileNameSteam; 
    if (_playerClan == "7CAV") then {_profileNameSteam = [_profileNameSteam, 10] call BIS_fnc_trimString;};
    _return = _profileNameSteam;
};

_return;
