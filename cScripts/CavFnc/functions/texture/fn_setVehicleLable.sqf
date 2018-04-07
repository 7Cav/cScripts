/*
 * Author: CPL.Brostrom.A
 * This function attaches a predefined lable to a predefined location on a given vehicle.
 * Supported vehciles; Black Hawks, STRYKER
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
    private _strykerLable = ["stryker"] call FUNC(getVehicleLable);

    [_vehicle,[0.420521,3.50066,1.35656],180,_strykerLable] call FUNC(createVehicleLable);

};
