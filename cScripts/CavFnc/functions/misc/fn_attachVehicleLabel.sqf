/*
 * Author: CPL.Brostrom.A 
 * This function creates and attach a lable on a given vehicle.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 * 1: Texture <STRING> [For BlackHawk; b1,b2,b3,b4]
 *
 * Example:
 * [this] call cScripts_fnc_attachVehicleLabel;
 * [this,"B1"] call cScripts_fnc_attachVehicleLabel;
 */

#include "..\script_component.hpp";

if (!isServer) exitWith {};
params [["_vehicle", objNull, [objNull]],"_texture"];

_VehicleTypeStriker = [
    "M1126_ICV_M134_DG1_NOSLATDES",
    "M1126_ICV_M134_DG1_NOSLATWOOD",
    "M1126_ICV_M2_DG1_NOSLATDES",
    "M1126_ICV_M2_DG1_NOSLATWOOD",
    "M1126_ICV_M2NEST_DG1_NOSLATWOOD",
    "M1126_ICV_M2NEST_DG1_NOSLATDES",
    "M1126_ICV_mk19_DG1_NOSLATWOOD",
    "M1126_ICV_mk19_DG1_NOSLATDES",
    "M1128_MGS_DG1_NOSLATWOOD",
    "M1126_ICV_mk19_DG1_NOSLATDES",
    "M1128_MGS_DG1_NOSLATWOOD",
    "M1128_MGS_DG1_NOSLATDES",
    "M1129_MC_DG1_NOSLATWOOD",
    "M1129_MC_DG1_NOSLATDES",
    "M1130_CV_DG1_NOSLATWOOD",
    "M1130_CV_DG1_NOSLATDES",
    "M1133_MEV_DG1_NOSLATWOOD",
    "M1135_ATGMV_DG1_NOSLATWOOD",
    "M1133_MEV_DG1_NOSLATDES",
    "M1135_ATGMV_DG1_NOSLATDES"
];
if (typeOf _vehicle in _VehicleTypeStriker) then {
    _logo = "UserTexture1m_F" createVehicle [0,0,0];
    _logo attachTo [_vehicle,[0.420521,3.50066,1.35656]];
    _logo setDir 180;
    _logo setObjectTextureGlobal [0, "cScripts\Data\Vehicles\Lable\strikerLable.paa"];
};


_VehicleTypeUH60 = [
    "RHS_UH60M_d",
    "RHS_UH60M_MEV2_d",
    "RHS_UH60M_MEV_d",
    "RHS_UH60M",
    "RHS_UH60M_MEV2",
    "RHS_UH60M_MEV"
];
if (typeOf _vehicle in _VehicleTypeUH60) then {
    [_vehicle,_texture] call FUNC(UH60TailNumber);
};

