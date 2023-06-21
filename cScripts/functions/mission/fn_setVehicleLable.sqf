#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function fetches a texture from the getVehicleLable texture list and apply it to a supported vechicle.
 *
 * Supported vehicles:
 *   C-130              3 PARMS     <LETTER and NUMBER> OR <SPECIAL>    (Locations: Tail)
 *   UH60 Black Hawks   2 PARMS     <LETTER and NUMBER> OR <SPECIAL>    (Locations: Tail)
 *   STRYKER            NONE        NONE                                (Locations: Front)
 *   MRAP               5 PARMS     <LETTER and NUMBER> OR <SPECIAL>    (Locations: Side)
 *   M1A1 Abrams        2 PARMS     <SPECIAL>                           (Locations: Front, Side)
 *   M2/M3 Bradley      1 PARMS     <SPECIAL>                           (Locations: Side)
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
 */

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

private _lableTexture1 = [toUpper(_lable1)] call FUNC(getVehicleLable);
private _lableTexture2 = [toUpper(_lable2)] call FUNC(getVehicleLable);
private _lableTexture3 = [toUpper(_lable3)] call FUNC(getVehicleLable);
private _lableTexture4 = [toUpper(_lable4)] call FUNC(getVehicleLable);
private _lableTexture5 = [toUpper(_lable5)] call FUNC(getVehicleLable);
private _lableTexture6 = [toUpper(_lable6)] call FUNC(getVehicleLable);
private _lableTexture7 = [toUpper(_lable7)] call FUNC(getVehicleLable);
private _lableTexture8 = [toUpper(_lable8)] call FUNC(getVehicleLable);
private _lableTexture9 = [toUpper(_lable9)] call FUNC(getVehicleLable);

private _lableTextureLine = ["LINE"] call FUNC(getVehicleLable);

if (_vehicle iskindOf "RHS_UH60_Base") then {
    if (_lable1 != "") then { [_vehicle,[-0.49,-2.45,-1.3],87,_lableTexture1] call FUNC(createVehicleLable); };
    if (_lable1 != "" && (_lable2 != "")) then { [_vehicle,[-0.49,-2.45,-1.3],87,_lableTextureLine] call FUNC(createVehicleLable); };
    if (_lable2 != "") then { [_vehicle,[-0.49,-2.45,-1.3],87,_lableTexture2] call FUNC(createVehicleLable); };
    //if (_lable3 != "") then { [_vehicle,[-0.49,-2.45,-1.3],87,""] call FUNC(createVehicleLable); };

    if (_lable1 != "") then { [_vehicle,[0.49,-2.45,-1.3],-87,_lableTexture1] call FUNC(createVehicleLable); };
    if (_lable1 != "" && (_lable2 != "")) then { [_vehicle,[0.49,-2.45,-1.3],-87,_lableTextureLine] call FUNC(createVehicleLable); };
    if (_lable2 != "") then { [_vehicle,[0.49,-2.45,-1.3],-87,_lableTexture2] call FUNC(createVehicleLable); };
    //if (_lable3 != "") then { [_vehicle,[0.49,-2.45,-1.3],-87,""] call FUNC(createVehicleLable); };
};

if (_vehicle iskindOf "RHS_C130J_Base") then {
    if (_lable1 != "") then { [_vehicle,[-0.205,-10.9,2.920],90,_lableTexture1,[0.05,0,1]] call FUNC(createVehicleLable); };
    if (_lable2 != "") then { [_vehicle,[-0.205,-11.4,2.920],90,_lableTexture2,[0.05,0,1]] call FUNC(createVehicleLable); };
    if (_lable3 != "") then { [_vehicle,[-0.205,-11.9,2.920],90,_lableTexture3,[0.05,0,1]] call FUNC(createVehicleLable); };

    if (_lable1 != "") then { [_vehicle,[0.205,-11.9,2.920],-90,_lableTexture1,[-0.05,0,1]] call FUNC(createVehicleLable); };
    if (_lable2 != "") then { [_vehicle,[0.205,-11.4,2.920],-90,_lableTexture2,[-0.05,0,1]] call FUNC(createVehicleLable); };
    if (_lable3 != "") then { [_vehicle,[0.205,-10.9,2.920],-90,_lableTexture3,[-0.05,0,1]] call FUNC(createVehicleLable); };
};

