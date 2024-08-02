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


// Player Events
if (GVAR(isPlayer)) then {
    INFO("InitEventHandlers","Creating Client EventHandlers");

    // TODO: Possibly use in the future 
    //["ace_zeusCreated", {
    //    _this params ["_zeus"];
    //}] call CBA_fnc_addEventHandler;
    //
    //["zen_common_createZeus", {
    //    _this params ["_zeus"];
    //}] call CBA_fnc_addEventHandler;
};


// Server Events
if (!isServer) exitWith {};
INFO("InitEventHandlers","Creating Server EventHandlers");

[QEGVAR(log,text), {
    diag_log text _this;
}] call CBA_fnc_addEventHandler;

[QEGVAR(log,player), {
    params ["_guid","_name"];
    private _unit = [_guid] call BIS_fnc_getUnitByUID;
    private _playerLog = GETMVAR(EGVAR(log,players),createHashMap);
    INFO_3("PlayerLog","Connected %1 [%2] (GUID: %3)",_name,_unit,_guid);
    
    if (!isNil{_playerLog get _guid}) then {
        INFO_1("PlayerLog","Updating Log Entry [%1]", isNil{_playerLog get _guid});
        private _data = _playerLog get _guid;
        
        private _connections = _data get "connections";
        _connections pushBack systemTimeUTC;
        _data set ["connections", _connections];

        private _loadout = if (isNull _unit) then {"Trooper"} else {GETVAR(_unit,EGVAR(Gear,LoadoutClass), typeOf _unit)};
        _data set ["loadout", _loadout];
        
        _playerLog set [_guid,_data];
    } else {
        INFO_1("PlayerLog", "Creating Log Entry [%1]", isNil{_playerLog get _guid});
        private _entry = createHashMapFromArray [
            ['name', _name],
            ['loadout', _loadout],
            ['connectTime', systemTimeUTC],
            ['connections', [systemTimeUTC]]
        ];
        _playerLog set [_guid,_entry];
    };
    SETMVAR(EGVAR(log,players),_playerLog);
}] call CBA_fnc_addEventHandler;

addMissionEventHandler ["PlayerConnected", {
    params ["_id", "_uid", "_name", "_jip", "_owner", "_idstr"];
    [QEGVAR(log,player), [_uid, _name]] call CBA_fnc_serverEvent;
}];