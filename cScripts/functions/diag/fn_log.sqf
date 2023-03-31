#include "..\script_component.hpp"
/*
 * Author: CPL.Brostrom.A
 *  This function print a formated rpt message.
 *
 * Arguments:
 * 0: message <STRING>
 * 1: componant <STRING>
 * 2: showInChat <BOOL>
 * 3: sendToServer <BOOL>
 * 4: typePrefix <STRING>
 *
 * Example:
 * ["Something is wrong here."] call FUNC(log)
 * [format["%1 is a player.", player]] call FUNC(log)
 *
 */

params [
    ["_message", ""],
    ["_componant", "", [""]],
    ["_showInChat", false, [false]],
    ["_sendToServer", false, [false]],
    ["_type", "LOG", [""]]
];

private _prefix = format ["[%1] ", QUOTE(PREFIX)];

_componant = if ( _componant != "" ) then {format["(%1) ", _componant]} else {""};

_type = format ["%1", _type];

private _logMessage = format ["%1%2%3: %4", _prefix, _componant, _type, _message];

diag_log text _logMessage;

if (_sendToServer && !isServer) then {
    [QEGVAR(log,text), _logMessage] call CBA_fnc_serverEvent;
};

if (_showInChat && (!isMultiplayer || {is3DENMultiplayer})) then {
    systemChat _logMessage;
};
