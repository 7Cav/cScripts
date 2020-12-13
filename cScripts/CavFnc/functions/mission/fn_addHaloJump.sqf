#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function adds a HALO Jump out option to a vehicle.
 *
 * Arguments:
 * 0: Vehicle             <OBJECT>
 * 1: Minimum altetude    <NUMBER> (Optional) (Default; 180)
 * 4: Chute Vehicle Class <OBJECT> (Optional) (Default; "B_Parachute")
 *
 * Example:
 * ["my_c130"] call cScripts_fnc_addHaloJump
 * ["my_c130", 5000] call cScripts_fnc_addHaloJump
 * ["my_c130", 5000, "B_Parachute"] call cScripts_fnc_addHaloJump
 *
 */

params [
    ["_vehicle", objNull, [objNull]],
    ["_minAltetude", 5000, [5000]],
    ["_chuteBackpackClass", "B_Parachute", ["B_Parachute"]]
];

// Check so the options arent added twice.
if (!isNil {_vehicle getVariable QEGVAR(Vehicle,Halo)}) exitWith {[formatText["Aircraft halo jump setting already applied for %1.", _vehicle]] call FUNC(logWarning);};

private _conditionHoldAction = format ["((_target getCargoIndex player) != -1) && ((_target animationPhase 'ramp_bottom' > 0.64) or (_target animationPhase 'door_2_1' == 1) or (_target animationPhase 'door_2_2' == 1) or (_target animationPhase 'jumpdoor_1' == 1) or (_target animationPhase 'jumpdoor_2' == 1) or (_target animationPhase 'back_ramp_switch' == 1) or (_target animationPhase 'back_ramp_half_switch' == 1) or (_target doorPhase 'RearDoors' > 0.5) or (_target doorPhase 'Door_1_source' > 0.5) or (_target animationSourcePhase 'ramp_anim' > 0.5)) && ((getPosVisual _target) select 2 >= %1)", _minAltetude];

// Add hold action for jump
[
    _vehicle,
    "<t color='#800080'>HALO Jump</t>",
    "cScripts\Data\Icon\icon_02.paa",
    "cScripts\Data\Icon\icon_02.paa",
    _conditionHoldAction,
    "true",
    {},
    {},
    {
        [(_this select 1),(_this select 0),(_this select 3) select 0] call FUNC(doHaloJump)
    },
    {},
    [_chuteBackpackClass],
    0,
    25,
    false
] call BIS_fnc_holdActionAdd;

_vehicle setVariable [QEGVAR(Vehicle,Halo), [_vehicle, _minAltetude, _chuteBackpackClass]];
