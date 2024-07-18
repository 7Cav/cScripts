#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A, Elemtael
 * This function adds a Jump out option to a vehicle.
 *
 * Arguments:
 * 0: Vehicle             <OBJECT>
 * 1: Minimum altetude    <NUMBER> (Optional) (Default; 180)
 * 2: Maximum altetude    <NUMBER> (Optional) (Default; 350)
 * 3: Maximum speed       <NUMBER> (Optional) (Default; 310)
 * 4: Chute Vehicle Class <OBJECT> (Optional) (Default; "rhs_d6_Parachute")
 * 5: Staggared Jump <BOOL> (Optional) [Default; false]
 *
 * Example:
 * ["my_c130"] call cScripts_fnc_addLineJump
 * ["my_c130", 180] call cScripts_fnc_addLineJump
 * ["my_c130", 180, 350, 310] call cScripts_fnc_addLineJump
 * ["my_c130", 180, 350, 310, "rhs_d6_Parachute", false] call cScripts_fnc_addLineJump
 *
 */

params [
    ["_vehicle", objNull, [objNull]],
    ["_minAltetude", 180, [180]],
    ["_maxAltetude", 350, [350]],
    ["_maxSpeed", 310, [310]],
    ["_chuteVehicleClass", "rhs_d6_Parachute", ["rhs_d6_Parachute"]],
    ["_allowStaggared", false, [false]]
];

// Check so the options arent added twice.
if (!isNil {_vehicle getVariable QEGVAR(VehicleFunc,JumpAction)}) exitWith {SHOW_WARNING_1("JumpAction", "Aircraft jump setting already applied for %1.", _vehicle)};

private _doors = tostring {
    ((_target animationPhase 'ramp_bottom' > 0.64) ||   // RHS_C130J
    (_target animationPhase 'door_2_1' == 1) ||         // RHS_C130J
    (_target animationPhase 'door_2_2' == 1) ||         // RHS_C130J
    (_target animationPhase 'jumpdoor_1' == 1) ||
    (_target animationPhase 'jumpdoor_2' == 1) ||
    (_target animationPhase 'back_ramp_switch' == 1) ||
    (_target animationPhase 'back_ramp_half_switch' == 1) ||
    (_target doorPhase 'RearDoors' > 0.5) ||
    (_target doorPhase 'Door_1_source' > 0.5) ||
    (_target animationSourcePhase 'ramp_anim' > 0.5) ||
    (_target animationPhase 'Ramp' < 0.5))              // TF373_RAF_HC5, TF373_SOAR_MH47G_No_Rear_Guns
};

private _conditionHoldAction = format ["((_target getCargoIndex player) != -1) && (%1) && ((getPosVisual _target) select 2 >= %2) && ((getPosVisual _target) select 2 <= %3) && (speed _target <= %4)", _doors, _minAltetude, _maxAltetude, _maxSpeed];

// Add hold action for jump
private _actionID = [
    _vehicle,
    "<t color='#800080'>Jump</t>",
    "cScripts\Data\Icon\icon_02.paa",
    "cScripts\Data\Icon\icon_02.paa",
    _conditionHoldAction,
    "true",
    {},
    {},
    {
        params ["_target", "_caller", "_actionId", "_arguments"];
        _arguments params ["_chuteVehicleClass", "_allowStaggared"];
        [_caller, _target, _chuteVehicleClass, _allowStaggared] call EFUNC(para,lineJump)
    },
    {},
    [_chuteVehicleClass, _allowStaggared],
    0,
    25,
    false
] call BIS_fnc_holdActionAdd;

_vehicle setVariable [QEGVAR(VehicleFunc,JumpAction), [_vehicle, _actionID, _minAltetude, _maxAltetude, _maxSpeed, _chuteVehicleClass, _allowStaggared]];
