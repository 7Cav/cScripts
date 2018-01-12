/*
 * Author: CPL.Brostrom.A
 * This function resupply a crate and changes it's texture.
 *
 * Arguments:
 * 0: vehicle <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_setVehichleInventory;
 */

#include "..\script_component.hpp";

if (!isServer) exitWith {};

params [["_vehicle", objNull, [objNull]]];

//if (!isNil {_vehicle getVariable QGVAR(hasVehichleInventory);}) exitWith {};

private _trucks = ["rhsusf_m1025_d_m2", "rhsusf_m1025_d_Mk19", "rhsusf_m1025_d", "rhsusf_m998_d_2dr_fulltop", "rhsusf_m998_d_2dr_halftop", "rhsusf_m998_d_2dr", "rhsusf_m998_d_4dr_fulltop", "rhsusf_m998_d_4dr_halftop", "rhsusf_m998_d_4dr", "rhsusf_M1220_usarmy_d", "rhsusf_M1220_M153_M2_usarmy_d", "rhsusf_M1220_M2_usarmy_d", "rhsusf_M1220_MK19_usarmy_d", "rhsusf_M1230_M2_usarmy_d", "rhsusf_M1230_MK19_usarmy_d", "rhsusf_M1232_usarmy_d", "rhsusf_M1232_M2_usarmy_d", "rhsusf_M1232_MK19_usarmy_d", "rhsusf_M1237_M2_usarmy_d", "rhsusf_M1237_MK19_usarmy_d", "rhsusf_M1220_usarmy_wd", "rhsusf_M1220_M153_M2_usarmy_wd", "rhsusf_M1220_M2_usarmy_wd", "rhsusf_M1220_MK19_usarmy_wd", "rhsusf_M1230_M2_usarmy_wd", "rhsusf_M1230_MK19_usarmy_wd", "rhsusf_M1232_usarmy_wd", "rhsusf_M1232_M2_usarmy_wd", "rhsusf_M1232_MK19_usarmy_wd", "rhsusf_M1237_MK19_usarmy_wd", "rhsusf_M1237_M2_usarmy_wd", "rhsusf_m1025_w_m2", "rhsusf_m1025_w_mk19", "rhsusf_m1025_w", "rhsusf_m998_w_2dr_fulltop", "rhsusf_m998_w_2dr_halftop", "rhsusf_m998_w_2dr", "rhsusf_m998_w_4dr_fulltop", "rhsusf_m998_w_4dr_halftop", "rhsusf_m998_w_4dr", "rhsusf_m1025_d_s_m2", "rhsusf_m1025_d_s_Mk19", "rhsusf_m1025_d_s", "rhsusf_m998_d_s_2dr", "rhsusf_m998_d_s_2dr_halftop", "rhsusf_m998_d_s_2dr", "rhsusf_m998_d_s_2dr_fulltop", "rhsusf_m998_d_s_4dr_halftop", "rhsusf_m998_d_s_4dr", "rhsusf_m998_d_s_4dr_fulltop", "rhsusf_rg33_usmc_d", "rhsusf_rg33_m2_usmc_d", "rhsusf_m1025_w_s_m2", "rhsusf_m1025_w_s_Mk19", "rhsusf_m1025_w_s", "rhsusf_m998_w_s_2dr_halftop", "rhsusf_m998_w_s_2dr_fulltop", "rhsusf_m998_w_s_2dr", "rhsusf_m998_w_s_4dr_halftop", "rhsusf_m998_w_s_4dr", "rhsusf_m998_w_s_4dr_fulltop", "rhsusf_rg33_usmc_wd", "rhsusf_rg33_m2_usmc_wd", "rhsusf_rg33_m2_usmc_wd","M1126_ICV_M134_DG1_NOSLATDES", "M1126_ICV_M134_DG1_NOSLATWOOD", "M1126_ICV_M2_DG1_NOSLATDES", "M1126_ICV_M2_DG1_NOSLATWOOD", "M1126_ICV_M2NEST_DG1_NOSLATWOOD", "M1126_ICV_M2NEST_DG1_NOSLATDES", "M1126_ICV_mk19_DG1_NOSLATWOOD", "M1126_ICV_mk19_DG1_NOSLATDES", "M1128_MGS_DG1_NOSLATWOOD", "M1126_ICV_mk19_DG1_NOSLATDES", "M1128_MGS_DG1_NOSLATWOOD", "M1128_MGS_DG1_NOSLATDES", "M1129_MC_DG1_NOSLATWOOD", "M1129_MC_DG1_NOSLATDES", "M1130_CV_DG1_NOSLATWOOD", "M1130_CV_DG1_NOSLATDES", "M1133_MEV_DG1_NOSLATWOOD", "M1135_ATGMV_DG1_NOSLATWOOD", "M1133_MEV_DG1_NOSLATDES", "M1135_ATGMV_DG1_NOSLATDES"];
private _apcIcvIfv = [];
private _tanks = ["rhsusf_m1a1aimd_usarmy", "rhsusf_m1a1aim_tuski_d", "rhsusf_m1a2sep1d_usarmy", "rhsusf_m1a2sep1tuskid_usarmy", "rhsusf_m1a2sep1tuskiid_usarmy", "rhsusf_m1a1aimwd_usarmy", "rhsusf_m1a1aim_tuski_wd", "rhsusf_m1a2sep1wd_usarmy", "rhsusf_m1a2sep1tuskiwd_usarmy", "rhsusf_m1a2sep1tuskiiwd_usarmy", "rhsusf_m1a1fep_d", "rhsusf_m1a1fep_wd", "rhsusf_m1a1fep_od", "rhsusf_m1a1hc_wd"];
private _attackRotary = ["RHS_MELB_AH6M", "RHS_MELB_MH6M", "B_Heli_Attack_01_dynamicLoadout_F", "B_Heli_Light_01_dynamicLoadout_F", "RHS_AH64D_wd", "RHS_AH64D_noradar_wd", "RHS_AH1Z", "RHS_AH1Z_wd"];
private _transportRotary = ["RHS_UH60M_MEV_d","RHS_UH60M_MEV2_d","RHS_UH60M2_d","RHS_UH60M_ESSS_d","RHS_UH60M_ESSS2_d","RHS_UH60M_d","RHS_UH60M","RHS_UH60M_ESSS","RHS_UH60M_ESSS2","RHS_UH60M2","RHS_UH60M_MEV2","RHS_UH60M_MEV","RHS_UH1Y_FFAR_d","RHS_UH1Y_d","RHS_UH1Y_UNARMED_d","RHS_UH1Y_FFAR","RHS_UH1Y","RHS_UH1Y_UNARMED","B_Heli_Transport_01_F"];
private _fixedWingTransport = ["RHS_C130J"];
private _fixedWingAttack = ["RHS_A10", "rhsusf_f22", "FIR_F16C", "FIR_F16C_RS_512TFS", "FIR_F16C_RS_400", "FIR_F16C_RS_526TFS", "FIR_F16C_RS_86TFW2", "FIR_F16C_RS_86TFW", "FIR_F16C_RS_86WG", "FIR_F16C_Ag_arctic", "FIR_F16C_Ag_flanker", "FIR_F16C_Ag_lizard", "FIR_F16C_AV", "FIR_F16C_Blank", "FIR_F16C_CFTTEST", "FIR_F16C_Makos", "FIR_F16C_Osan", "FIR_F16C_HG", "FIR_F16C_Polish", "FIR_F16C_ROKAF_B32", "FIR_F16C_ROKAF", "FIR_F16C_WP", "FIR_F16C_Polish_CFT", "FIR_F16C_WW", "FIR_F16D", "FIR_F16D_CFTTEST", "FIR_F16D_ROKAF", "FIR_F16D_Polish_CFT", "FIR_F16D_AV", "FIR_F16D_Blank", "FIR_F16D_WP", "B_Plane_Fighter_01_F", "B_Plane_Fighter_01_Stealth_F"];
private _ambulance = ["B_Truck_01_medical_F", "B_T_Truck_01_medical_F", "M1133_MEV_DG1_NOSLATWOOD", "M1133_MEV_DG1_NOSLATDES", "M1133_MEV_DG1_SLATDES", "M1133_MEV_DG1_SLATWOOD", "rhsusf_m113d_usarmy_medical", "RHS_UH60M_MEV2_d", "RHS_UH60M_MEV_d", "rhsusf_m113_usarmy_medical", "RHS_UH60M_MEV2", "RHS_UH60M_MEV"];

