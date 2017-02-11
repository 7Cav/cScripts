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

if (!isNil {_vehicle getVariable QGVAR(GetOutHelo)}) exitWith {};

_vehicle addAction [
    "Get out (Left side)",
    {[_this select 0] call FUNC(doGetOutHeloLeft)},
    0, 1.5, true, true, "",
    "(_target getCargoIndex _this) != -1"
];

_vehicle addAction [
    "Get out (Right side)",
    {[_this select 0] call FUNC(doGetOutHeloRight)},
    0, 1.5, true, true, "",
    "(_target getCargoIndex _this) != -1"
];

_vehicle setVariable [QGVAR(GetOutHelo),"true"];