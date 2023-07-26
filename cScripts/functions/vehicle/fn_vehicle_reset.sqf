#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function clears all function variables as well as its attachments
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Example:
 * ["vic"] call cScripts_fnc_vehicle_reset;
 *
 * Public: No
 */

params [["_vehicle", objNull, [objNull]]];
if (!isServer) exitWith {};
if (_vehicle iskindOf "man") exitWith {};

// Clear cosmetics and labels
private _labels = _vehicle getVariable [QEGVAR(Vehicle,Labels), []];
if (count _labels != 0) then {{deleteVehicle _x} forEach _labels;};
_vehicle getVariable [QEGVAR(Vehicle,Labels), nil];
_vehicle setVariable [QEGVAR(Vehicle,Cosmetics), nil, true];

_vehicle setVariable [QEGVAR(Vehicle,Callsign), nil, true];
_vehicle setVariable [QEGVAR(Vehicle,Name), nil, true];


// Clear pylon
_vehicle setVariable [QEGVAR(vehicle,Pylon), nil, true];
_vehicle setVariable [QEGVAR(Vehicle,PylonApplyed), nil, true];


// Clear Functions variable and vehicle type
_vehicle setVariable [QEGVAR(Vehicle,Type),       nil, true]; // Clear type in case of
_vehicle setVariable [QEGVAR(Vehicle,Functions),  nil, true];


// Clear and remove helicopter Get Out or Jump actions
private _getOutActionIDs = _vehicle getVariable [QEGVAR(Vehicle,GetOutRightLeft), nil];
if (!isNil {_vehicle getVariable QEGVAR(Vehicle,GetOutRightLeft)}) then {
    {_vehicle removeAction _x} forEach _getOutActionIDs select 1;
}; 
private _jumpActionID    = _vehicle getVariable [QEGVAR(Vehicle,Jump), nil];
if (!isNil {_vehicle getVariable QEGVAR(Vehicle,Jump)}) then {
    [_vehicle, _jumpActionID select 1] call BIS_fnc_holdActionRemove
}; 
private _heloActionID    = _vehicle getVariable [QEGVAR(Vehicle,Halo), nil];
if (!isNil {_vehicle getVariable QEGVAR(Vehicle,Halo)}) then {
    [_vehicle, _heloActionID select 1] call BIS_fnc_holdActionRemove
};


// Reset vehicle inventory variable
_vehicle setVariable [QEGVAR(Vehicle,Inventory),  nil, true];


// Clear radio
_vehicle setVariable [QEGVAR(Vehicle,Radio), nil, true];

private _vehicleConfig = configOf _vehicle;
private _countAttendants = (_vehicleConfig >> "attendant") call BIS_fnc_getCfgData;
if (_countAttendants == 0) then {
    // Reset ACE Medical Vehicle
    _vehicle setVariable ["ace_medical_isMedicalVehicle", nil, true];
};


// Remove any other random stuff
_vehicle setPlateNumber "";
_vehicle forceFlagTexture "";