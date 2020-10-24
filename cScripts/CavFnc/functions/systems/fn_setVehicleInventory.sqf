#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function changes the inventory of defined vehicles.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Example:
 * ["vic"] call cScripts_fnc_setVehicleInventory;
 */

params [["_vehicle", objNull, [objNull]]];

if (didJIP) exitWith {};
if (!isServer) exitWith {};
if (!isNil {_vehicle getVariable QEGVAR(Vehicle,Inventory);}) exitWith {[formatText["Vehicle inventory already applied for %1.", _vehicle]] call FUNC(logWarning);};

private _useAceRopes = if (!isNil {ace_fastroping_requireRopeItems}) then {ace_fastroping_requireRopeItems} else {false};

// Cars and similar vehicles
private _transport_lite_armed = [
    "rhsusf_m1025_w_m2", "rhsusf_m1025_w_mk19", "rhsusf_m1043_w_m2", "rhsusf_m1043_w_mk19", "rhsusf_m1045_w", "rhsusf_m966_w", 
    "rhsusf_m1025_d_m2", "rhsusf_m1025_d_Mk19", "rhsusf_m1043_d_m2", "rhsusf_m1043_d_mk19", "rhsusf_m1045_d", "rhsusf_m966_d", 

    "rhsusf_m1151_m2crows_usarmy_wd", "rhsusf_m1151_mk19crows_usarmy_wd", "rhsusf_m1151_m240_v1_usarmy_wd", "rhsusf_m1151_mk19_v1_usarmy_wd", "rhsusf_m1151_m2_v2_usarmy_wd", "rhsusf_m1151_m240_v2_usarmy_wd", "rhsusf_m1151_mk19_v2_usarmy_wd", 
    "rhsusf_m1151_m2crows_usarmy_d", "rhsusf_m1151_mk19crows_usarmy_d", "rhsusf_m1151_m2_v1_usarmy_d", "rhsusf_m1151_m2_lras3_v1_usarmy_d", "rhsusf_m1151_m240_v1_usarmy_d", "rhsusf_m1151_mk19_v1_usarmy_d", "rhsusf_m1151_m2_v2_usarmy_d", "rhsusf_m1151_m240_v2_usarmy_d", "rhsusf_m1151_mk19_v2_usarmy_d", "rhsusf_m1151_mk19_v2_usarmy_d"
];
private _transport_lite = [
    "rhsusf_m1151_usarmy_wd", "rhsusf_m1152_usarmy_wd", "rhsusf_m1165_usarmy_wd", 
    "rhsusf_m1151_usarmy_d", "rhsusf_m1152_usarmy_d", "rhsusf_m1165_usarmy_d", 

    "rhsusf_m1025_w", "rhsusf_m1043_w", "rhsusf_m998_w_2dr_fulltop", "rhsusf_m998_w_2dr_halftop", "rhsusf_m998_w_2dr", "rhsusf_m998_w_4dr_halftop", "rhsusf_m998_w_4dr", 
    "rhsusf_m1025_d", "rhsusf_m1043_d", "rhsusf_m998_d_2dr_fulltop", "rhsusf_m998_d_2dr_halftop", "rhsusf_m998_d_2dr", "rhsusf_m998_d_4dr_halftop", "rhsusf_m998_d_4dr"
];
private _transport_lite_empty = [
    "rhsusf_m998_w_4dr_fulltop",
    "rhsusf_m998_d_4dr_fulltop",

    "rhsusf_mrzr4_d", "rhsusf_mrzr4_d_mud",
    "rhsusf_mrzr4_w", "rhsusf_mrzr4_w_mud",

    "rhsusf_m1152_sicps_usarmy_wd",
    "rhsusf_m1152_sicps_usarmy_d"
];
// MRAP
private _transport_medium_armed = [
    "rhsusf_M1220_M153_M2_usarmy_d", "rhsusf_M1220_M153_MK19_usarmy_d", "rhsusf_M1220_M2_usarmy_d", "rhsusf_M1220_MK19_usarmy_d", "rhsusf_M1230_M2_usarmy_d", "rhsusf_M1230_MK19_usarmy_d", "rhsusf_M1232_M2_usarmy_d", "rhsusf_M1232_MK19_usarmy_d", "rhsusf_M1237_M2_usarmy_d", "rhsusf_M1237_MK19_usarmy_d", "rhsusf_m1240a1_m2_usarmy_d", "rhsusf_m1240a1_m240_usarmy_d", "rhsusf_m1240a1_mk19_usarmy_d", "rhsusf_m1240a1_m2_uik_usarmy_d", "rhsusf_m1240a1_m240_uik_usarmy_d", "rhsusf_m1240a1_mk19_uik_usarmy_d", "rhsusf_m1240a1_m2crows_usarmy_d", "rhsusf_m1240a1_mk19crows_usarmy_d", 
    "rhsusf_M1220_M153_M2_usarmy_wd", "rhsusf_M1220_M153_MK19_usarmy_wd", "rhsusf_M1220_M2_usarmy_wd", "rhsusf_M1220_MK19_usarmy_wd", "rhsusf_M1230_M2_usarmy_wd", "rhsusf_M1230_MK19_usarmy_wd", "rhsusf_M1232_M2_usarmy_wd", "rhsusf_M1232_MK19_usarmy_wd", "rhsusf_M1237_M2_usarmy_wd", "rhsusf_M1237_MK19_usarmy_wd", "rhsusf_m1240a1_m2_usarmy_wd", "rhsusf_m1240a1_m240_usarmy_wd", "rhsusf_m1240a1_mk19_usarmy_wd", "rhsusf_m1240a1_m2_uik_usarmy_wd", "rhsusf_m1240a1_m240_uik_usarmy_wd", "rhsusf_m1240a1_mk19_uik_usarmy_wd", "rhsusf_m1240a1_m2crows_usarmy_wd", "rhsusf_m1240a1_mk19crows_usarmy_wd",

    "rhsusf_m1245_m2crows_socom_d", "rhsusf_m1245_mk19crows_socom_d", "rhsusf_m1245_m2crows_socom_deploy", "rhsusf_m1245_mk19crows_socom_deploy"
];
private _transport_medium = [
    "rhsusf_M1220_usarmy_wd", "rhsusf_M1232_usarmy_wd", "rhsusf_m1240a1_usarmy_wd",
    "rhsusf_M1220_usarmy_d", "rhsusf_M1232_usarmy_d", "rhsusf_m1240a1_usarmy_d",
    "rhsusf_M1238A1_socom_d"
];
private _transport_medium_empty = [
];

