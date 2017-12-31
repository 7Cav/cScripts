/*
 * Author: CPL.Brostrom.A
 * This function resupply a crate and changes it's texture.
 *
 * Arguments:
 * 0: Crate <OBJECT>
 * 1: Scale cargo ammount <NUMBER> (Default: 1)
 *
 * Example:
 * [this,0.5] call cScripts_fnc_doWeaponsCrate;
 * [this,1] call cScripts_fnc_doWeaponsCrate;
 */

#include "..\script_component.hpp";

if (!isServer) exitWith {};

params [["_vehicle", objNull, [objNull]]];

if (!isNil {_vehicle getVariable QGVAR(hasVehichleInventory)}) exitWith {};

private _helo = ["RHS_UH60M_MEV_d","RHS_UH60M_MEV2_d","RHS_UH60M2_d","RHS_UH60M_ESSS_d","RHS_UH60M_ESSS2_d","RHS_UH60M_d","RHS_UH60M","RHS_UH60M_ESSS","RHS_UH60M_ESSS2","RHS_UH60M2","RHS_UH60M_MEV2","RHS_UH60M_MEV","RHS_UH1Y_FFAR_d","RHS_UH1Y_d","RHS_UH1Y_UNARMED_d","RHS_UH1Y_FFAR","RHS_UH1Y","RHS_UH1Y_UNARMED","B_Heli_Transport_01_F"];

private _transportLight = ["rhsusf_m1025_d_m2", "rhsusf_m1025_d_Mk19", "rhsusf_m1025_d", "rhsusf_m998_d_2dr_fulltop", "rhsusf_m998_d_2dr_halftop", "rhsusf_m998_d_2dr", "rhsusf_m998_d_4dr_fulltop", "rhsusf_m998_d_4dr_halftop", "rhsusf_m998_d_4dr", "rhsusf_M1220_usarmy_d", "rhsusf_M1220_M153_M2_usarmy_d", "rhsusf_M1220_M2_usarmy_d", "rhsusf_M1220_MK19_usarmy_d", "rhsusf_M1230_M2_usarmy_d", "rhsusf_M1230_MK19_usarmy_d", "rhsusf_M1232_usarmy_d", "rhsusf_M1232_M2_usarmy_d", "rhsusf_M1232_MK19_usarmy_d", "rhsusf_M1237_M2_usarmy_d", "rhsusf_M1237_MK19_usarmy_d", "rhsusf_M1220_usarmy_wd", "rhsusf_M1220_M153_M2_usarmy_wd", "rhsusf_M1220_M2_usarmy_wd", "rhsusf_M1220_MK19_usarmy_wd", "rhsusf_M1230_M2_usarmy_wd", "rhsusf_M1230_MK19_usarmy_wd", "rhsusf_M1232_usarmy_wd", "rhsusf_M1232_M2_usarmy_wd", "rhsusf_M1232_MK19_usarmy_wd", "rhsusf_M1237_MK19_usarmy_wd", "rhsusf_M1237_M2_usarmy_wd", "rhsusf_m1025_w_m2", "rhsusf_m1025_w_mk19", "rhsusf_m1025_w", "rhsusf_m998_w_2dr_fulltop", "rhsusf_m998_w_2dr_halftop", "rhsusf_m998_w_2dr", "rhsusf_m998_w_4dr_fulltop", "rhsusf_m998_w_4dr_halftop", "rhsusf_m998_w_4dr", "rhsusf_m1025_d_s_m2", "rhsusf_m1025_d_s_Mk19", "rhsusf_m1025_d_s", "rhsusf_m998_d_s_2dr", "rhsusf_m998_d_s_2dr_halftop", "rhsusf_m998_d_s_2dr", "rhsusf_m998_d_s_2dr_fulltop", "rhsusf_m998_d_s_4dr_halftop", "rhsusf_m998_d_s_4dr", "rhsusf_m998_d_s_4dr_fulltop", "rhsusf_rg33_usmc_d", "rhsusf_rg33_m2_usmc_d", "rhsusf_m1025_w_s_m2", "rhsusf_m1025_w_s_Mk19", "rhsusf_m1025_w_s", "rhsusf_m998_w_s_2dr_halftop", "rhsusf_m998_w_s_2dr_fulltop", "rhsusf_m998_w_s_2dr", "rhsusf_m998_w_s_4dr_halftop", "rhsusf_m998_w_s_4dr", "rhsusf_m998_w_s_4dr_fulltop", "rhsusf_rg33_usmc_wd", "rhsusf_rg33_m2_usmc_wd", "rhsusf_rg33_m2_usmc_wd"];

