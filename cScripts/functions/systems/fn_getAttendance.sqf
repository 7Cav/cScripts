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

private _playerLog = missionNamespace getVariable [QEGVAR(log,players), []];

// Rpt 
["=================================================== START", "Attendance"] call FUNC(info);
[format ["Attendance (Entries: %1)", count _playerLog], "Attendance"] call FUNC(info);
{
    _x params ["_name"];
    [_name, "Attendance",  false, false] call FUNC(info);
} forEach _playerLog;

["=================================================== END", "Attendence"] call FUNC(info);

// Hint
[
    [],
    ["All attended players have been"],
    ["to your RPT log..."],
    [""],
    [""]
] call CBA_fnc_notify;

_playerLog