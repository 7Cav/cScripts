#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function changes the inventory of the given vehicle.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Return Value:
 * nothing
 *
 * Example:
 * [_vehicle] call cScripts_fnc_vehicle_addRadio;
 *
 * Public: No
 */

params [["_vehicle", objNull, [objNull]]];

if (!isServer) exitWith {};
if (!EGVAR(Patches,usesACRE) && !EGVAR(Patches,usesTFAR)) exitWith {};
if (!EGVAR(Settings,enableRadios)) exitWith {};
if (!EGVAR(Settings,enableVehicleRadios)) exitWith {};

if (!isMultiplayer) exitWith {SHOW_WARNING_2("VehicleRadio", "Vehicle rack initialisation for %1 [%2] is stopped due to being in a SP environment.", _vehicle, typeOf _vehicle);};

if (!isNil{_vehicle getVariable QEGVAR(VehicleFunc,Radio);}) exitWith {SHOW_WARNING_2("VehicleRadio", "Vehicle radios already applied for %1 [%2].", _vehicle, typeOf _vehicle);};
if (!(_vehicle call FUNC(isValidFaction))) exitWith {};

// If ACRE wait for init
if (EGVAR(patches,usesACRE)) then { waitUntil {GVAR(Radio) && [] call acre_api_fnc_isInitialized}; };

INFO_2("VehicleRadio", "Applying vehicle radios to %1 (%2)", _vehicle, typeOf _vehicle);

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

_vehicle setVariable [QEGVAR(VehicleFunc,Radio), true, true];