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

INFO("InitEventHandlers","Creating Global and Client EventHandlers");

[QGVAR(getAttendance), {
    call FUNC(getAttendance);
}] call CBA_fnc_addEventHandler;


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

// Vehicle
[QEGVAR(vehicle,applyLoadout), {
    _this params ["_vehicle", "_loadoutName", "_pylon"];
    LOG_1(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>DEBUG EVENT","%1", _vehicle);
    LOG_1(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>DEBUG EVENT","%1", _loadoutName);
    LOG_1(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>DEBUG EVENT","%1", _pylon);
    [_vehicle, _loadoutName, _pylon] call EFUNC(vehicle,applyLoadout);
}] call CBA_fnc_addEventHandler;