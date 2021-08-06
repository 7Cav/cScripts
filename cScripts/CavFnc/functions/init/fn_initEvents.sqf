#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function add eventhandelers
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_initEvents
 *
 * Public: No
 */





// Server Events
if !(isServer) exitWith {};

[QEGVAR(event,logServer), {
    diag_log text _this;
}] call CBA_fnc_addEventHandler;

[QEGVAR(log,player), {
    _this params ["_playerName"];
    private _playerLog = missionNamespace getVariable [QEGVAR(log,players), []];
    _playerLog pushBack _playerName;
    missionNamespace setVariable [QEGVAR(log,players), _playerLog];
}] call CBA_fnc_addEventHandler;