// IFV APC
private _transport_heavy_armed = [
    "rhsusf_M1078A1P2_B_M2_D_fmtv_usarmy", "rhsusf_M1083A1P2_B_M2_D_fmtv_usarmy",
    "rhsusf_M1078A1P2_B_M2_WD_fmtv_usarmy","rhsusf_M1083A1P2_B_M2_WD_fmtv_usarmy",

    "rhsusf_M1117_W", "rhsusf_M1117_D", "rhsusf_M1117_O"
];
private _transport_heavy = [
    "rhsusf_M1078A1P2_D_fmtv_usarmy","rhsusf_M1078A1P2_B_D_fmtv_usarmy","rhsusf_M1083A1P2_D_fmtv_usarmy","rhsusf_M1083A1P2_B_D_fmtv_usarmy",
    "rhsusf_M1078A1P2_WD_fmtv_usarmy","rhsusf_M1078A1P2_B_WD_fmtv_usarmy","rhsusf_M1083A1P2_WD_fmtv_usarmy","rhsusf_M1083A1P2_B_WD_fmtv_usarmy"
];
private _transport_heavy_empty = [
    "rhsusf_M1078A1P2_B_D_CP_fmtv_usarmy",
    "rhsusf_M1078A1P2_B_WD_CP_fmtv_usarmy"
];


