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
if (!isNil{_vehicle getVariable QEGVAR(Vehicle,Functions)}) exitWith {SHOW_WARNING_1("Vehicle", "Vehicle functions already applied for %1." _vehicle);};

INFO_1("Vehicle","Applying vehicle functions to %1.", _vehicle);

private _vehicleType = _vehicle getVariable [QEGVAR(Vehicle,Type), typeOf _vehicle];

_vehicle setVariable [QEGVAR(Vehicle,Functions), true, true];


// Jump and get out systems universal for all airframes and non nato factions.
if (_vehicle iskindOf "Heli_Transport_01_base_F") then {
    [_vehicle] call FUNC(addGetOutHelo);
    [_vehicle] call FUNC(addEscapeWreck);
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
    [_vehicle] call FUNC(addEscapeWreck);
};
if (_vehicle iskindOf "RHS_UH1_Base") then {
    [_vehicle] call FUNC(addGetOutHelo);
    [_vehicle] call FUNC(addEscapeWreck);
};

if (_vehicle iskindOf "RHS_Mi24_base") then {
    [_vehicle] call FUNC(addGetOutHelo);
    [_vehicle] call FUNC(addLineJump);
    [_vehicle] call FUNC(addEscapeWreck);
};

if (_vehicle iskindOf "RHS_Mi8_base") then {
    [_vehicle] call FUNC(addLineJump);
    [_vehicle] call FUNC(addEscapeWreck);
};

if (_vehicle iskindOf "Heli_Transport_02_base_F") then {
    [_vehicle] call FUNC(addLineJump);
    [_vehicle] call FUNC(addEscapeWreck);
};

if (_vehicle iskindOf "RHS_C130J_Base") then {
    [_vehicle] call FUNC(addLineJump);
    [_vehicle] call FUNC(addHaloJump);
    [_vehicle] call FUNC(addEscapeWreck);
};

if (_vehicle iskindOf "USAF_C130J") then {
    [_vehicle] call FUNC(addLineJump);
    [_vehicle] call FUNC(addHaloJump);
    [_vehicle] call FUNC(addEscapeWreck);
};

if (_vehicle iskindOf "USAF_C17") then {
    [_vehicle] call FUNC(addLineJump);
    [_vehicle] call FUNC(addHaloJump);
    [_vehicle] call FUNC(addEscapeWreck);
};

if ((_vehicle isKindOf "USAF_F22_Heavy") || (_vehicle isKindOf "USAF_F35A") || (_vehicle isKindOf "USAF_A10")) then {
    [_vehicle] call FUNC(addEscapeWreck);
};

if (_vehicle iskindOf "vtx_MH60M") then {
    [_vehicle] call FUNC(addGetOutHelo);
    [_vehicle] call FUNC(addEscapeWreck);
};



// Below functions only gets applied to approved factions
if (!(_vehicle call FUNC(isValidFaction))) exitWith {};

if (_vehicle iskindOf "MRAP_01_base_F") then {
    [_vehicle, 4, 40, false, false] call FUNC(setCargoAttributes);
    switch (_vehicleType) do {
        case "rhsusf_m998_d_2dr_fulltop";
        case "rhsusf_m998_w_2dr_fulltop";
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


if (_vehicle iskindOf "I_APC_Wheeled_03_cannon_F") then {
    [_vehicle] call EFUNC(vehicle,addFlagAction);

    switch (_vehicleType) do {
        case "cav_dragoon_Unarmed_WD";
        case "cav_dragoon_Unarmed_A";
        case "cav_dragoon_Unarmed_D";
        case "MED": {_vehicle setVariable ["ace_medical_isMedicalVehicle", true, true];};
        default {};
    };
};

if (_vehicle iskindOf "rhsusf_stryker_base") then {
    switch (_vehicleType) do {
        case "rhsusf_stryker_m1126_m2_d";
        case "rhsusf_stryker_m1126_m2_wd";
        case "MED": {_vehicle setVariable ["ace_medical_isMedicalVehicle", true, true];};
        default {};
    };
};
