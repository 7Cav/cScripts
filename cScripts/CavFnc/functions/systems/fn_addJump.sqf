#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function adds a Jump out option to a vehicle.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Example:
 * ["my_c130"] call cScripts_fnc_addJump
 * ["my_c130",180] call cScripts_fnc_addJump
 * ["my_c130",180,350,300] call cScripts_fnc_addJump
 *
 */

params [
    ["_vehicle", objNull, [objNull]],
    ["_minAltetude", 180],
    ["_maxAltetude", 350],
    ["_maxSpeed", 300],
    ["_chuteVehicleClass", "rhs_d6_Parachute"]
];

// Check so the options arent added twice.
if (!isNil {_vehicle getVariable QEGVAR(Vehicle,Eject)}) exitWith {};

// Add hold action for jump
[
    _vehicle,
    "<t color='#800080'>Jump</t>",
    "cScripts\Data\Icon\icon_02.paa",
    "cScripts\Data\Icon\icon_02.paa",
    format ["((_target getCargoIndex player) != -1) && ((_target animationPhase 'ramp_bottom' > 0.64) or (_target animationPhase 'door_2_1' == 1) or (_target animationPhase 'door_2_2' == 1)) && ((getPosVisual _target) select 2 >= %1) && ((getPosVisual _target) select 2 <= %2) && (speed _target <= %3)", _minAltetude, _maxAltetude, _maxSpeed],
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

_vehicle setVariable [QEGVAR(Vehicle,Eject),"true"];
