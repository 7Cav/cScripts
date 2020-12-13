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

if !(hasInterface) exitWith {};
if !(isServer) exitWith {};

_getType = toUpper(_getType);

if (!isMultiplayer) then {
    [formatText["Singelplayer missions can't obtain clan tags name for %1 is %2", _player, profileName], "getPlayerName"] call FUNC(logWarning);
};

// Profile name
if (_getType == 'PROFILE') exitWith {
    private _profileName = profileName;
    if ([_player, MAINCLANTAG] call FUNC(isPlayerClan)) then {_profileName = [_profileName, 4] call BIS_fnc_trimString;};
    _profileName;
};

if (_getType == 'STEAM') exitWith {
    private _profileNameSteam = profileNameSteam; 
    if ([_player, MAINCLANTAG] call FUNC(isPlayerClan)) then {_profileNameSteam = [_profileNameSteam, 10] call BIS_fnc_trimString;};
    _profileNameSteam;
};

profileName