// Apply inventory
clearweaponcargoGlobal _vehicle;
clearmagazinecargoGlobal _vehicle;
clearitemcargoGlobal _vehicle;
clearbackpackcargoGlobal _vehicle;

_vehicle addItemCargoGlobal ["ACE_EarPlugs",10];

switch (true) do {
    case (typeOf _vehicle in _trucks): {};
    case (typeOf _vehicle in _apcIcvIfv): {
        _vehicle addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",50],
        _vehicle addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",50],
        _vehicle addMagazineCargoGlobal ["rhs_200rnd_556x45_M_SAW",25],
        _vehicle addMagazineCargoGlobal ["tf47_m3maaws_HE",5],
        _vehicle addMagazineCargoGlobal ["tf47_m3maaws_HEDP",5],
        _vehicle addMagazineCargoGlobal ["tf47_m3maaws_HEAT",5],
        _vehicle addMagazineCargoGlobal ["rhs_mag_M433_HEDP",25],
        _vehicle addMagazineCargoGlobal ["rhs_mag_M441_HE",25],
        _vehicle addMagazineCargoGlobal ["rhs_mag_m714_White",20],
        _vehicle addMagazineCargoGlobal ["rhs_mag_M585_white",10],
        _vehicle addMagazineCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag",5],
        _vehicle addMagazineCargoGlobal ["SmokeShell",50],
        _vehicle addMagazineCargoGlobal ["SmokeShellGreen",25],
        _vehicle addMagazineCargoGlobal ["SmokeShellPurple",25],
        _vehicle addMagazineCargoGlobal ["SmokeShellRed",25],
        _vehicle addMagazineCargoGlobal ["SmokeShellYellow",25],
        _vehicle addMagazineCargoGlobal ["rhs_mag_m67",50],
        _vehicle addMagazineCargoGlobal ["ACE_M84",30],
        _vehicle addMagazineCargoGlobal ["Chemlight_blue",10],
        _vehicle addMagazineCargoGlobal ["Chemlight_green",10],
        _vehicle addMagazineCargoGlobal ["ACE_Chemlight_IR",10],
        _vehicle addMagazineCargoGlobal ["ACE_Chemlight_HiWhite",20],
        _vehicle addMagazineCargoGlobal ["ACE_Chemlight_HiYellow",10],
        _vehicle addMagazineCargoGlobal ["ACE_Chemlight_HiRed",10],
        _vehicle addMagazineCargoGlobal ["ACE_Chemlight_HiOrange",10],
        _vehicle addMagazineCargoGlobal ["rhsusf_m112x4_mag",10],

        _vehicle addItemCargoGlobal ["ACE_quikclot",100],
        _vehicle addItemCargoGlobal ["ACE_EntrenchingTool",2],
        _vehicle addItemCargoGlobal ["ACE_Tripod",2],
        _vehicle addItemCargoGlobal ["ACE_CableTie",50],
        _vehicle addItemCargoGlobal ["ACE_Clacker",10],
        _vehicle addItemCargoGlobal ["ACE_wirecutter",1],

        _vehicle addWeaponCargoGlobal ["rhs_weap_M136_hp",3],
        _vehicle addWeaponCargoGlobal ["rhs_weap_M136",2],
        _vehicle addWeaponCargoGlobal ["tf47_m3maaws",1]
    };
    case (typeOf _vehicle in _tanks): {
        _vehicle addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",50];
        _vehicle addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",50];
        _vehicle addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m62_tracer",10];
        _vehicle addMagazineCargoGlobal ["rhs_200rnd_556x45_M_SAW",5];
        _vehicle addMagazineCargoGlobal ["rhsusf_mag_15Rnd_9x19_FMJ",50];
        _vehicle addMagazineCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag",5];
        _vehicle addMagazineCargoGlobal ["rhs_mag_an_m8hc",50];
        _vehicle addMagazineCargoGlobal ["rhs_mag_m18_green",50];
        _vehicle addMagazineCargoGlobal ["rhs_mag_m18_purple",50];
        _vehicle addMagazineCargoGlobal ["rhs_mag_m18_red",50];
        _vehicle addMagazineCargoGlobal ["rhs_mag_m67",25];
        _vehicle addItemCargoGlobal ["ACE_EarPlugs",10];
        _vehicle addItemCargoGlobal ["ACE_epinephrine",10];
        _vehicle addItemCargoGlobal ["ACE_morphine",50];
        _vehicle addItemCargoGlobal ["ToolKit",15];
        _vehicle addItemCargoGlobal ["ACE_MapTools",10];
        _vehicle addItemCargoGlobal ["ACE_personalAidKit",10];
        _vehicle addWeaponCargoGlobal ["rhs_weap_M136_hp",1];
        _vehicle addWeaponCargoGlobal ["rhs_weap_M136",1];
    };
    case (typeOf _vehicle in _attackRotary): {};
    case (typeOf _vehicle in _transportRotary): {};
    case (typeOf _vehicle in _fixedWingTransport): {};
    case (typeOf _vehicle in _fixedWingAttack): {};
    case (typeOf _vehicle in _ambulance): {};
};

_vehicle setVariable [QGVAR(hasVehichleInventory), true];
