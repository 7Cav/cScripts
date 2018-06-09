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
    ["_minAltetude", 200],
    ["_maxAltetude", 350],
    ["_maxSpeed", 300]
];

// Check so the options arent added twice.
 if (!isNil {_vehicle getVariable QGVAR(JumpOutAirframe)}) exitWith {};

/*_vehicle setVariable [QGVAR(allowJump),false,true];

_vehicle addAction [
    "<t color='#800080'>Allow jump</t>",
    {_vehicle setVariable [QGVAR(allowJump),true,true];},
    0, 2, true, true, "",
    "(player == driver vehicle player) && (_target getVariable ['cscripts_allowJump',''])"
];
_vehicle addAction [
    "<t color='#ff0000'>Forbid jump</t>",
    {_vehicle setVariable [QGVAR(allowJump),false,true];},
    0, 2, true, true, "",
    "(player == driver vehicle player) && (_target getVariable ['cscripts_allowJump',''])"
]; */

// Add hold action for jump
[
    _vehicle,
    "<t color='#800080'>Jump</t>",
    "cScripts\Data\Icon\icon_02.paa",
    "cScripts\Data\Icon\icon_02.paa",
    format ["((_target getCargoIndex player) != -1) && (_target animationPhase 'ramp_bottom' > 0.64) && ((getPosASL _target) select 2 >= %1) && ((getPosASL _target) select 2 <= %2) && (speed _target <= %3)", _minAltetude, _maxAltetude, _maxSpeed],
    "true",
    {},
    {},
    {[(_this select 1),(_this select 0)] call FUNC(doJump)},
    {},
    [],
    0,
    25,
    false
] call BIS_fnc_holdActionAdd;

_vehicle setVariable [QGVAR(JumpOutAirframe),"true"];
