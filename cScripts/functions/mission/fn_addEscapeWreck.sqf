#include "..\script_component.hpp";
/*
 * Author: CPL.Turn.J
 * This adds a function to allow pilots to escape from wrecked airframes.
 * 
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Color Action <BOOL>
 *
 * Example:
 * [this] call cScripts_fnc_addGetOutHelo
 * [this, true] call cScripts_fnc_addGetOutHelo
 */

params [
    ["_vehicle", objNull, [objNull]]
];

// Check so the options arent added twice.
if (!isNil {_vehicle getVariable QEGVAR(Vehicle,escapeWreck)}) exitWith {[format["Escape wreck already set for %1.", _vehicle]] call FUNC(warning);};

_conditionAction = '(!(assignedVehicleRole player isEqualTo [])) && ((damage vehicle player) >= 1)';

[
    _vehicle,
    "<t color='#FDDA0D'>Escape Wreck (HOLD)</t>",
    "cScripts\Data\Icon\icon_02.paa",
    "cScripts\Data\Icon\icon_02.paa",
    _conditionAction,
    "true",
    {},
    {},
    {
        params ["_target", "_caller", "_actionID"];
        [_caller, _target] call FUNC(escapeWreck);
    },
    {},
    [],
    5,
    25,
    true
] call BIS_fnc_holdActionAdd;

_vehicle setVariable [QEGVAR(Vehicle,escapeWreck), [player, _vehicle]];
// <t color='#FDDA0D'>Escape Wreck (HOLD)</t>