private _transport_rotary_small = [
    "RHS_MELB_MH6M", "RHS_MELB_H6M"
];
private _transport_rotary_medium = [
    "RHS_UH60M_d", "RHS_UH60M_ESSS_d", "RHS_UH60M_ESSS2_d", "RHS_UH60M2_d", "RHS_UH60M_ESSS", "RHS_UH60M_ESSS2", "RHS_UH60M_ESSS2", "RHS_UH60M2"
];
private _transport_rotary_big = [
    "RHS_CH_47F_10", "RHS_CH_47F_10_cargo", "RHS_CH_47F_light", "RHS_CH_47F"
];
private _transport_fixed_wing = [
    "RHS_C130J", "RHS_C130J_Cargo"
];

private _transport_armored = [
    "rhsusf_stryker_m1134_d", "rhsusf_stryker_m1132_m2_d", "rhsusf_stryker_m1132_m2_np_d", "rhsusf_stryker_m1127_m2_d", "rhsusf_stryker_m1126_mk19_d", "rhsusf_stryker_m1126_m2_d",
    "rhsusf_stryker_m1126_m2_wd", "rhsusf_stryker_m1126_mk19_wd", "rhsusf_stryker_m1127_m2_wd", "rhsusf_stryker_m1132_m2_np_wd", "rhsusf_stryker_m1132_m2_wd", "rhsusf_stryker_m1134_wd", 

    "rhsusf_m113d_usarmy", "rhsusf_m113d_usarmy_M240", "rhsusf_m113d_usarmy_MK19", "rhsusf_m113d_usarmy_unarmed",
    "rhsusf_m113_usarmy", "rhsusf_m113_usarmy_M2_90", "rhsusf_m113_usarmy_M240", "rhsusf_m113_usarmy_MK19", "rhsusf_m113_usarmy_MK19_90", "rhsusf_m113_usarmy_unarmed",



    "RHS_M2A2", "RHS_M2A2_BUSKI", "RHS_M2A3", "RHS_M2A3_BUSKI", "RHS_M2A3_BUSKIII", "RHS_M6",
    "RHS_M2A2_wd", "RHS_M2A2_BUSKI_WD", "RHS_M2A3_wd", "RHS_M2A3_BUSKI_wd", "RHS_M2A3_BUSKIII_wd", "RHS_M6_wd"
];

private _armor = [
    "rhsusf_m1a1aimwd_usarmy","rhsusf_m1a1aim_tuski_wd","rhsusf_m1a2sep1wd_usarmy","rhsusf_m1a2sep1tuskiwd_usarmy","rhsusf_m1a2sep1tuskiiwd_usarmy",
    "rhsusf_m1a1aimd_usarmy", "rhsusf_m1a1aim_tuski_d", "rhsusf_m1a2sep1d_usarmy", "rhsusf_m1a2sep1tuskid_usarmy", "rhsusf_m1a2sep1tuskiid_usarmy" 
];

