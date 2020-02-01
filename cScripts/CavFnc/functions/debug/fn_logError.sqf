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
    ["_message","",[]],
    ["_topic","",[]],
    ["_showInChat",true,[true]]
];

private _prefix = formatText["[%1]", QUOTE(PREFIX)];
private _type = "ERROR";
if !(_topic == "") then {_topic = formatText[" (%1)", _topic]};

diag_log formatText ["%1%2 %3: %4", _prefix, _topic, _type, _message];

if (_showInChat && (!isMultiplayer || {is3DENMultiplayer})) then {
    systemChat format ["%1%2 %3: %4", _prefix, _topic, _type, _message];
};