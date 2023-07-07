#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function changes the inventory of the given vehicle.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * ["vic"] call cScripts_fnc_vehicle_addRadio;
 *
 * Public: No
 */

params [["_vehicle", objNull, [objNull]]];

if (!isServer) exitWith {};
if (!EGVAR(Patches,ACRE) && !EGVAR(Patches,TFAR)) exitWith {};
if (!EGVAR(Settings,enableRadios)) exitWith {};
if (!EGVAR(Settings,enableVehicleRadios)) exitWith {};

if (_vehicle iskindOf "man") exitWith {};
if (!isMultiplayer) exitWith { [format["Vehicle rack initzialized for %1 (%2) is stopped due to being in a SP enviroment.", _vehicle, typeOf _vehicle], "Vehicle Radio"] call FUNC(warning); };
if (!isNil {_vehicle getVariable QEGVAR(Vehicle,Radio);}) exitWith {[format["Vehicle Radio already applied for %1.", _vehicle], "Vehicle Radio"] call FUNC(warning);};

if (!(_vehicle call FUNC(isValidFaction))) exitWith {};

if (EGVAR(patches,usesACRE)) then { waitUntil {GVAR(Radio) && [] call acre_api_fnc_isInitialized}; };

// FIXME
// Add code to handle channel selection THO i think TFAR and ACRE have similar setup here.

if (_vehicle iskindOf "MRAP_01_base_F") then {
    switch (_vehicleType) do {
        case "rhsusf_m998_d_2dr_fulltop";
        case "rhsusf_m998_w_2dr_fulltop";
        case "MED": {
            [_vehicle, [6]] call EFUNC(vehicle,setRadio);
        };
        default {
            [_vehicle, [4]] call EFUNC(vehicle,setRadio);
        };
    };
};

if (_vehicle iskindOf "rhsusf_fmtv_base") then {
};

if (_vehicle iskindOf "Truck_01_base_F") then {
    switch (_vehicleType) do {
        case "rhsusf_M1230a1_usarmy_wd";
        case "rhsusf_M1230a1_usarmy_d";
        case "MED": {
            [_vehicle, [6]] call EFUNC(vehicle,setRadio);
        };
        default {
            [_vehicle, [4]] call EFUNC(vehicle,setRadio);
        };
    };
};

if (_vehicle iskindOf "rhsusf_stryker_base") then {
    switch (_vehicleType) do {
        case "rhsusf_stryker_m1126_m2_d";
        case "rhsusf_stryker_m1126_m2_wd";
        case "MED": {
            [_vehicle, [6]] call EFUNC(vehicle,setRadio);
        };
        default {
            [_vehicle, [3]] call EFUNC(vehicle,setRadio);
        };
    };
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
    [_vehicle, [2, 9]] call EFUNC(vehicle,setRadio);
};

if (_vehicle iskindOf "RHS_CH_47F_base") then {
    [_vehicle, [2, 9]] call EFUNC(vehicle,setRadio);
};

if (_vehicle iskindOf "RHS_AH64_base") then {
    [_vehicle, [8]] call EFUNC(vehicle,setRadio);
};

if (_vehicle iskindOf "RHS_C130J_Base") then {
    [_vehicle, [2, 9]] call EFUNC(vehicle,setRadio);
};

if (_vehicle iskindOf "Plane_Fighter_03_base_F") then {
    [_vehicle, [2, 8]] call EFUNC(vehicle,setRadio);
};

if (_vehicle iskindOf "Plane_CAS_01_base_F") then {
    [_vehicle, [2, 8]] call EFUNC(vehicle,setRadio);
};

_vehicle setVariable [QEGVAR(Vehicle,Radio), true, true];