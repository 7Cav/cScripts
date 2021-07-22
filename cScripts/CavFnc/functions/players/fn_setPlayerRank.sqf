#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function is used to apply a player rank to a player.
 *
 * Arguments:
 * 0: Player <STRING>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * ["bob"] call cScripts_fnc_setPlayerRank;
 *
 */

params [
    ["_player", objNull, [objNull]]
];

if (!GVAR(isPlayer)) exitWith {};
waitUntil {!isNull player && player == player};

private _getRank = 'PRIVATE';
if ([_player, EGVAR(Settings,primaryClanTag)] call FUNC(isPlayerClan)) then {
    _getRank = [_player, 'bis'] call FUNC(getPlayerRank);
};

if (_getRank in ['PRIVATE','CORPORAL','SERGEANT','LIEUTENANT','CAPTAIN','MAJOR','COLONEL']) then {
    _player setRank _getRank;
};

_player setVariable [QEGVAR(Cav,Rank), _getRank];

true
