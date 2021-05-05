#include "..\script_component.hpp";
/*
 * Author: Whitsel.M
 * This function allow you to set the cargo space and size of the given object.
 *
 * Arguments:
 * 0: Vehicle       <OBJECT>
 * 1: Cargo Space   <NUMBER> (-2 to keep default value)
 * 2: Cargo Size    <NUMBER> (-2 to keep default value)
 * 3: Draggable     <BOOLEAN> (Default; true)
 * 4: Carryable     <BOOLEAN> (Default; true)
 *
 * Example:
 * [myTruck] call cScripts_fnc_setSpaceSize;
 * [myTruck, 30, -1] call cScripts_fnc_setSpaceSize;
 * [myCrate, -1, 2] call cScripts_fnc_setSpaceSize;
 * [myCrate, -1, 2, true, false] call cScripts_fnc_setSpaceSize;
 *
 * Public: Yes
 */

params [
    ["_vehicle", objNull, [objNull]],
    ["_space", -2, [0]],
    ["_size", -2, [0]],
    ["_draggable", true, [true]],
    ["_carryable", true, [true]]
];

if !(isServer) exitWith {};

if (_space != -2) then {
    [_vehicle, _space] call ace_cargo_fnc_setSpace;
};
if (_size != -2) then {
    [_vehicle, _size] call ace_cargo_fnc_setSize;
};

[_vehicle, _draggable] call ace_dragging_fnc_setDraggable;
[_vehicle, _carryable] call ace_dragging_fnc_setCarryable;