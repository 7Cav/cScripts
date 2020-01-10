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
if (!isNil {_vehicle getVariable QEGVAR(Vehicle,Eject)}) exitWith {[formatText["Aircraft jump setting already applied for %1.", _vehicle]] call FUNC(logWarning);};

private _conditionHoldAction = format ["((_target getCargoIndex player) != -1) && ((_target animationPhase 'ramp_bottom' > 0.64) or (_target animationPhase 'door_2_1' == 1) or (_target animationPhase 'door_2_2' == 1) or (_target animationPhase 'jumpdoor_1' == 1) or (_target animationPhase 'jumpdoor_2' == 1) or (cursorTarget animationPhase 'back_ramp_switch' == 1) or (cursorTarget animationPhase 'back_ramp_half_switch' == 1)) && ((getPosVisual _target) select 2 >= %1) && ((getPosVisual _target) select 2 <= %2) && (speed _target <= %3)", _minAltetude, _maxAltetude, _maxSpeed];

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

// Ace status check
 private _condition = {
    player == vehicle player
};
private _statement = {
    params ["_target", "_player", "_params"];
    hint parseText format["<t color='#00cd00' size='1.2' shadow='1' shadowColor='#000000' align='center'>ALL GREEN!</t><br />This aircraft is equipped with static line jump equipment!<br /><br />Remember to keep within the safety speed of max <t color='#ffc61a'>%1 KPH</t>, between <t color='#ffc61a'>%2 to %3 METERS AGL</t> and have a door to jump out from open.", (_params select 2)-10, _params select 0, _params select 1];
};
_action = ["Jump_Check_Aircraft", "Check Aircraft", "", _statement, {true}, {}, [_minAltetude, _maxAltetude, _maxSpeed]] call ace_interact_menu_fnc_createAction;
[_vehicle, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;


_vehicle setVariable [QEGVAR(Vehicle,Eject),"true"];
