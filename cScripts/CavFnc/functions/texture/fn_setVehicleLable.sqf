/*
 * Author: CPL.Brostrom.A
 * This function attaches a predefined lable to a predefined location on a given vehicle.
 * Supported vehicles; UH60 Black Hawks, STRYKER, M1A1 Abrams, M2/M3 Bradley,
 *
 * Arguments:
 * 0: Vehicles <OBJECT>
 * 1: Texture <STRING> (Optional)
 * 2: Texture <STRING> (Optional)
 * 3: Texture <STRING> (Optional)
 * 4: Texture <STRING> (Optional)
 * 5: Texture <STRING> (Optional)
 * 6: Texture <STRING> (Optional)
 * 7: Texture <STRING> (Optional)
 * 8: Texture <STRING> (Optional)
 * 9: Texture <STRING> (Optional)
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [this] call cScripts_fnc_setVehicleLable
 * [this,"B","5"] call cScripts_fnc_setVehicleLable
 * [this,"RedCross"] call cScripts_fnc_setVehicleLable
 * [this,"RedCross",RedCross,"S","6"] call cScripts_fnc_setVehicleLable
 *
 * Public: Yes
 */

#include "..\script_component.hpp";

params [
    ["_vehicle", objNull, [objNull]],
    ["_lable1", ""],
    ["_lable2", ""],
    ["_lable3", ""],
    ["_lable4", ""],
    ["_lable5", ""],
    ["_lable6", ""],
    ["_lable7", ""],
    ["_lable8", ""],
    ["_lable9", ""]
];

if (!isServer) exitWith {};

private _lableTexture1 = [_lable1] call FUNC(getVehicleLable);
private _lableTexture2 = [_lable2] call FUNC(getVehicleLable);
private _lableTexture3 = [_lable3] call FUNC(getVehicleLable);
private _lableTexture4 = [_lable4] call FUNC(getVehicleLable);
private _lableTexture5 = [_lable5] call FUNC(getVehicleLable);
private _lableTexture6 = [_lable6] call FUNC(getVehicleLable);
private _lableTexture7 = [_lable7] call FUNC(getVehicleLable);
private _lableTexture8 = [_lable8] call FUNC(getVehicleLable);
private _lableTexture9 = [_lable9] call FUNC(getVehicleLable);

private _lableTextureLine = ["line"] call FUNC(getVehicleLable);


/*
 * UH-60 blackhawk
 * <LETTER and NUMBER> OR <CUSTOM>
 * Supporing letter and number combo ("B","1") OR 1 costum ("RedCross") on the tail.
 */
private _vehicleTypeUH60 = [
    "RHS_UH60M_d",
    "RHS_UH60M_MEV2_d",
    "RHS_UH60M_MEV_d",
    "RHS_UH60M",
    "RHS_UH60M_MEV2",
    "RHS_UH60M_MEV"
];

if (typeOf _vehicle in _vehicleTypeUH60) then {
    if (_lable1 != "") then { [_vehicle,[-0.49,-2.45,-1.3],87,_lableTexture1] call FUNC(createVehicleLable); };
    if (_lable1 != "" && (_lable2 != "")) then { [_vehicle,[-0.49,-2.45,-1.3],87,_lableTextureLine] call FUNC(createVehicleLable); };
    if (_lable2 != "") then { [_vehicle,[-0.49,-2.45,-1.3],87,_lableTexture2] call FUNC(createVehicleLable); };
    //if (_lable3 != "") then { [_vehicle,[-0.49,-2.45,-1.3],87,""] call FUNC(createVehicleLable); };

    if (_lable1 != "") then { [_vehicle,[0.49,-2.45,-1.3],-87,_lableTexture1] call FUNC(createVehicleLable); };
    if (_lable1 != "" && (_lable2 != "")) then { [_vehicle,[0.49,-2.45,-1.3],-87,_lableTextureLine] call FUNC(createVehicleLable); };
    if (_lable2 != "") then { [_vehicle,[0.49,-2.45,-1.3],-87,_lableTexture2] call FUNC(createVehicleLable); };
    //if (_lable3 != "") then { [_vehicle,[0.49,-2.45,-1.3],-87,""] call FUNC(createVehicleLable); };
};


