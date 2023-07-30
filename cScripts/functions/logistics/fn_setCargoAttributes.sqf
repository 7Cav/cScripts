#include "..\script_component.hpp";
/*
 * Author: Whitsel.M
 * This function allow you to set the cargo space and size of the given object.
 *
 * Arguments:
 * 0: Vehicle       <OBJECT>
 * 1: Cargo Space   <NUMBER> (nil to keep default value)
 * 2: Cargo Size    <NUMBER> (nil to keep default value)
 * 3: Draggable     <BOOLEAN> (Default; true)
 * 4: Carryable     <BOOLEAN> (Default; true)
 *
 * Example:
 * [myTruck] call cScripts_fnc_setCargoAttributes;
 * [myTruck, 30, -1] call cScripts_fnc_setCargoAttributes;
 * [myCrate, -1, 2] call cScripts_fnc_setCargoAttributes;
 * [myCrate, -1, 2, true, false] call cScripts_fnc_setCargoAttributes;
 * [myCrate, nil, nil, true, false] call cScripts_fnc_setCargoAttributes;
 *
 * Public: Yes
 */

params [
    ["_vehicle", objNull, [objNull]],
    ["_space", nil, [0, nil]],
    ["_size", nil, [0, nil]],
    ["_draggable", true, [true]],
    ["_carryable", true, [true]]
];

if (!isServer) exitWith {};

if (!isNil{_space}) then {
    [_vehicle, _space] call ace_cargo_fnc_setSpace;
};
if (!isNil{_size}) then {
    [_vehicle, _size] call ace_cargo_fnc_setSize;
};

[_vehicle, _draggable] call ace_dragging_fnc_setDraggable;
[_vehicle, _carryable] call ace_dragging_fnc_setCarryable;