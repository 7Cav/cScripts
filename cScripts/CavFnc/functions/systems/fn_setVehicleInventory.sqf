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
if (!isNil {_vehicle getVariable QEGVAR(Vehicle,Inventory);}) exitWith {[formatText["Vehicle inventory already applied for %1.", _vehicle]] call FUNC(logWarning);};


private _transport_light = [
    "rhsusf_M1078A1P2_D_fmtv_usarmy", "rhsusf_M1078A1P2_B_D_fmtv_usarmy", "rhsusf_M1078A1P2_B_M2_D_fmtv_usarmy", "rhsusf_M1083A1P2_D_fmtv_usarmy", "rhsusf_M1083A1P2_B_D_fmtv_usarmy", "rhsusf_M1083A1P2_B_M2_D_fmtv_usarmy", "rhsusf_M1078A1P2_WD_fmtv_usarmy", "rhsusf_M1078A1P2_B_WD_fmtv_usarmy", "rhsusf_M1078A1P2_B_M2_WD_fmtv_usarmy", "rhsusf_M1083A1P2_WD_fmtv_usarmy", "rhsusf_M1083A1P2_B_WD_fmtv_usarmy", "rhsusf_M1083A1P2_B_M2_WD_fmtv_usarmy",
    "rhsusf_m1240a1_usarmy_wd", "rhsusf_m1240a1_m2crows_usarmy_wd", "rhsusf_m1240a1_m2_usarmy_wd", "rhsusf_m1240a1_mk19crows_usarmy_wd", "rhsusf_m1240a1_mk19_usarmy_wd", "rhsusf_m1240a1_usarmy_d", "rhsusf_m1240a1_m2crows_usarmy_d", "rhsusf_m1240a1_m2_usarmy_d", "rhsusf_m1240a1_m240_usarmy_d", "rhsusf_m1240a1_mk19crows_usarmy_d", "rhsusf_m1240a1_mk19_usarmy_d", 
    "rhsusf_M1239_socom_d", "rhsusf_M1239_M2_socom_d", "rhsusf_M1239_MK19_socom_d", "rhsusf_M1239_M2_Deploy_socom_d", "rhsusf_M1239_MK19_Deploy_socom_d",

    "Cav_Charlie_m1025_d_m2_f", "Cav_Charlie_m1025_d_Mk19_f", "Cav_Charlie_m1025_d_f", "Cav_Charlie_m1043_d_m2_f", "Cav_Charlie_m1043_d_mk19_f", "Cav_Charlie_m1043_d_f", "Cav_Charlie_m1045_d_f", "Cav_Charlie_m998_d_2dr_fulltop_f", "Cav_Charlie_m998_d_2dr_halftop_f", "Cav_Charlie_m998_d_4dr_fulltop_f", "Cav_Charlie_m998_d_4dr_halftop_f", "Cav_Charlie_m998_d_4dr_f", "Cav_Charlie_M1220_usarmy_d", "Cav_Charlie_M1220_M153_M2_usarmy_d", "Cav_Charlie_M1220_M2_usarmy_d", "Cav_Charlie_M1220_MK19_usarmy_d", "Cav_Charlie_M1230_M2_usarmy_d", "Cav_Charlie_M1230_MK19_usarmy_d", "Cav_Charlie_M1232_usarmy_d", "Cav_Charlie_M1232_M2_usarmy_d", "Cav_Charlie_M1232_M2_usarmy_d", "Cav_Charlie_M1232_MK19_usarmy_d", "Cav_Charlie_M1237_M2_usarmy_d", "Cav_Charlie_M1237_MK19_usarmy_d", "Cav_Charlie_m966_d_f",
    "Cav_Charlie_m1025_w_m2_f", "Cav_Charlie_m1025_w_Mk19_f", "Cav_Charlie_m1025_w_f", "Cav_Charlie_m1043_w_m2_f", "Cav_Charlie_m1043_w_mk19_f", "Cav_Charlie_m1043_w_f", "Cav_Charlie_m1045_w_f", "Cav_Charlie_m998_w_2dr_fulltop_f", "Cav_Charlie_m998_w_2dr_halftop_f", "Cav_Charlie_m998_w_2dr_f", "Cav_Charlie_m998_w_4dr_fulltop_f", "Cav_Charlie_m998_w_4dr_halftop_f", "Cav_Charlie_m998_w_4dr_f", "Cav_Charlie_M1220_usarmy_wd", "Cav_Charlie_M1220_M153_M2_usarmy_wd", "Cav_Charlie_M1220_M2_usarmy_wd", "Cav_Charlie_M1220_MK19_usarmy_wd", "Cav_Charlie_M1230_M2_usarmy_wd", "Cav_Charlie_M1230_MK19_usarmy_wd", "Cav_Charlie_M1232_usarmy_wd", "Cav_Charlie_M1232_M2_usarmy_wd", "Cav_Charlie_M1232_MK19_usarmy_wd", "Cav_Charlie_M1237_M2_usarmy_wd", "Cav_Charlie_M1237_MK19_usarmy_wd", "Cav_Charlie_m966_w_f",
    "Cav_Bravo_m1025_d_m2_f", "Cav_Bravo_m1025_d_Mk19_f", "Cav_Bravo_m1025_d_f", "Cav_Bravo_m1043_d_m2_f", "Cav_Bravo_m1043_d_mk19_f", "Cav_Bravo_m1043_d_f", "Cav_Bravo_m1045_d_f", "Cav_Bravo_m998_d_2dr_fulltop_f", "Cav_Bravo_m998_d_2dr_halftop_f", "Cav_Bravo_m998_d_2dr_f", "Cav_Bravo_m998_d_4dr_fulltop_f", "Cav_Bravo_m998_d_4dr_halftop_f", "Cav_Bravo_m998_d_4dr_f", "Cav_Bravo_m966_d_f", "Cav_Bravo_m1025_w_m2_f", "Cav_Bravo_m1025_w_Mk19_f", "Cav_Bravo_m1025_w_f", "Cav_Bravo_m1043_w_m2_f", "Cav_Bravo_m1043_w_mk19_f", "Cav_Bravo_m1043_w_f", "Cav_Bravo_m1045_w_f", "Cav_Bravo_m998_w_2dr_fulltop_f", "Cav_Bravo_m998_w_2dr_halftop_f", "Cav_Bravo_m998_w_2dr_f", "Cav_Bravo_m998_w_4dr_fulltop_f", "Cav_Bravo_m998_w_4dr_halftop_f", "Cav_Bravo_m998_w_4dr_f", "Cav_Bravo_m966_w_f"
];
private _transport_heavy = [
    "rhsusf_M1117_W","rhsusf_M1117_D","rhsusf_M1117_O",
    "rhsusf_M1220_usarmy_wd", "rhsusf_M1220_M153_M2_usarmy_wd", "rhsusf_M1220_M2_usarmy_wd", "rhsusf_M1220_M153_MK19_usarmy_wd", "rhsusf_M1220_MK19_usarmy_wd", "rhsusf_M1230_M2_usarmy_wd", "rhsusf_M1230_MK19_usarmy_wd", "rhsusf_M1232_usarmy_wd", "rhsusf_M1232_M2_usarmy_wd", "rhsusf_M1232_MK19_usarmy_wd", "rhsusf_M1237_M2_usarmy_wd", "rhsusf_M1237_MK19_usarmy_wd", "rhsusf_M1220_usarmy_d", "rhsusf_M1220_M153_M2_usarmy_d", "rhsusf_M1220_M2_usarmy_d", "rhsusf_M1220_M153_MK19_usarmy_d", "rhsusf_M1220_MK19_usarmy_d", "rhsusf_M1230_M2_usarmy_d", "rhsusf_M1230_MK19_usarmy_d", "rhsusf_M1232_usarmy_d", "rhsusf_M1232_M2_usarmy_d", "rhsusf_M1232_MK19_usarmy_d", "rhsusf_M1237_M2_usarmy_d", "rhsusf_M1237_MK19_usarmy_d"
];
private _logistical = [
    "rhsusf_M1078A1P2_D_flatbed_fmtv_usarmy", "rhsusf_M1078A1P2_B_D_flatbed_fmtv_usarmy", "rhsusf_M1078A1P2_B_M2_D_flatbed_fmtv_usarmy", "rhsusf_M1083A1P2_D_flatbed_fmtv_usarmy", "rhsusf_M1083A1P2_B_D_flatbed_fmtv_usarmy", "rhsusf_M1084A1P2_D_fmtv_usarmy", "rhsusf_M1084A1P2_B_D_fmtv_usarmy", "rhsusf_M1084A1P2_B_M2_D_fmtv_usarmy", "rhsusf_M977A4_usarmy_d", "rhsusf_M977A4_BKIT_usarmy_d", "rhsusf_M977A4_BKIT_M2_usarmy_d", "rhsusf_M1083A1P2_B_M2_D_flatbed_fmtv_usarmy", "rhsusf_M1078A1P2_WD_flatbed_fmtv_usarmy", "rhsusf_M1078A1P2_B_WD_flatbed_fmtv_usarmy", "rhsusf_M1078A1P2_B_M2_WD_flatbed_fmtv_usarmy", "rhsusf_M1083A1P2_WD_flatbed_fmtv_usarmy", "rhsusf_M1083A1P2_B_WD_flatbed_fmtv_usarmy", "rhsusf_M1083A1P2_B_M2_WD_flatbed_fmtv_usarmy", "rhsusf_M1084A1P2_WD_fmtv_usarmy", "rhsusf_M1084A1P2_B_WD_fmtv_usarmy", "rhsusf_M1084A1P2_B_M2_WD_fmtv_usarmy", "rhsusf_M977A4_usarmy_wd", "rhsusf_M977A4_BKIT_M2_usarmy_wd",
    "rhsusf_M977A4_AMMO_BKIT_usarmy_wd", "rhsusf_M977A4_AMMO_usarmy_wd", "rhsusf_M977A4_REPAIR_usarmy_wd", "rhsusf_M977A4_AMMO_BKIT_M2_usarmy_wd", "rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_wd", "rhsusf_M977A4_REPAIR_BKIT_usarmy_wd", "rhsusf_M977A4_AMMO_usarmy_d", "rhsusf_M977A4_REPAIR_usarmy_d", "rhsusf_M977A4_AMMO_BKIT_usarmy_d", "rhsusf_M977A4_AMMO_BKIT_M2_usarmy_d", "rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_d", "rhsusf_M977A4_REPAIR_BKIT_usarmy_d", "rhsusf_M978A4_usarmy_d", "rhsusf_M978A4_BKIT_usarmy_d", "rhsusf_M978A4_usarmy_wd", "rhsusf_M978A4_BKIT_usarmy_wd"
];
private _transport_rotary = [
    "RHS_UH60M_MEV_d", "RHS_UH60M_MEV2_d", "RHS_UH60M2_d", "RHS_UH60M_ESSS_d", "RHS_UH60M_ESSS2_d", "RHS_UH60M_d", "RHS_UH60M", "RHS_UH60M_ESSS", "RHS_UH60M_ESSS2", "RHS_UH60M2", "RHS_UH60M_MEV2", "RHS_UH60M_MEV",
    "RHS_UH1Y_FFAR_d", "RHS_UH1Y_d", "RHS_UH1Y_UNARMED_d", "RHS_UH1Y_FFAR", "RHS_UH1Y", "RHS_UH1Y_UNARMED",
    "RHS_CH_47F", "RHS_CH_47F_10", "RHS_CH_47F_light",
    "Boeing_CH_47_F_R", "Boeing_CH_47_F_G", "Boeing_CH_47_F_T",

    "Cav_Alpha_UH60M", "Cav_Alpha_UH60M2", "Cav_Alpha_UH60M_MEV2"
];
private _transport_armored = [
    "M1126_ICV_M134_DG1_NOSLATDES", "M1126_ICV_M134_DG1_NOSLATWOOD", "M1126_ICV_M134_DG1_SLATDES", "M1126_ICV_M134_DG1_SLATWOOD", "M1126_ICV_M2_DG1_NOSLATDES", "M1126_ICV_M2_DG1_NOSLATWOOD", "M1126_ICV_M2_DG1_SLATDES", "M1126_ICV_M2_DG1_SLATWOOD", "M1126_ICV_M2NEST_DG1_NOSLATDES", "M1126_ICV_M2NEST_DG1_SLATDES", "M1126_ICV_M2NEST_DG1_SLATWOOD", "M1126_ICV_mk19_DG1_NOSLATDES", "M1126_ICV_mk19_DG1_NOSLATWOOD", "M1126_ICV_mk19_DG1_SLATDES", "M1126_ICV_mk19_DG1_SLATWOOD", "M1128_MGS_DG1_NOSLATWOOD", "M1128_MGS_DG1_NOSLATDES", "M1128_MGS_DG1_SLATDES", "M1128_MGS_DG1_SLATWOOD", "M1129_MC_DG1_NOSLATDES", "M1129_MC_DG1_NOSLATWOOD", "M1129_MC_DG1_SLATWOOD", "M1129_MC_DG1_SLATDES", "M1130_CV_DG1_NOSLATWOOD", "M1130_CV_DG1_SLATDES", "M1130_CV_DG1_SLATWOOD", "M1135_ATGMV_DG1_NOSLATDES", "M1135_ATGMV_DG1_NOSLATWOOD", "M1135_ATGMV_DG1_SLATWOOD", "M1135_ATGMV_DG1_SLATDES",
    "RHS_M2A2", "RHS_M2A2_BUSKI", "RHS_M2A3", "RHS_M2A3_BUSKI", "RHS_M2A3_BUSKIII", "RHS_M6", "RHS_M2A2_wd", "RHS_M2A2_BUSKI_WD", "RHS_M2A3_wd", "RHS_M2A3_BUSKI_wd", "RHS_M2A3_BUSKIII_wd", "RHS_M6_wd",
    "rhsusf_stryker_m1126_m2_d"
];
private _armor = [
    "rhsusf_m1a1aimd_usarmy", "rhsusf_m1a1aim_tuski_d", "rhsusf_m1a2sep1d_usarmy", "rhsusf_m1a2sep1tuskid_usarmy", "rhsusf_m1a2sep1tuskiid_usarmy", "rhsusf_m1a1aimwd_usarmy", "rhsusf_m1a1aim_tuski_wd", "rhsusf_m1a2sep1wd_usarmy", "rhsusf_m1a2sep1tuskiwd_usarmy", "rhsusf_m1a2sep1tuskiiwd_usarmy", "rhsusf_m1a1fep_d", "rhsusf_m1a1fep_wd", "rhsusf_m1a1fep_od", "rhsusf_m1a1hc_wd"
];
private _medical = [
    "rhsusf_M1085A1P2_B_WD_Medical_fmtv_usarmy", "rhsusf_M1085A1P2_B_D_Medical_fmtv_usarmy", "rhsusf_M1230a1_usarmy_wd", "rhsusf_M1230a1_usarmy_d"
];
private _transport_fixed_wing = [
    "RHS_C130J",
    "USAF_C130J", "USAF_C17",

    "Cav_Alpha_C130J"
];
private _rotary_attack = [
    "RHS_AH1Z", "RHS_AH1Z_wd"
];
private _empty = [
    "B_APC_Tracked_01_CRV_F",

    "rhsusf_M1078A1P2_B_D_CP_fmtv_usarmy", "rhsusf_M1078A1P2_B_WD_CP_fmtv_usarmy",

    "B_Heli_Light_01_dynamicLoadout_F", "B_Heli_Light_01_F", "RHS_MELB_AH6M", "RHS_MELB_MH6M", "RHS_MELB_H6M",
    "RHS_AH64D_wd", "RHS_AH64D_noradar_wd",

    "USAF_C130J_Cargo", "usaf_kc135",
    "USAF_A10", "USAF_F22_EWP_AA", "USAF_F22", "USAF_F22_EWP_AG", "USAF_F22_Heavy", "USAF_F35A_STEALTH", "USAF_F35A",

    "Cav_Alpha_A10", "Cav_Alpha_AH64D", "Cav_Alpha_CH_47F", "Cav_Alpha_F16C"
];

