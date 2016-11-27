/*
 * Author: CPL.Brostrom.A (With the help from; 654wak654)
 * This function adds 2 addAction that is only avaible for players in cargo.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_addGetOutUH60;
 */

#include "..\script_component.hpp";

params [["_vehicle", objNull, [objNull]]];

_vehicle addAction [
    "Get out (Left side)",
    {[_this select 0] call FUNC(doGetOutUH60Left)},
    0, 1.5, true, true, "",
    "_this in ((fullCrew [_target, 'cargo']) apply {_x select 0})"
];

_vehicle addAction [
    "Get out (Right side)",
    {[_this select 0] call FUNC(doGetOutUH60Right)},
    0, 1.5, true, true, "",
    "_this in ((fullCrew [_target, 'cargo']) apply {_x select 0})"
];