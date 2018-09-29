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
 * [this] call cScripts_fnc_setPlayerRank;
 *
 */
#define DEBUG_MODE
params [
    ["_player",""]
];

if !(isNil {_player getVariable QEGVAR(Cav,Rank)}) exitWith {
    #ifdef DEBUG_MODE
        [formatText["Rank already set for %1 no need to change it.", _player]] call FUNC(logInfo);
    #endif
};

#ifdef DEBUG_MODE
    formatText["Applying rank to %1.", _player] call FUNC(logInfo);
#endif

private _getRank = [_player,'bis'] call FUNC(getPlayerRank);

if (_getRank in ['PRIVATE','CORPORAL','SERGEANT','LIEUTENANT','CAPTAIN','MAJOR','COLONEL']) then {
    _player setRank _getRank;
};

(_player) setVariable [QEGVAR(Cav,Rank), true];


#ifdef DEBUG_MODE
    [formatText["Rank %1 is applied to %2", _player, _getRank]] call FUNC(logInfo);
#endif
