/*
 * Author: CPL.Brostrom.A
 * This function adds a Jump out option to a vehicle.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Example:
 * ["this"] call cScripts_fnc_addJump
 * ["this",150] call cScripts_fnc_addJump
 * ["this",150,1000,300] call cScripts_fnc_addJump
 *
 * Public: Yes
 */
#include "..\script_component.hpp";

params [
    ["_vehicle", objNull, [objNull]],
    ["_minAltetude", 150],
    ["_maxAltetude", 1000],
    ["_maxSpeed", 300]
];

// Check so the options arent added twice.
if (!isNil {_vehicle getVariable QGVAR(JumpOutAirframe)}) exitWith {};

[
    _vehicle,
    "Jump",
    "cScripts\Data\Icon\icon_02.paa",
    "cScripts\Data\Icon\icon_02.paa",
    "((_target getCargoIndex _this) != -1)",
    "true",
    {},
    {},
    {[(_this select 1),(_this select 0)] call FUNC(doJump)},
    {},
    [],
    1
] call BIS_fnc_holdActionAdd;

// format ["((_target getCargoIndex _this) != -1) && (((getPosATL _target) select 2) >= %1) && (((getPosATL _target) select 2) <= %2) && (speed _target <= %3)", _maxAltetude, _minAltetude, _maxSpeed],

_vehicle setVariable [QGVAR(JumpOutAirframe),"true"];