private _logistical = [
    "rhsusf_m1152_rsv_usarmy_wd",
    "rhsusf_m1152_rsv_usarmy_d",

    "rhsusf_m113d_usarmy_supply",
    "rhsusf_m113_usarmy_supply",

    "rhsusf_M977A4_AMMO_usarmy_d", "rhsusf_M977A4_REPAIR_usarmy_d", "rhsusf_M977A4_AMMO_BKIT_usarmy_d", "rhsusf_M977A4_AMMO_BKIT_M2_usarmy_d", "rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_d", "rhsusf_M977A4_REPAIR_BKIT_usarmy_d",
    "rhsusf_M977A4_AMMO_usarmy_wd","rhsusf_M977A4_REPAIR_usarmy_wd","rhsusf_M977A4_AMMO_BKIT_usarmy_wd","rhsusf_M977A4_AMMO_BKIT_M2_usarmy_wd","rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_wd","rhsusf_M977A4_REPAIR_BKIT_usarmy_wd",

    "rhsusf_M1078A1R_SOV_M2_D_fmtv_socom",
    "rhsusf_M1239_M2_socom_d", "rhsusf_M1239_MK19_socom_d", "rhsusf_M1239_MK19_Deploy_socom_d", "rhsusf_M1239_M2_Deploy_socom_d"
];
private _logistical_flatbed = [
    "rhsusf_M1078A1P2_D_flatbed_fmtv_usarmy","rhsusf_M1078A1P2_B_D_flatbed_fmtv_usarmy","rhsusf_M1078A1P2_B_M2_D_flatbed_fmtv_usarmy","rhsusf_M1083A1P2_D_flatbed_fmtv_usarmy","rhsusf_M1083A1P2_B_D_flatbed_fmtv_usarmy","rhsusf_M1083A1P2_B_M2_D_flatbed_fmtv_usarmy","rhsusf_M1084A1P2_D_fmtv_usarmy","rhsusf_M1084A1P2_B_D_fmtv_usarmy","rhsusf_M1084A1P2_B_M2_D_fmtv_usarmy","rhsusf_M977A4_usarmy_d","rhsusf_M977A4_BKIT_usarmy_d","rhsusf_M977A4_BKIT_M2_usarmy_d",
    "rhsusf_M1078A1P2_WD_flatbed_fmtv_usarmy", "rhsusf_M1078A1P2_B_WD_flatbed_fmtv_usarmy", "rhsusf_M1078A1P2_B_M2_WD_flatbed_fmtv_usarmy", "rhsusf_M1083A1P2_WD_flatbed_fmtv_usarmy", "rhsusf_M1083A1P2_B_WD_flatbed_fmtv_usarmy", "rhsusf_M1083A1P2_B_M2_WD_flatbed_fmtv_usarmy", "rhsusf_M1084A1P2_WD_fmtv_usarmy", "rhsusf_M1084A1P2_B_WD_fmtv_usarmy", "rhsusf_M1084A1P2_B_M2_WD_fmtv_usarmy", "rhsusf_M977A4_usarmy_wd", "rhsusf_M977A4_BKIT_usarmy_wd", "rhsusf_M977A4_BKIT_M2_usarmy_wd",
    
    "rhsusf_M1084A1R_SOV_M2_D_fmtv_socom"
];
private _logistical_empty = [
    "rhsusf_M978A4_usarmy_d","rhsusf_M978A4_BKIT_usarmy_d",
    "rhsusf_M978A4_usarmy_wd", "rhsusf_M978A4_BKIT_usarmy_wd"
];

private _medical = [
    "rhsusf_M1085A1P2_B_D_Medical_fmtv_usarmy",
    "rhsusf_M1085A1P2_B_WD_Medical_fmtv_usarmy",

    "rhsusf_m113_usarmy_medical",
    "rhsusf_m113d_usarmy_medical",

    "rhsusf_M1230a1_usarmy_d",
    "rhsusf_M1230a1_usarmy_wd",

    "RHS_UH60M_MEV_d", "RHS_UH60M_MEV2_d", "RHS_UH60M_MEV2", "RHS_UH60M_MEV"
];

private _empty = [
    "RHS_AH64D", "RHS_AH64DGrey", "RHS_AH64D_wd",
    "RHS_MELB_AH6M"
];


private _allVehicles = [];
{ _allVehicles append _x } forEach [_armor, _logistical, _logistical_flatbed, _medical, _transport_armored, _transport_fixed_wing, _transport_heavy, _transport_heavy_armed, _transport_lite, _transport_lite_armed, _transport_medium, _transport_medium_armed, _transport_rotary_big, _transport_rotary_medium, _transport_rotary_small ];

private _allEmpty = [];
{ _allEmpty append _x } forEach [ _empty, _logistical_empty, _transport_heavy_empty, _transport_lite_empty, _transport_medium_empty ];

if (typeOf _vehicle in _allVehicles) then {
    #ifdef DEBUG_MODE
        [formatText["Added vehicle inventory to %1.", _vehicle]] call FUNC(logInfo);
    #endif
    clearweaponcargoGlobal _vehicle;
    clearmagazinecargoGlobal _vehicle;
    clearitemcargoGlobal _vehicle;
    clearbackpackcargoGlobal _vehicle;

    _vehicle addItemCargoGlobal ["Item_ToolKit"];
};


