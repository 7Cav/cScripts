/*
 * Author: CPL.Brostrom.A
 *  This function print debug information in the RPT log
 *
 * Arguments:
 * 0: Message <STRING>
 *
 * Example:
 * ["Something is wrong here."] call cScripts_fnc_logInfo
 *
 */

#include "..\script_component.hpp"

params [
    "_message"
];

private _prefix = "[cScripts]";
private _type = "INFO";

diag_log formatText ["%1 %2: %3", _prefix, _type, _message];
