/*
 * Author: CPL.Brostrom.A 
 * This function creates and attach a lable on a given vehicle.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_attachVehicleLabel;
 * [this] call cScripts_fnc_attachVehicleLabel;
 */

if (!isServer) exitWith {};
params [["_vehicle", objNull, [objNull]]];

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