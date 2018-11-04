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

private _profileName = profileName; 

// featch clan tag
private _player_clan = squadParams player;
_player_clan = _player_clan select 0 select 0;

// Profile name
if (_getType == 'PROFILE') then {
    if (_player_clan == "7CAV") then {_profileName = [_profileName, 4] call BIS_fnc_trimString;};
    _return = _profileName;
};

if (_getType == 'STEAM') then {
    private _profileNameSteam = profileNameSteam; 
    if (_player_clan == "7CAV") then {_profileNameSteam = [_profileNameSteam, 10] call BIS_fnc_trimString;};
    _return = _profileNameSteam;
};

_return;
