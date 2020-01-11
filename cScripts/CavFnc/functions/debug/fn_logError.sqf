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
 *
 */

params [["_message","",[]]];

private _prefix = formatText["[%1]", QUOTE(PREFIX)];
private _type = "ERROR";

diag_log formatText ["%1 %2: %3", _prefix, _type, _message];

if (!isMultiplayer || {is3DENMultiplayer}) then {
    systemChat format ["%1 %2: %3", _prefix, _type, _message];
};