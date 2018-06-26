/*
 * Author: CPL.Brostrom.A
 *  This function print debug information in the RPT log
 *
 * Arguments:
 * 0: Message <STRING>
 * 1: Forced <BOOL>
 *
 * Example:
 * ["Something is wrong here."] call cScripts_fnc_logInfo
 *
 */

#include "..\script_component.hpp"

params [
    "_message",
    ["_isForced",false]
];

if ((getNumber (missionConfigFile >> "CfgSettings" >> "isDebugMode") == 1) or (_isForced)) then {
    diag_log formatText ["[cScripts] INFO: %1", _message];
};