private _allVehicles = [];
{ _allVehicles append _x } forEach [ _transport_light, _transport_heavy, _logistical, _transport_rotary, _transport_armored, _armor, _medical, _transport_fixed_wing, _rotary_attack, _empty ];


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
    case (typeOf _vehicle in _transport_light): {
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
    case (typeOf _vehicle in _transport_heavy): {
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
    case (typeOf _vehicle in _transport_rotary): {
        if (!isNil {ace_fastroping_requireRopeItems}) then {
            _vehicle addItemCargoGlobal ["ACE_rope18", 8];
        };
        _vehicle addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 16];
        _vehicle addMagazineCargoGlobal ["rhsusf_200Rnd_556x45_box", 2];

        _vehicle addMagazineCargoGlobal ["SmokeShell", 8];

        _vehicle addItemCargoGlobal ["ACE_tourniquet", 2];
        _vehicle addItemCargoGlobal ["ACE_fieldDressing", 10];
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
        if (typeOf _vehicle in ["rhsusf_stryker_m1126_m2_d"]) then {
            ["ACE_Wheel", _vehicle] call ace_cargo_fnc_loadItem;
        } else {
            ["ACE_Track", _vehicle] call ace_cargo_fnc_loadItem;
        };
    };
    case (typeOf _vehicle in _armor): {
        _vehicle addItemCargoGlobal ["Toolkit", 2];
        // Ace Cargo
        ["ACE_Track", _vehicle] call ace_cargo_fnc_loadItem;
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
    case (typeOf _vehicle in _transport_fixed_wing): {
        _vehicle addBackpackCargoGlobal ["rhsusf_eject_Parachute_backpack", 25];
    };
    case (typeOf _vehicle in _rotary_attack): {
        _vehicle addItemCargoGlobal ["ToolKit", 1];
        
        _vehicle addItemCargoGlobal ["SatchelCharge_Remote_Mag", 1];
        _vehicle addItemCargoGlobal ["ACE_Clacker", 1];
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