// MRAP
private _vehicleTypeMRAP = [
    "rhsusf_M1230_M2_usarmy_d",
    "rhsusf_M1230_MK19_usarmy_d",
    "rhsusf_M1230a1_usarmy_d",
    "rhsusf_M1237_M2_usarmy_d",
    "rhsusf_M1237_MK19_usarmy_d",
    "rhsusf_M1230_M2_usarmy_wd",
    "rhsusf_M1230_MK19_usarmy_wd",
    "rhsusf_M1230a1_usarmy_wd",
    "rhsusf_M1237_M2_usarmy_wd",
    "rhsusf_M1237_MK19_usarmy_wd"
];
if (typeOf _vehicle in _vehicleTypeMRAP) then {

    // Vic Lable
    if (_lable1 != "" || _lable3 == "") then { [_vehicle,[-1.627,-1.32,-1.25],90,_lableTexture1] call FUNC(createVehicleLable); };
    if (_lable1 != "" || _lable3 == "") then { [_vehicle,[1.494,-1.32,-1.25],-90,_lableTexture1] call FUNC(createVehicleLable); };

    // Number Lables (NOTE: Will be ontop of the vic lable as well)
    if (_lable2 != "") then { [_vehicle,[-1.627,-1.9,-1.25],90,_lableTexture5] call FUNC(createVehicleLable); };
    if (_lable3 != "") then { [_vehicle,[-1.627,-1.32,-1.25],90,_lableTexture4] call FUNC(createVehicleLable); };
    if (_lable4 != "") then { [_vehicle,[-1.627,-0.8,-1.25],90,_lableTexture3] call FUNC(createVehicleLable); };
    if (_lable5 != "") then { [_vehicle,[-1.627,-0.269,-1.25],90,_lableTexture2] call FUNC(createVehicleLable); };

    if (_lable5 != "") then { [_vehicle,[1.494,-1.9,-1.25],-90,_lableTexture2] call FUNC(createVehicleLable); };
    if (_lable4 != "") then { [_vehicle,[1.494,-1.32,-1.25],-90,_lableTexture3] call FUNC(createVehicleLable); };
    if (_lable3 != "") then { [_vehicle,[1.494,-0.8,-1.25],-90,_lableTexture4] call FUNC(createVehicleLable); };
    if (_lable2 != "") then { [_vehicle,[1.494,-0.269,-1.25],-90,_lableTexture5] call FUNC(createVehicleLable); };
};

// STRYKER
if (_vehicle iskindOf "rhsusf_stryker_base") then {
    
};

if (_vehicle iskindOf "rhsusf_m1a1tank_base") then {
    //Front
    if (_lable1 != "") then { [_vehicle,[-0.5,2.53,-0.64],180,_lableTexture1,[0,0.9,1]] call FUNC(createVehicleLable); };

    //Side
    if (_lable2 != "") then { [_vehicle,[-1.69787,-2.83845,-0.455],89.8278,_lableTexture2] call FUNC(createVehicleLable); };
    if (_lable2 != "") then { [_vehicle,[2.03401,-2.82751,-0.455],270.172,_lableTexture2] call FUNC(createVehicleLable); };
};




// M2/M3 Bradley
private _vehicleTypeBradly = [
    "RHS_M2A2",
    "RHS_M2A3",
    "RHS_M6",
    "RHS_M2A2_wd",
    "RHS_M2A3_wd",
    "RHS_M6_wd"
];
private _vehicleTypeBradlyBUSK = [
    "RHS_M2A2_BUSKI",
    "RHS_M2A3_BUSKI",
    "RHS_M2A2_BUSKI_WD",
    "RHS_M2A3_BUSKI_wd"
];
private _vehicleTypeBradlyBUSK3 = [
    "RHS_M2A3_BUSKIII",
    "RHS_M2A3_BUSKIII_wd"
];
if (typeOf _vehicle in _vehicleTypeBradly) then {
    //Side
    if (_lable1 != "") then { [_vehicle,[-1.61249,-1.0,0],90,_lableTexture1] call FUNC(createVehicleLable); };
    if (_lable1 != "") then { [_vehicle,[1.62437,-1.0,0],270,_lableTexture1] call FUNC(createVehicleLable); };
};
if (typeOf _vehicle in _vehicleTypeBradlyBUSK) then {
    //Side
    if (_lable1 != "") then { [_vehicle,[-1.864,-1.0,0],90,_lableTexture1] call FUNC(createVehicleLable); };
    if (_lable1 != "") then { [_vehicle,[1.878,-1.0,0],270,_lableTexture1] call FUNC(createVehicleLable); };
};
if (typeOf _vehicle in _vehicleTypeBradlyBUSK3) then {
    //Side
    if (_lable1 != "") then { [_vehicle,[-1.964,-1.0,0],90,_lableTexture1] call FUNC(createVehicleLable); };
    if (_lable1 != "") then { [_vehicle,[1.968,-1.0,0],270,_lableTexture1] call FUNC(createVehicleLable); };
};