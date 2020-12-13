#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function adds a Jump out option to a vehicle.
 *
 * Arguments:
 * 0: Vehicle             <OBJECT>
 * 1: Minimum altetude    <NUMBER> (Optional) (Default; 180)
 * 2: Maximum altetude    <NUMBER> (Optional) (Default; 350)
 * 3: Maximum speed       <NUMBER> (Optional) (Default; 310)
 * 4: Chute Vehicle Class <OBJECT> (Optional) (Default; "rhs_d6_Parachute")
 *
 * Example:
 * ["my_c130"] call cScripts_fnc_addJump
 * ["my_c130", 180] call cScripts_fnc_addJump
 * ["my_c130", 180, 350, 300] call cScripts_fnc_addJump
 * ["my_c130", 180, 350, 300, "rhs_d6_Parachute"] call cScripts_fnc_addJump
 *
 */

params [
    ["_vehicle", objNull, [objNull]],
    ["_minAltetude", 180, [180]],
    ["_maxAltetude", 350, [350]],
    ["_maxSpeed", 310, [310]],
    ["_chuteVehicleClass", "rhs_d6_Parachute", ["rhs_d6_Parachute"]]
];

// Check so the options arent added twice.
if (!isNil {_vehicle getVariable QEGVAR(Vehicle,Jump)}) exitWith {[formatText["Aircraft jump setting already applied for %1.", _vehicle]] call FUNC(logWarning);};

private _conditionHoldAction = format ["((_target getCargoIndex player) != -1) && ((_target animationPhase 'ramp_bottom' > 0.64) or (_target animationPhase 'door_2_1' == 1) or (_target animationPhase 'door_2_2' == 1) or (_target animationPhase 'jumpdoor_1' == 1) or (_target animationPhase 'jumpdoor_2' == 1) or (_target animationPhase 'back_ramp_switch' == 1) or (_target animationPhase 'back_ramp_half_switch' == 1) or (_target doorPhase 'RearDoors' > 0.5) or (_target doorPhase 'Door_1_source' > 0.5) or (_target animationSourcePhase 'ramp_anim' > 0.5)) && ((getPosVisual _target) select 2 >= %1) && ((getPosVisual _target) select 2 <= %2) && (speed _target <= %3)", _minAltetude, _maxAltetude, _maxSpeed];

// Add hold action for jump
[
    _vehicle,
    "<t color='#800080'>Jump</t>",
    "cScripts\Data\Icon\icon_02.paa",
    "cScripts\Data\Icon\icon_02.paa",
    _conditionHoldAction,
    "true",
    {},
    {},
    {
        [(_this select 1),(_this select 0),(_this select 3) select 0] call FUNC(doJump)
    },
    {},
    [_chuteVehicleClass],
    0,
    25,
    false
] call BIS_fnc_holdActionAdd;

_vehicle setVariable [QEGVAR(Vehicle,Jump),[_vehicle, _minAltetude, _maxAltetude, _maxSpeed, _chuteVehicleClass]];
