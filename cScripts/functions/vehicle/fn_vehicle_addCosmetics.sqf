#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function changes appearance for approved vehicles defined in the faction setting.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Return Value:
 * nothing
 *
 * Example:
 * [_vehicle] call cScripts_fnc_vehicle_addCosmetics;
 *
 * Public: No
 */

params [["_vehicle", objNull, [objNull]]];

if (!isNil{_vehicle getVariable QEGVAR(VehicleFunc,Cosmetics)}) exitWith {SHOW_WARNING_2("VehicleCosmetics", "Vehicle cosmetics already applied for %1 [%2].", _vehicle, typeOf _vehicle);};
if (!(_vehicle call FUNC(isValidFaction))) exitWith {};

INFO_2("VehicleCosmetics", "Applying vehicle cosmetics to %1 [%2].", _vehicle, typeOf _vehicle);

private _vehicleType = _vehicle getVariable [QEGVAR(Vehicle,Type), typeOf _vehicle];

private _textureMed = "\z\cav\addons\textures\data\vehicles\label\special\reddiamond_s_ca.paa";

if (_vehicle iskindOf "rhsusf_hmmwe_base") then { // MRAP_01_base_F
    _vehicle setVariable ["RHS_Decal_Enabled", false, true];

    _vehicle animateSource ["iff_hide", 1, true];
    _vehicle animateSource ["hide_CIP", 1, true];
    _vehicle animateSource ["snorkel_lower", 1, true];
    _vehicle animateSource ["Hide_A2Bumper", 1, true];

    switch (_vehicleType) do {
        case "rhsusf_m998_w_2dr_fulltop";
        case "rhsusf_m998_d_2dr_fulltop";
        case "MED": {
            [_vehicle, [-1.1,-0.28,-0.91] , false, _textureMed, [[1,0,0], [0,0,1]]] call FUNC(createVehicleLable);
            [_vehicle, [1.1,-0.28,-0.91] , false, _textureMed, [[-1,0,0], [0,0,1]]] call FUNC(createVehicleLable);
        };
        default {};
    };
};

if (_vehicle iskindOf "rhsusf_m1151_base") then { // MRAP_01_base_F
    _vehicle setVariable ["RHS_Decal_Enabled", false, true];

    _vehicle animateSource ["snorkel_lower", 1, true];
    _vehicle animateSource ["iff_hide", 1, true];
    _vehicle animateSource ["dwf_kit_Hide", 1, true];
};

if (_vehicle iskindOf "rhsusf_m1152_base") then { // MRAP_01_base_F
    _vehicle setVariable ["RHS_Decal_Enabled", false, true];

    _vehicle animateSource ["snorkel_lower", 1, true];
    _vehicle animateSource ["iff_hide", 1, true];
    _vehicle animateSource ["dwf_kit_Hide", 1, true];
};

if (_vehicle iskindOf "rhsusf_fmtv_base") then {
    _vehicle setVariable ["RHS_Decal_Enabled", false, true];
};


if (_vehicle isKindOf "cav_dragoon_base_F") then {
    // Animate slat armor and camo nets
    _vehicle animateSource ["showCamonetHull",0, true];
    _vehicle animateSource ["showBags",0, true];
    _vehicle animateSource ["showBags2",1, true];
    _vehicle animateSource ["showTools",1, true];
    _vehicle animateSource ["showSLATHull",0, true];
};

