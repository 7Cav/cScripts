#include "..\script_component.hpp"
/*
 * Author: CPL.Brostrom.A
 *  This function print a formated rpt message.
 *
 * Arguments:
 * 0: message <STRING>
 * 1: componant <STRING>
 * 2: type <STRING>
 * 3: showInChat <BOOL>
 *
 * Example:
 * ["Something is wrong here."] call FUNC(error)
 * [formatText["%1 is a player.", player]] call FUNC(error)
 *
 */

params [
    ["_message", ""],
    ["_componant", "", [""]],
    ["_showInChat", true, [true]]
];

private _type = "ERROR";

[_message, _componant, _showInChat, _type] call FUNC(log);