/*
 * Author: CPL.Brostrom.A (With the help from; 654wak654)
 * This function add two get out addAction that is only avaible for players in cargo
 * as well is ffv cargoIndex position. Postions effected are 0 to 11 in other words not -1.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_addGetOutHelo;
 */

#include "..\script_component.hpp";

params [["_vehicle", objNull, [objNull]]];

// Check so the options arent added twice.
if (!isNil {_vehicle getVariable QGVAR(GetOutHelo)}) exitWith {};

_vehicle addAction [
    "<t color='#ff0000'>Get out Left Side</t>",
    {[_this select 0] call FUNC(doGetOutHeloLeft)},
    0, 1.5, true, true, "",
    "(_target getCargoIndex _this) != -1"
];

_vehicle addAction [
    "<t color='#0000ff'>Get out Right Side</t>",
    {[_this select 0] call FUNC(doGetOutHeloRight)},
    0, 1.5, true, true, "",
    "(_target getCargoIndex _this) != -1"
];

_vehicle setVariable [QGVAR(GetOutHelo),"true"];
