#include "..\script_component.hpp"
/*
 * Author: CPL.Brostrom.A
 * This function return players that haev connected to the server.
 * It will print it to your RPT log.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Array of players
 *
 * Example:
 * call cScripts_fnc_getAttendance
 *
 */

private _loggedPlayer = GETMVAR(EGVAR(log,players),[]);

private _header = format["=== Attendance (Entries: %1) ===", count _loggedPlayer];

private _dateTime = systemTimeUTC apply { if (_x < 10) then { "0" + str _x } else { str _x } };
private _formatDateTime = format["Date: %1-%2-%3 %4:%5z",_dateTime#0,_dateTime#1,_dateTime#2,_dateTime#3,_dateTime#4];

// Export
private _entries = [_header, endl, _formatDateTime, endl, endl];
{
    private _name = _y get "name";
    
    private _loadout = _y get "loadout";
    private _missionConfig = missionConfigFile >> "CfgLoadouts" >> _loadout;
    private _displayName = getText (_missionConfig >> "displayName");
    if (_displayName == "") then {
        private _config = configFile >> "CfgLoadouts" >> _loadout;
        _displayName = getText (_config >> "displayName");
    };

    private _connectTime = (_y get "connectTime") apply { if (_x < 10) then { "0" + str _x } else { str _x } };
    private _formatConnectTime = format["%1-%2-%3 %4:%5z",_connectTime#0,_connectTime#1,_connectTime#2,_connectTime#3,_connectTime#4];

    private _connections = count (_y get "connections");
    
    _entries append [_name, " (", _displayName, ") ", _formatConnectTime, " (Connected ", str _connections, " time(s))", endl];
} forEach _loggedPlayer;

private _export = composeText _entries;
["Mission attendees", str _export] call zen_common_fnc_exportText;


// RPT
SHOW_INFO("Attendance",_header);
SHOW_INFO("Attendance",_formatDateTime);
{
    private _name = _y get "name";
    
    private _loadout = _y get "loadout";
    private _missionConfig = missionConfigFile >> "CfgLoadouts" >> _loadout;
    private _displayName = getText (_missionConfig >> "displayName");
    if (_displayName == "") then {
        private _config = configFile >> "CfgLoadouts" >> _loadout;
        _displayName = getText (_config >> "displayName");
    };

    private _connectTime = (_y get "connectTime") apply { if (_x < 10) then { "0" + str _x } else { str _x } };
    private _formatConnectTime = format["%1-%2-%3 %4:%5z",_connectTime#0,_connectTime#1,_connectTime#2,_connectTime#3,_connectTime#4];

    private _connections = count (_y get "connections");
    
    private _output = [_name, " (", _displayName, " [", _loadout,"]) ", _formatConnectTime, " (Connected ", str _connections, " time(s))"] joinString "";
    SHOW_INFO("Attendance",_output);
} forEach _loggedPlayer;

SHOW_INFO("Attendance","================================");
