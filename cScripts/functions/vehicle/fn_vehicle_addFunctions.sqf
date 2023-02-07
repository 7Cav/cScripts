#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function apply functions to vehicles.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Example:
 * ["vic"] call cScripts_fnc_vehicle_addFunctions
 */

params [["_vehicle", objNull, [objNull]]];

if (_vehicle iskindOf "man") exitWith {};
if (!isNil{_vehicle getVariable QEGVAR(Vehicle,Functions)}) exitWith {[formatText["Vehicle functions already applied for %1.", _vehicle]] call FUNC(warning);};

private _vehicleType = _vehicle getVariable [QEGVAR(Vehicle,Type), typeOf _vehicle];

#ifdef DEBUG_MODE
    [formatText["Applying vehicle functions to %1.", _vehicle]] call FUNC(info);
#endif

if (_vehicle iskindOf "Heli_Transport_01_base_F") then {
    [_vehicle] call FUNC(addGetOutHelo);
};
if (_vehicle iskindOf "RHS_UH60_Base") then {
    switch (_vehicleType) do {
        case "RHS_UH60M_MEV2_d";
        case "RHS_UH60M_MEV_d";
        case "RHS_UH60M_MEV2";
        case "RHS_UH60M_MEV";
        case "MED": {_vehicle setVariable ["ace_medical_isMedicalVehicle", true, true];};
        default {};
    };
};
if (_vehicle iskindOf "rhs_uh1h_base") then {
    [_vehicle] call FUNC(addGetOutHelo);
};
if (_vehicle iskindOf "RHS_UH1_Base") then {
    [_vehicle] call FUNC(addGetOutHelo);
};

if (_vehicle iskindOf "RHS_Mi24_base") then {
    [_vehicle] call FUNC(addGetOutHelo);
    [_vehicle] call FUNC(addLineJump);
};

if (_vehicle iskindOf "RHS_Mi8_base") then {
    [_vehicle] call FUNC(addLineJump);
};

if (_vehicle iskindOf "Heli_Transport_02_base_F") then {
    [_vehicle] call FUNC(addLineJump);
};

if (_vehicle iskindOf "RHS_C130J_Base") then {
    [_vehicle] call FUNC(addLineJump);
    [_vehicle] call FUNC(addHaloJump);
};

if (_vehicle iskindOf "USAF_C130J") then {
    [_vehicle] call FUNC(addLineJump);
    [_vehicle] call FUNC(addHaloJump);
};

if (_vehicle iskindOf "USAF_C17") then {
    [_vehicle] call FUNC(addLineJump);
    [_vehicle] call FUNC(addHaloJump);
};

if (_vehicle iskindOf "MRAP_01_base_F") then {
    [_vehicle, 4, 40, false, false] call FUNC(setCargoAttributes);
    switch (_vehicleType) do {
        case "MED": {_vehicle setVariable ["ace_medical_isMedicalVehicle", true, true];};
        default {};
    };
};

if (_vehicle iskindOf "Truck_01_base_F") then {
    switch (_vehicleType) do {
        case "rhsusf_M1230a1_usarmy_wd";
        case "rhsusf_M1230a1_usarmy_d";
        case "MED": {_vehicle setVariable ["ace_medical_isMedicalVehicle", true, true];};
        default {};
    };
};

if (_vehicle iskindOf "rhsusf_m1a1tank_base") then {
    [_vehicle] call EFUNC(vehicle,addFlagAction);
};

if (_vehicle iskindOf "rhsusf_stryker_base") then {
    switch (_vehicleType) do {
        case "MED": {_vehicle setVariable ["ace_medical_isMedicalVehicle", true, true];};
        default {};
    };
};

_vehicle setVariable [QEGVAR(Vehicle,Functions), true];