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
private _year = _dateTime#0;
private _month = _dateTime#1;
private _day = _dateTime#2;
private _hour = _dateTime#3;
private _minute = _dateTime#4;
_dateTime = format["Date: %1-%2-%3 %4:%5z", _year, _month, _day, _hour, _minute];

// Export
private _entries = [_header, endl, _dateTime, endl, endl];
{
    _x params ["_player","_name","_slot"];
    _entries append [_name, " (", _slot, ")", endl];
} forEach _loggedPlayer;

private _export = composeText _entries;

["Mission attendees", str _export] call zen_common_fnc_exportText;


// RPT
SHOW_INFO("Attendance",_header);
SHOW_INFO("Attendance",_dateTime);
{
    _x params ["_player","_name","_slot"];
    private _output = format["%1 (%2 [%3])", _name, _slot, typeOf _player];
    SHOW_INFO("Attendance",_output);
} forEach _loggedPlayer;

SHOW_INFO("Attendance","================================");
