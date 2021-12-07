#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function add eventhandlers.
 *
 * Example:
 * call cScripts_fnc_init_eventHandlers
 *
 * Public: No
 */

#ifdef DEBUG_MODE
    ["Setting Up Event Handlers", "EH"] call FUNC(log);
#endif

if (hasInterface) then {
    ["acre_remoteStartedSpeaking", {
        _this params ["_unit"];
        private _netId = objectFromNetId _unit; // will be objNull if not found.
        if (isNull _netId) exitWith {
            [format ["Player %1 have issues recing remote message.", name player], "ACRE", true, true] call FUNC(error);
        };
        #ifdef DEBUG_MODE
            [format ["Player %1 [%2] is talking remote", name _unit, _netId], "ACRE"] call FUNC(log);
        #endif
    }] call CBA_fnc_addEventHandler;
};

// Server Events
if !(isServer) exitWith {};

#ifdef DEBUG_MODE
    ["Setting Up Server Event Handlers", "EH"] call FUNC(log);
#endif

[QEGVAR(log,text), {
    diag_log text _this;
}] call CBA_fnc_addEventHandler;

[QEGVAR(log,player), {
    _this params ["_playerName"];
    private _playerLog = missionNamespace getVariable [QEGVAR(log,players), []];
    _playerLog pushBack _playerName;
    missionNamespace setVariable [QEGVAR(log,players), _playerLog];
}] call CBA_fnc_addEventHandler;
