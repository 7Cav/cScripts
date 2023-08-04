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

INFO("InitEventHandlers","Creating Global EventHandlers");

[QGVAR(getAttendance), {
    call FUNC(getAttendance);
}] call CBA_fnc_addEventHandler;

[QGVAR(setCuratorEventHandlers), {
    _this params ["_player"];
    if (!isNil{_x getVariable QEGVAR(player,zeus)}) exitWith {};
        

    _player addEventHandler ["CuratorObjectPlaced", {
        params ["", "_vehicle"];
        INFO("Curator", "Object (%1) placed by curator, Applying functions", _vehicle);
        [{
            _this params ["_vehicle"];
            if (_vehicle iskindOf "man") exitWith {};
            _vehicle remoteExec [QEFUNC(vehicle,reset), 0, true]; 
            _vehicle remoteExec [QEFUNC(vehicle,addFunctions), -2, true];
            _vehicle remoteExec [QEFUNC(vehicle,addInventory), 2];
            _vehicle remoteExec [QEFUNC(vehicle,addDefaultLoadout), 2];
            _vehicle remoteExec [QEFUNC(vehicle,addCosmetics), 2];
            _vehicle remoteExec [QEFUNC(vehicle,addStagingActions), -2];
            _vehicle remoteExec [QEFUNC(vehicle,addRadio), 2];
        }, [_vehicle], 1] call CBA_fnc_waitAndExecute;

    }];

    _player setVariable [QEGVAR(player,zeus), true];
}] call CBA_fnc_addEventHandler;



INFO("InitEventHandlers","Creating Client EventHandlers");
if (GVAR(isPlayer)) then {

    ["ace_zeusCreated", {
        _this params ["_zeus"];
        LOG_1("CuratorCreate_ACE", "ACE curator created");
        [QGVAR(setCuratorEventHandlers), [_zeus]] call CBA_fnc_targetEvent;
    }] call CBA_fnc_addEventHandler;
    
    ["zen_common_createZeus", {
        _this params ["_zeus"];
        LOG_1("CuratorCreate_ZEN", "ZEN curator created");
        [QGVAR(setCuratorEventHandlers), [_zeus]] call CBA_fnc_targetEvent;
    }] call CBA_fnc_addEventHandler;

};


// Server Events
if (!isServer) exitWith {};
INFO("InitEventHandlers","Creating Server EventHandlers");

[QEGVAR(log,text), {
    diag_log text _this;
}] call CBA_fnc_addEventHandler;

[QEGVAR(log,player), {
    _this params ["_playerName"];
    private _playerLog = missionNamespace getVariable [QEGVAR(log,players), []];
    _playerLog pushBack _playerName;
    missionNamespace setVariable [QEGVAR(log,players), _playerLog];
}] call CBA_fnc_addEventHandler;


