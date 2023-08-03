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
    ["Creating Global EventHandlers", "InitEventHandlers"] call FUNC(info);
#endif

[QGVAR(getAttendance), {
    call FUNC(getAttendance);
}] call CBA_fnc_addEventHandler;

["ace_zeusCreated", {
    _this params ["_player"];
    _player addEventHandler ["CuratorObjectPlaced", {
        params ["", "_vehicle"];
        if (_vehicle iskindOf "man") exitWith {};
        waitUntil {!isNull _vehicle && _vehicle == _vehicle;};
        _vehicle remoteExec [QEFUNC(vehicle,reset), 0, true]; 
        _vehicle remoteExec [QEFUNC(vehicle,addFunctions), -2, true];
        _vehicle remoteExec [QEFUNC(vehicle,addInventory), 2];
        _vehicle remoteExec [QEFUNC(vehicle,addDefaultLoadout), 2];
        _vehicle remoteExec [QEFUNC(vehicle,addCosmetics), 2];
        _vehicle remoteExec [QEFUNC(vehicle,addStagingActions), 2];
        _vehicle remoteExec [QEFUNC(vehicle,addRadio), 2];
    }];
}] call CBA_fnc_addEventHandler;

// Server Events
if (!isServer) exitWith {};

#ifdef DEBUG_MODE
    ["Creating Server EventHandlers", "InitEventHandlers"] call FUNC(info);
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

// Vehicle
[QEGVAR(vehicle,applyLoadout), {
    _this params ["_vehicle", "_loadoutName", "_pylon"];
    [_vehicle, _loadoutName, _pylon] call EFUNC(vehicle,applyLoadout);
}] call CBA_fnc_addEventHandler;