switch (true) do {
    case (typeOf _vehicle in _transport_lite_armed): {
        _vehicle addWeaponCargoGlobal ["rhs_weap_M136", 1];

        _vehicle addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 16];
        _vehicle addMagazineCargoGlobal ["rhsusf_200Rnd_556x45_box", 2];

        _vehicle addMagazineCargoGlobal ["SmokeShell", 8];
        _vehicle addMagazineCargoGlobal ["SmokeShellBlue", 2];
        _vehicle addMagazineCargoGlobal ["SmokeShellGreen", 2];

        _vehicle addItemCargoGlobal ["ACE_tourniquet", 2];
        _vehicle addItemCargoGlobal ["ACE_fieldDressing", 10];

        _vehicle addItemCargoGlobal ["ACE_wirecutter", 1];
    };
    case (typeOf _vehicle in _transport_lite): {
        _vehicle addWeaponCargoGlobal ["rhs_weap_M136", 2];

        _vehicle addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 20];
        _vehicle addMagazineCargoGlobal ["rhsusf_200Rnd_556x45_box", 4];

        _vehicle addMagazineCargoGlobal ["SmokeShell", 12];
        _vehicle addMagazineCargoGlobal ["SmokeShellBlue", 4];
        _vehicle addMagazineCargoGlobal ["SmokeShellGreen", 4];

        _vehicle addItemCargoGlobal ["ACE_tourniquet", 4];
        _vehicle addItemCargoGlobal ["ACE_fieldDressing", 20];

        _vehicle addItemCargoGlobal ["ACE_wirecutter", 1];
    };
    
    case (typeOf _vehicle in _transport_medium_armed): {
        _vehicle addWeaponCargoGlobal ["rhs_weap_M136", 2];

        _vehicle addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 20];
        _vehicle addMagazineCargoGlobal ["rhsusf_200Rnd_556x45_box", 4];

        _vehicle addMagazineCargoGlobal ["SmokeShell", 12];
        _vehicle addMagazineCargoGlobal ["SmokeShellBlue", 4];
        _vehicle addMagazineCargoGlobal ["SmokeShellGreen", 4];

        _vehicle addItemCargoGlobal ["ACE_tourniquet", 4];
        _vehicle addItemCargoGlobal ["ACE_fieldDressing", 20];

        _vehicle addItemCargoGlobal ["ACE_wirecutter", 1];
    };
    case (typeOf _vehicle in _transport_medium): {
        _vehicle addWeaponCargoGlobal ["rhs_weap_M136", 2];

        _vehicle addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 20];
        _vehicle addMagazineCargoGlobal ["rhsusf_200Rnd_556x45_box", 4];

        _vehicle addMagazineCargoGlobal ["SmokeShell", 12];
        _vehicle addMagazineCargoGlobal ["SmokeShellBlue", 4];
        _vehicle addMagazineCargoGlobal ["SmokeShellGreen", 4];

        _vehicle addItemCargoGlobal ["ACE_tourniquet", 4];
        _vehicle addItemCargoGlobal ["ACE_fieldDressing", 20];

        _vehicle addItemCargoGlobal ["ACE_wirecutter", 1];
    };

    case (typeOf _vehicle in _transport_heavy_armed): {
        _vehicle addWeaponCargoGlobal ["rhs_weap_M136", 1];

        _vehicle addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 16];
        _vehicle addMagazineCargoGlobal ["rhsusf_200Rnd_556x45_box", 2];

        _vehicle addMagazineCargoGlobal ["SmokeShell", 8];
        _vehicle addMagazineCargoGlobal ["SmokeShellBlue", 2];
        _vehicle addMagazineCargoGlobal ["SmokeShellGreen", 2];

        _vehicle addItemCargoGlobal ["ACE_tourniquet", 2];
        _vehicle addItemCargoGlobal ["ACE_fieldDressing", 10];

        _vehicle addItemCargoGlobal ["ACE_wirecutter", 1];


         if (_vehicle isKindOf "Car") then {
            ["ACE_Wheel", _vehicle] call ace_cargo_fnc_loadItem;
        } else {
            ["ACE_Track", _vehicle] call ace_cargo_fnc_loadItem;
        };

    };
    case (typeOf _vehicle in _transport_heavy): {
        _vehicle addWeaponCargoGlobal ["rhs_weap_M136", 2];

        _vehicle addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 20];
        _vehicle addMagazineCargoGlobal ["rhsusf_200Rnd_556x45_box", 4];

        _vehicle addMagazineCargoGlobal ["SmokeShell", 12];
        _vehicle addMagazineCargoGlobal ["SmokeShellBlue", 4];
        _vehicle addMagazineCargoGlobal ["SmokeShellGreen", 4];

        _vehicle addItemCargoGlobal ["ACE_tourniquet", 4];
        _vehicle addItemCargoGlobal ["ACE_fieldDressing", 20];

        _vehicle addItemCargoGlobal ["ACE_wirecutter", 1];

        if (_vehicle isKindOf "Car") then {
            ["ACE_Wheel", _vehicle] call ace_cargo_fnc_loadItem;
        } else {
            ["ACE_Track", _vehicle] call ace_cargo_fnc_loadItem;
        };
    };

    case (typeOf _vehicle in _transport_rotary_small): {
        if (_useAceRopes) then {
            _vehicle addItemCargoGlobal ["ACE_rope18", 2];
        };
        _vehicle addMagazineCargoGlobal ["SmokeShell", 2];

        _vehicle addItemCargoGlobal ["ACE_tourniquet", 2];
        _vehicle addItemCargoGlobal ["ACE_fieldDressing", 10];
    };
    case (typeOf _vehicle in _transport_rotary_medium): {
        if (_useAceRopes) then {
            _vehicle addItemCargoGlobal ["ACE_rope18", 8];
        };
        _vehicle addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 16];
        _vehicle addMagazineCargoGlobal ["rhsusf_200Rnd_556x45_box", 2];

        _vehicle addMagazineCargoGlobal ["SmokeShell", 8];

        _vehicle addItemCargoGlobal ["ACE_tourniquet", 2];
        _vehicle addItemCargoGlobal ["ACE_fieldDressing", 10];
    };
    case (typeOf _vehicle in _transport_rotary_big): {
        if (_useAceRopes) then {
            _vehicle addItemCargoGlobal ["ACE_rope18", 4];
            _vehicle addItemCargoGlobal ["ACE_rope27", 4];
        };
        _vehicle addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 22];
        _vehicle addMagazineCargoGlobal ["rhsusf_200Rnd_556x45_box", 6];

        _vehicle addMagazineCargoGlobal ["SmokeShell", 10];

        _vehicle addItemCargoGlobal ["ACE_tourniquet", 4];
        _vehicle addItemCargoGlobal ["ACE_fieldDressing", 20];

        _vehicle addItemCargoGlobal ["ACE_wirecutter", 2];

        _vehicle addBackpackCargoGlobal ["rhsusf_eject_Parachute_backpack", 25];
    };

    case (typeOf _vehicle in _transport_fixed_wing): {
        _vehicle addBackpackCargoGlobal ["rhsusf_eject_Parachute_backpack", 25];
    };

    case (typeOf _vehicle in _transport_armored): {
        _vehicle addItemCargoGlobal ["Toolkit", 1];

        _vehicle addWeaponCargoGlobal ["rhs_weap_M136", 1];

        _vehicle addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 16];
        _vehicle addMagazineCargoGlobal ["rhsusf_200Rnd_556x45_box", 2];

        _vehicle addMagazineCargoGlobal ["SmokeShell", 8];
        _vehicle addMagazineCargoGlobal ["SmokeShellBlue", 2];
        _vehicle addMagazineCargoGlobal ["SmokeShellGreen", 2];

        _vehicle addItemCargoGlobal ["ACE_tourniquet", 2];
        _vehicle addItemCargoGlobal ["ACE_fieldDressing", 10];

        _vehicle addItemCargoGlobal ["ACE_wirecutter", 1];

        // Ace Cargo
        if (_vehicle isKindOf "Car") then {
            ["ACE_Wheel", _vehicle] call ace_cargo_fnc_loadItem;
        } else {
            ["ACE_Track", _vehicle] call ace_cargo_fnc_loadItem;
        };
    };
    
    case (typeOf _vehicle in _armor): {
        _vehicle addItemCargoGlobal ["Toolkit", 2];

        // Ace Cargo
        if (_vehicle isKindOf "Car") then {
            ["ACE_Wheel", _vehicle] call ace_cargo_fnc_loadItem;
        } else {
            ["ACE_Track", _vehicle] call ace_cargo_fnc_loadItem;
        };
    };

    case (typeOf _vehicle in _logistical): {
        _vehicle addWeaponCargoGlobal ["rhs_weap_M136", 6];

        _vehicle addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 60];
        _vehicle addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 60];
        _vehicle addMagazineCargoGlobal ["rhsusf_200Rnd_556x45_box", 10];

        _vehicle addMagazineCargoGlobal ["SmokeShell", 12];
        _vehicle addMagazineCargoGlobal ["SmokeShellBlue", 4];
        _vehicle addMagazineCargoGlobal ["SmokeShellGreen", 4];

        _vehicle addItemCargoGlobal ["ACE_tourniquet", 4];
        _vehicle addItemCargoGlobal ["ACE_fieldDressing", 20];

        _vehicle addItemCargoGlobal ["ACE_wirecutter", 1];

        if (_vehicle isKindOf "Car") then {
            ["ACE_Wheel", _vehicle] call ace_cargo_fnc_loadItem;
        } else {
            ["ACE_Track", _vehicle] call ace_cargo_fnc_loadItem;
        };
    };
    case (typeOf _vehicle in _logistical_flatbed): {
        _vehicle addWeaponCargoGlobal ["rhs_weap_M136", 2];

        _vehicle addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 20];
        _vehicle addMagazineCargoGlobal ["rhsusf_200Rnd_556x45_box", 4];

        _vehicle addMagazineCargoGlobal ["SmokeShell", 12];
        _vehicle addMagazineCargoGlobal ["SmokeShellBlue", 4];
        _vehicle addMagazineCargoGlobal ["SmokeShellGreen", 4];

        _vehicle addItemCargoGlobal ["ACE_tourniquet", 4];
        _vehicle addItemCargoGlobal ["ACE_fieldDressing", 20];

        _vehicle addItemCargoGlobal ["ACE_wirecutter", 1];

        if (_vehicle isKindOf "Car") then {
            ["ACE_Wheel", _vehicle] call ace_cargo_fnc_loadItem;
        } else {
            ["ACE_Track", _vehicle] call ace_cargo_fnc_loadItem;
        };
    };

    case (typeOf _vehicle in _medical): {
        _vehicle addItemCargoGlobal ["ACE_FieldDressing", 30];
        _vehicle addItemCargoGlobal ["ACE_packingBandage", 30];
        _vehicle addItemCargoGlobal ["ACE_elasticBandage", 30];
        _vehicle addItemCargoGlobal ["ACE_quikclot", 50];
        
        _vehicle addItemCargoGlobal ["ACE_tourniquet", 10];

        _vehicle addItemCargoGlobal ["ACE_personalAidKit", 10];
        _vehicle addItemCargoGlobal ["ACE_splint",25];

        _vehicle addItemCargoGlobal ["ACE_salineIV", 6];
        _vehicle addItemCargoGlobal ["ACE_salineIV_500", 6];

        _vehicle addItemCargoGlobal ["ACE_morphine", 10];
        _vehicle addItemCargoGlobal ["ACE_epinephrine", 5];
        _vehicle addItemCargoGlobal ["ACE_adenosine", 5];
    };

    case (typeOf _vehicle in _empty): {
        #ifdef DEBUG_MODE
            [formatText["Emptying vehicle inventory for %1.", _vehicle]] call FUNC(logInfo);
        #endif
        clearweaponcargoGlobal _vehicle;
        clearmagazinecargoGlobal _vehicle;
        clearitemcargoGlobal _vehicle;
        clearbackpackcargoGlobal _vehicle;
    };
};

_vehicle setVariable [QEGVAR(Vehicle,Inventory), true];
