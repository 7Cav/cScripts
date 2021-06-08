#include "..\script_component.hpp"
/*
 * Author: CPL.Brostrom.A
 *  This function print debug information in the RPT log and in the system chat in eden multiplayer
 *
 * Arguments:
 * 0: Message <STRING>
 *
 * Example:
 * ["Something is wrong here."] call cScripts_fnc_logError
 * [formatText["%1 is a player.", player]] call cScripts_fnc_logError
 *
 */

params [
    ["_message", ""],
    ["_componant", "", [""]],
    ["_showInChat", false, [false]],
    ["_sendToServer", false, [false]]
];

private _type = "ERROR";

[_message, _componant, _showInChat, _sendToServer, _type] call FUNC(log);
