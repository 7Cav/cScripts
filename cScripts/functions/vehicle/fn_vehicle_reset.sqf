#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function clears all function variables as well as its attachments
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Return Value:
 * nothing
 *
 * Example:
 * [_vehicle] call cScripts_fnc_vehicle_reset;
 *
 * Public: No
 */

params [["_vehicle", objNull, [objNull]]];

if (!isServer) exitWith {};
if (_vehicle iskindOf "man") exitWith {};

INFO_1("VehicleReset", "Clearing systems on vehicle %1.", _vehicle);

// Clear cosmetics and labels
private _labels = _vehicle getVariable [QEGVAR(Vehicle,Labels), []];
if (count _labels != 0) then {{deleteVehicle _x} forEach _labels;};
_vehicle getVariable [QEGVAR(Vehicle,Labels), nil];
_vehicle setVariable [QEGVAR(VehicleFunc,Cosmetics), nil, true];

_vehicle setVariable [QEGVAR(Vehicle,Callsign), nil, true];
_vehicle setVariable [QEGVAR(Vehicle,Name), nil, true];


// Clear pylon
_vehicle setVariable [QEGVAR(vehicle,Pylon), nil, true];
_vehicle setVariable [QEGVAR(VehicleFunc,DefaultPylon), nil, true];


// Clear Functions variable and vehicle type
_vehicle setVariable [QEGVAR(Vehicle,Type),       nil, true]; // Clear type in case of
_vehicle setVariable [QEGVAR(VehicleFunc,Functions),  nil, true];


// Clear and remove helicopter Get Out or Jump actions
private _getOutActionIDs = _vehicle getVariable [QEGVAR(VehicleFunc,GetOutAction), nil];
if (!isNil {_vehicle getVariable QEGVAR(VehicleFunc,GetOutAction)}) then {
    {_vehicle removeAction _x} forEach _getOutActionIDs select 1;
}; 
private _jumpActionID    = _vehicle getVariable [QEGVAR(VehicleFunc,Jump), nil];
if (!isNil {_vehicle getVariable QEGVAR(VehicleFunc,JumpAction)}) then {
    [_vehicle, _jumpActionID select 1] call BIS_fnc_holdActionRemove
}; 
private _heloActionID    = _vehicle getVariable [QEGVAR(VehicleFunc,HaloAction), nil];
if (!isNil {_vehicle getVariable QEGVAR(VehicleFunc,HaloAction)}) then {
    [_vehicle, _heloActionID select 1] call BIS_fnc_holdActionRemove
};
private _escapeActionID  = _vehicle getVariable [QEGVAR(VehicleFunc,EscapeAction), nil];
if (!isNil {_vehicle getVariable QEGVAR(VehicleFunc,EscapeAction)}) then {
    [_vehicle, _escapeActionID] call BIS_fnc_holdActionRemove
};

// Reset vehicle inventory variable
_vehicle setVariable [QEGVAR(Vehicle,Inventory),  nil, true];


// Clear radio
_vehicle setVariable [QEGVAR(Vehicle,Radio), nil, true];

// Reset ACE Medical Vehicle
_vehicle setVariable ["ace_medical_isMedicalVehicle", nil, true];


// Remove any other random stuff
_vehicle setPlateNumber "";
_vehicle forceFlagTexture "";