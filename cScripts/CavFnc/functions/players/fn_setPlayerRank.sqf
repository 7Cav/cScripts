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
    ["_player",""]
];

// featch clan tag if in multiplayer
private _playerClan = "";
if !(isNil {squadParams _player select 0 select 0}) then {
    _playerClan = squadParams _player select 0 select 0;
};

if !(isNil {_player getVariable QEGVAR(Cav,Rank)}) exitWith {
    #ifdef DEBUG_MODE
        [formatText["Rank %1 is already set for player %2, no need to change it.", _player getVariable QEGVAR(Cav,Rank), _player]] call FUNC(logInfo);
    #endif
};

#ifdef DEBUG_MODE
    formatText["Applying rank to %1.", _player] call FUNC(logInfo);
#endif

private _getRank = 'PRIVATE';
if (_playerClan == "7CAV") then {
    _getRank = [_player,'bis'] call FUNC(getPlayerRank);
};

if (_getRank in ['PRIVATE','CORPORAL','SERGEANT','LIEUTENANT','CAPTAIN','MAJOR','COLONEL']) then {
    _player setRank _getRank;
};

(_player) setVariable [QEGVAR(Cav,Rank), _getRank];


#ifdef DEBUG_MODE
    [formatText["Rank %1 is applied to %2", _getRank, _player]] call FUNC(logInfo);
#endif