if (_vehicle iskindOf "rhsusf_stryker_base") then {
    _vehicle setVariable ["RHS_Decal_Enabled", false, true];
    _vehicle animateSource ["Hide_CIP", 1, true];
    switch (_vehicleType) do {
        case "rhsusf_stryker_m1126_m2_d";
        case "rhsusf_stryker_m1126_m2_wd"; 
        case "MED": {
            [_vehicle, [-0.98,-1.32,-0.42] , false, _textureMed, [[1,0,-0.145], [1,0,0]]] call FUNC(createVehicleLable);
            [_vehicle, [1.666,-1.32,-0.42] , false, _textureMed, [[-1,0,-0.152], [0,0,1]]] call FUNC(createVehicleLable);
        };
        default {};
    };
    [_vehicle, [
        [12, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\1_ca.paa"],
        [13, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"],
        [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\B_ca.paa"],
        [15, ""]
    ]] call EFUNC(vehicle,applyTextures);
};

if (_vehicle iskindOf "RHS_M2A2_Base") then {
    _vehicle setVariable ["RHS_Decal_Enabled", false, true];
};

if (_vehicle iskindOf "RHS_MELB_base") then {
    _vehicle setVariable ["RHS_Decal_Enabled", false, true];
};

if (_vehicle iskindOf "rhsusf_m1a1tank_base") then {
    _vehicle setVariable ["RHS_Decal_Enabled", false, true];

    [{
        (_this select 0) animateSource ["Miles_Hide", 1, true];
        (_this select 0) animateSource ["IFF_Panels_Hide", 1, true];
    }, [_vehicle]] call CBA_fnc_execNextFrame;

    switch (_vehicle getVariable [QEGVAR(Vehicle,Callsign), 0]) do {
        case 1: {
            [_vehicle, [
                [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\1_ca.paa"],
                [12, "\z\cav\addons\textures\data\vehicles\abrams\BarrelArt_120mmIV_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), 1, true];
            _vehicle setVariable [QEGVAR(Vehicle,Name), "SABRE-1", true];
        };
        case 2: {
            [_vehicle, [
                [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\2_ca.paa"],
                [12, "\z\cav\addons\textures\data\vehicles\abrams\BarrelArt_BountyHunters_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), 2, true];
            _vehicle setVariable [QEGVAR(Vehicle,Name), "SABRE-2", true];
        };
        case 3: {
            [_vehicle, [
                [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\3_ca.paa"],
                [12, "\z\cav\addons\textures\data\vehicles\abrams\BarrelArt_IronCladLads_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), 3, true];
            _vehicle setVariable [QEGVAR(Vehicle,Name), "SABRE-3", true];
        };
        case 4: {
            [_vehicle, [
                [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\4_ca.paa"],
                [12, "\z\cav\addons\textures\data\vehicles\abrams\BarrelArt_WarSaw_ca.paa"]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), 4, true];
            _vehicle setVariable [QEGVAR(Vehicle,Name), "SABRE-4", true];
        };
        case -1: {
            [_vehicle, [
                [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\1_ca.paa"],
                [12, ""]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), -1, true];
            _vehicle setVariable [QEGVAR(Vehicle,Name), "SABRE-1", true];
        };
        case -2: {
            [_vehicle, [
                [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\2_ca.paa"],
                [12, ""]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), -2, true];
            _vehicle setVariable [QEGVAR(Vehicle,Name), "SABRE-2", true];
        };
        case -3: {
            [_vehicle, [
                [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\3_ca.paa"],
                [12, ""]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), -3, true];
            _vehicle setVariable [QEGVAR(Vehicle,Name), "SABRE-3", true];
        };
        case -4: {
            [_vehicle, [
                [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\4_ca.paa"],
                [12, ""]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), -4, true];
            _vehicle setVariable [QEGVAR(Vehicle,Name), "SABRE-4", true];
        };
        default {
            [_vehicle, [
                [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\0_ca.paa"],
                [12, ""]
            ]] call EFUNC(vehicle,applyTextures);
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), 0, true];
            _vehicle setVariable [QEGVAR(Vehicle,Name), "", true];
        };
    };
};

if (_vehicle iskindOf "RHS_UH60_Base") then {
};

if (_vehicle iskindOf "RHS_CH_47F_base") then {
};

if (_vehicle iskindOf "RHS_AH64_base") then {
};

if (_vehicle iskindOf "rhs_m2staticmg_base") then {
};

if (_vehicle iskindOf "RHS_MK19_TriPod_base") then {
};

if (_vehicle iskindOf "RHS_TOW_TriPod_base") then {
};

if (_vehicle iskindOf "NDS_M224_mortar_base") then {
};

if (_vehicle iskindOf "RHS_C130J_Base") then {
};

_vehicle setPlateNumber "1/7 Cav";

// Add eventHandlers to handle death and deletion.
_vehicle addEventHandler ["Killed", {
    params["_vehicle"];
    private _labels = _vehicle getVariable [QEGVAR(Vehicle,Labels), []];
    if (count _labels != 0) then {
        {deleteVehicle _x} forEach _labels;
    };
}];
_vehicle addEventHandler ["Deleted", {
    params["_vehicle"];
    private _labels = _vehicle getVariable [QEGVAR(Vehicle,Labels), []];
    if (count _labels != 0) then {
        {deleteVehicle _x} forEach _labels;
    };
}];

_vehicle setVariable [QEGVAR(VehicleFunc,Cosmetics), true, true];