/*
 * STRYKER
 *  <SPECIAL>
 *  Supporing 1 special lable on the front of the vehicle.
 */
private _vehicleTypeStriker = [
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

if (typeOf _vehicle in _vehicleTypeStriker) then {
    // Always added
    private _strykerLable = ["stryker"] call FUNC(getVehicleLable);
    [_vehicle,[0.420521,3.50066,1.35656],180,_strykerLable] call FUNC(createVehicleLable);

};

/*
 * M1A1 Abrams
 *  <SPECIAL>
 *  Supporing 1 special lable on the side of the vehicle.
 */
private _vehicleTypeAbrams = [
    "rhsusf_m1a1aimd_usarmy",
    "rhsusf_m1a1aim_tuski_d",
    "rhsusf_m1a2sep1d_usarmy",
    "rhsusf_m1a2sep1tuskid_usarmy",
    "rhsusf_m1a2sep1tuskiid_usarmy",
    "rhsusf_m1a1aimwd_usarmy",
    "rhsusf_m1a1aim_tuski_wd",
    "rhsusf_m1a2sep1wd_usarmy",
    "rhsusf_m1a2sep1tuskiwd_usarmy",
    "rhsusf_m1a2sep1tuskiiwd_usarmy",
    "rhsusf_m1a1fep_d",
    "rhsusf_m1a1fep_wd",
    "rhsusf_m1a1fep_od",
    "rhsusf_m1a1hc_wd"
];

if (typeOf _vehicle in _vehicleTypeAbrams) then {
    //Front
    if (_lable1 != "") then { [_vehicle,[-0.5,2.53,-0.64],180,_lableTexture1,[0,0.9,1]] call FUNC(createVehicleLable); };

    //Side
    if (_lable2 != "") then { [_vehicle,[-1.69787,-2.83845,-0.455],89.8278,_lableTexture2] call FUNC(createVehicleLable); };
    if (_lable2 != "") then { [_vehicle,[2.03401,-2.82751,-0.455],270.172,_lableTexture2] call FUNC(createVehicleLable); };
};

private _vehicleTypeBradly = [
    "RHS_M2A2",
    "RHS_M2A3",
    "RHS_M6",
    "RHS_M2A2_wd",
    "RHS_M2A3_wd",
    "RHS_M6_wd"
];

/*
 * M2/M3 Bradley
 *  <SPECIAL>
 *  Supporing 2 special lable on the front of the vehicle and side.
 */
if (typeOf _vehicle in _vehicleTypeBradly) then {
    //Side
    if (_lable1 != "") then { [_vehicle,[-1.61249,-1.0,0],90,_lableTexture1] call FUNC(createVehicleLable); };
    if (_lable1 != "") then { [_vehicle,[1.62437,-1.0,0],270,_lableTexture1] call FUNC(createVehicleLable); };
};

private _vehicleTypeBradlyBUSK = [
    "RHS_M2A2_BUSKI",
    "RHS_M2A3_BUSKI",
    "RHS_M2A2_BUSKI_WD",
    "RHS_M2A3_BUSKI_wd"
];
if (typeOf _vehicle in _vehicleTypeBradlyBUSK) then {
    //Side
    if (_lable1 != "") then { [_vehicle,[-1.864,-1.0,0],90,_lableTexture1] call FUNC(createVehicleLable); };
    if (_lable1 != "") then { [_vehicle,[1.878,-1.0,0],270,_lableTexture1] call FUNC(createVehicleLable); };
};

private _vehicleTypeBradlyBUSK3 = [
    "RHS_M2A3_BUSKIII",
    "RHS_M2A3_BUSKIII_wd"
];
if (typeOf _vehicle in _vehicleTypeBradlyBUSK3) then {
    //Side
    if (_lable1 != "") then { [_vehicle,[-1.964,-1.0,0],90,_lableTexture1] call FUNC(createVehicleLable); };
    if (_lable1 != "") then { [_vehicle,[1.968,-1.0,0],270,_lableTexture1] call FUNC(createVehicleLable); };
};