private _transportHeavy = ["M1126_ICV_M134_DG1_NOSLATDES", "M1126_ICV_M134_DG1_NOSLATWOOD", "M1126_ICV_M2_DG1_NOSLATDES", "M1126_ICV_M2_DG1_NOSLATWOOD", "M1126_ICV_M2NEST_DG1_NOSLATWOOD", "M1126_ICV_M2NEST_DG1_NOSLATDES", "M1126_ICV_mk19_DG1_NOSLATWOOD", "M1126_ICV_mk19_DG1_NOSLATDES", "M1128_MGS_DG1_NOSLATWOOD", "M1126_ICV_mk19_DG1_NOSLATDES", "M1128_MGS_DG1_NOSLATWOOD", "M1128_MGS_DG1_NOSLATDES", "M1129_MC_DG1_NOSLATWOOD", "M1129_MC_DG1_NOSLATDES", "M1130_CV_DG1_NOSLATWOOD", "M1130_CV_DG1_NOSLATDES", "M1133_MEV_DG1_NOSLATWOOD", "M1135_ATGMV_DG1_NOSLATWOOD", "M1133_MEV_DG1_NOSLATDES", "M1135_ATGMV_DG1_NOSLATDES"];



// Apply inventory
clearweaponcargoGlobal _vehicle;
clearmagazinecargoGlobal _vehicle;
clearitemcargoGlobal _vehicle;
clearbackpackcargoGlobal _vehicle;

switch (true) do {
    case (typeOf _vehicle in _helo): {
        _vehicle addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",20];
        _vehicle addMagazineCargoGlobal ["rhs_200rnd_556x45_M_SAW",8];
        _vehicle addMagazineCargoGlobal ["rhs_mag_m67",8];
        _vehicle addMagazineCargoGlobal ["SmokeShell",10];
        _vehicle addMagazineCargoGlobal ["SmokeShellGreen",2];
        _vehicle addMagazineCargoGlobal ["SmokeShellOrange",2];
        _vehicle addMagazineCargoGlobal ["SmokeShellRed",2];
        _vehicle addMagazineCargoGlobal ["SmokeShellYellow",2];
    };
    case (typeOf _vehicle in _transportLight): {
        _vehicle addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",20];
        _vehicle addMagazineCargoGlobal ["rhs_200rnd_556x45_M_SAW",8];
        _vehicle addMagazineCargoGlobal ["rhs_mag_m67",8];
        _vehicle addMagazineCargoGlobal ["SmokeShell",10];
        _vehicle addMagazineCargoGlobal ["SmokeShellGreen",2];
        _vehicle addMagazineCargoGlobal ["SmokeShellOrange",2];
        _vehicle addMagazineCargoGlobal ["SmokeShellRed",2];
        _vehicle addMagazineCargoGlobal ["SmokeShellYellow",2];
    };
    case (typeOf _vehicle in _transportHeavy): {
        _vehicle addWeaponCargoGlobal ["rhs_weap_M136_hp",2];

        _vehicle addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",40];
        _vehicle addMagazineCargoGlobal ["rhs_200rnd_556x45_M_SAW",16];
        _vehicle addMagazineCargoGlobal ["rhs_mag_m67",16];
        _vehicle addMagazineCargoGlobal ["SmokeShell",20];
        _vehicle addMagazineCargoGlobal ["SmokeShellGreen",4];
        _vehicle addMagazineCargoGlobal ["SmokeShellOrange",4];
        _vehicle addMagazineCargoGlobal ["SmokeShellRed",4];
        _vehicle addMagazineCargoGlobal ["SmokeShellYellow",4];
    };
};

_vehicle setVariable [QGVAR(hasVehichleInventory), true];
