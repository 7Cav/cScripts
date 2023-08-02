#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function is used to apply a rank to a player.
 *
 * Arguments:
 * 0: Player <STRING>
 *
 * Return Value:
 * BIS Rank
 *
 * Example:
 * ["bob"] call cScripts_fnc_player_setRank;
 *
 */

params [["_player", objNull, [objNull]]];

if (!GVAR(isPlayer)) exitWith {};
waitUntil {!isNull player && player == player};

private _rank = 'PRIVATE';
if ([_player, EGVAR(Settings,primaryClanTag)] call FUNC(isPlayerClan)) then {
    _rank = [_player, 'BIS'] call EFUNC(player,getRank);
};

if (_rank in ['PRIVATE','CORPORAL','SERGEANT','LIEUTENANT','CAPTAIN','MAJOR','COLONEL']) then {
    _player setRank _rank;
};

_player setVariable [QEGVAR(Cav,Rank), _rank];

_rank