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
 *
 * Example:
 * ["Something is wrong here."] call FUNC(info)
 * [format["%1 is a player.", player]] call FUNC(info)
 *
 */

params [
    ["_message", ""],
    ["_componant", "", [""]],
    ["_showInChat", false, [false]],
    ["_sendToServer", false, [false]]
];

private _type = "INFO";

[_message, _componant, _showInChat, _sendToServer, _type] call FUNC(log);