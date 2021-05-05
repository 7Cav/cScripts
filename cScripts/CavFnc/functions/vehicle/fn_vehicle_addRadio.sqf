#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function changes the inventory of the given vehicle.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Example:
 * ["vic"] call cScripts_fnc_vehicle_addRadio;
 */
#define DEBUG_MODE

params [["_vehicle", objNull, [objNull]]];

if (didJIP) exitWith {};
if (!isServer) exitWith {};
if !(EGVAR(patches,usesACRE)) exitWith {};
if !(EGVAR(Settings,enableACRE)) exitWith {};
if (_vehicle iskindOf "man") exitWith {};
if (!isNil {_vehicle getVariable QEGVAR(Vehicle,Radio);}) exitWith {[format["Vehicle Radio already applied for %1.", _vehicle], "Vehicle"] call FUNC(warning);};
waitUntil {GVAR(Radio)};

private _factionArray = parseSimpleArray EGVAR(Settings,vehicleFactions);
if !(_factionArray isEqualType []) exitWith {["Faction array have not been setup correctly.", "Vehicle"] call FUNC(error);};
if (!(faction _vehicle in _factionArray));

if (_vehicle iskindOf "MRAP_01_base_F") then {
    [_vehicle, [17]] call EFUNC(vehicle,setRadio);
};

if (_vehicle iskindOf "rhsusf_fmtv_base") then {
};

if (_vehicle iskindOf "rhsusf_stryker_base") then {
    [_vehicle, [4]] call EFUNC(vehicle,setRadio);
};

if (_vehicle iskindOf "RHS_M2A2_Base") then {
    [_vehicle, [5]] call EFUNC(vehicle,setRadio);
};

if (_vehicle iskindOf "rhsusf_m1a1tank_base") then {
    [_vehicle, [6]] call EFUNC(vehicle,setRadio);
};

if (_vehicle iskindOf "RHS_MELB_base") then {
};

if (_vehicle iskindOf "RHS_UH60_Base") then {
    [_vehicle, [2, 14]] call EFUNC(vehicle,setRadio);
};

if (_vehicle iskindOf "RHS_CH_47F_base") then {
    [_vehicle, [2, 14]] call EFUNC(vehicle,setRadio);
};

if (_vehicle iskindOf "RHS_AH64_base") then {
    [_vehicle, [12]] call EFUNC(vehicle,setRadio);
};

if (_vehicle iskindOf "RHS_C130J_Base") then {
    [_vehicle, [2, 14]] call EFUNC(vehicle,setRadio);
};

if (_vehicle iskindOf "Plane_Fighter_03_base_F") then {
    [_vehicle, [2, 14]] call EFUNC(vehicle,setRadio);
};

if (_vehicle iskindOf "Plane_CAS_01_base_F") then {
    [_vehicle, [13, 14]] call EFUNC(vehicle,setRadio);
};

_vehicle setVariable [QEGVAR(Vehicle,Radio), true];