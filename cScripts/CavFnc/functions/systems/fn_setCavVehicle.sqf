/*
 * Author: CPL.Brostrom.A
 * This
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Lable <INTERGER> (Optinal)
 *
 * Example:
 *
 */

if (!isServer) exitWith {};

#include "..\script_component.hpp";

params [
    ["_vehicle", objNull, [objNull]],
    ["_lable", 0]
];

// Control so the unit dont have a already variable
if (!isNil {_vehicle getVariable QGVAR(isCavVehicle)}) exitWith {};

private _setTexture = "";

// Apply cav vehicle settings.
[_vehicle] call FUNC(setVehicleInventory);
[_vehicle] call FUNC(setVehicleSettings);

// Apply lable if there is any
if (_lable > 0) then {
    switch (_lable) do {
        case 1: { _setTexture = "b1" };
        case 2: { _setTexture = "b2" };
        case 3: { _setTexture = "b3" };
        case 4: { _setTexture = "b4" };
    };
    [_vehicle,_setTexture] call FUNC(attachVehicleLabel);
};

_vehicle setVariable [QGVAR(isCavVehicle), true];
