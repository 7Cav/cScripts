/*
 * Author: CPL.Brostrom.A 
 * This populats a given object with items and commands used during sandboxes.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Example:
 * [this,1] call cScripts_fnc_initVehicle;
 * [this,0.5] call cScripts_fnc_initVehicle;
 */
 
#include "..\script_component.hpp";

if (!isServer) exitWith {};

params ["_vehicle",["_quaScale",1]];
_vehicleType = typeOf _vehicle;

private _vehicleCargoHUMVEE  = [
    "rhsusf_m1025_d_m2",
    "rhsusf_m1025_d_Mk19",
    "rhsusf_m1025_d",
    "rhsusf_m998_d_2dr_fulltop",
    "rhsusf_m998_d_2dr_halftop",
    "rhsusf_m998_d_2dr",
    "rhsusf_m998_d_4dr_fulltop",
    "rhsusf_m998_d_4dr_halftop",
    "rhsusf_m998_d_4dr",
    "rhsusf_rg33_d",
    "rhsusf_rg33_m2_d",
    "rhsusf_m1025_w_m2",
    "rhsusf_m1025_w_mk19",
    "rhsusf_m1025_w",
    "rhsusf_m998_w_2dr_fulltop",
    "rhsusf_m998_w_2dr_halftop",
    "rhsusf_m998_w_2dr",
    "rhsusf_m998_w_4dr_fulltop",
    "rhsusf_m998_w_4dr_halftop",
    "rhsusf_m998_w_4dr",
    "rhsusf_rg33_wd",
    "rhsusf_rg33_m2_wd"
];
private _vehicleCargoTRUCK  = [
    "rhsusf_M1078A1P2_d_fmtv_usarmy",
    "rhsusf_M1078A1P2_d_flatbed_fmtv_usarmy",
    "rhsusf_M1078A1P2_d_open_fmtv_usarmy",
    "rhsusf_M1078A1P2_B_d_fmtv_usarmy",
    "rhsusf_M1078A1P2_B_d_flatbed_fmtv_usarmy",
    "rhsusf_M1078A1P2_B_M2_d_fmtv_usarmy",
    "rhsusf_M1078A1P2_B_M2_d_flatbed_fmtv_usarmy",
    "rhsusf_M1078A1P2_B_M2_d_open_fmtv_usarmy",
    "rhsusf_M1078A1P2_B_d_open_fmtv_usarmy",
    "rhsusf_M1083A1P2_d_fmtv_usarmy",
    "rhsusf_M1083A1P2_d_flatbed_fmtv_usarmy",
    "rhsusf_M1083A1P2_d_open_fmtv_usarmy",
    "rhsusf_M1083A1P2_B_d_fmtv_usarmy",
    "rhsusf_M1083A1P2_B_d_flatbed_fmtv_usarmy",
    "rhsusf_M1083A1P2_B_M2_d_fmtv_usarmy",
    "rhsusf_M1083A1P2_B_M2_d_flatbed_fmtv_usarmy",
    "rhsusf_M1083A1P2_B_M2_d_open_fmtv_usarmy",
    "rhsusf_M1083A1P2_B_d_open_fmtv_usarmy",
    "rhsusf_M1078A1P2_wd_fmtv_usarmy",
    "rhsusf_M1078A1P2_wd_flatbed_fmtv_usarmy",
    "rhsusf_M1078A1P2_wd_open_fmtv_usarmy",
    "rhsusf_M1078A1P2_B_wd_fmtv_usarmy",
    "rhsusf_M1078A1P2_B_wd_flatbed_fmtv_usarmy",
    "rhsusf_M1078A1P2_B_M2_wd_fmtv_usarmy",
    "rhsusf_M1078A1P2_B_M2_wd_flatbed_fmtv_usarmy",
    "rhsusf_M1078A1P2_B_M2_wd_open_fmtv_usarmy",
    "rhsusf_M1078A1P2_B_wd_open_fmtv_usarmy",
    "rhsusf_M1083A1P2_wd_fmtv_usarmy",
    "rhsusf_M1083A1P2_wd_flatbed_fmtv_usarmy",
    "rhsusf_M1083A1P2_wd_open_fmtv_usarmy",
    "rhsusf_M1083A1P2_B_wd_fmtv_usarmy",
    "rhsusf_M1083A1P2_B_wd_fmtv_usarmy",
    "rhsusf_M1083A1P2_B_wd_flatbed_fmtv_usarmy",
    "rhsusf_M1083A1P2_B_M2_wd_fmtv_usarmy",
    "rhsusf_M1083A1P2_B_M2_wd_flatbed_fmtv_usarmy",
    "rhsusf_M1083A1P2_B_M2_wd_open_fmtv_usarmy",
    "rhsusf_M1083A1P2_B_wd_open_fmtv_usarmy",
    
    "rhsusf_M1083A1P2_B_M2_d_MHQ_fmtv_usarmy"
];
private _vehicleCargoARMOR = [
    "rhsusf_m1a1aim_tuski_d",
    "rhsusf_m1a1aim_tuski_wd",
    "rhsusf_m1a1aimd_usarmy",
    "rhsusf_m1a1aimwd_usarmy",
    "rhsusf_m1a1fep_d",
    "rhsusf_m1a1fep_od",
    "rhsusf_m1a1fep_wd",
    "rhsusf_m1a2sep1d_usarmy",
    "rhsusf_m1a2sep1tuskid_usarmy",
    "rhsusf_m1a2sep1tuskiid_usarmy",
    "rhsusf_m1a2sep1tuskiiwd_usarmy",
    "rhsusf_m1a2sep1tuskiwd_usarmy",
    "rhsusf_m1a2sep1wd_usarmy",

    "rhsusf_m109d_usarmy",
    "rhsusf_m109_usarmy"
];
private _vehicleCargoIFV = [
    "RHS_M2A2",
    "RHS_M2A2_BUSKI",
    "RHS_M2A3",
    "RHS_M2A3_BUSKI",
    "RHS_M2A3_BUSKIII",
    "RHS_M2A2_wd",
    "RHS_M2A2_BUSKI_WD",
    "RHS_M2A3_wd",
    "RHS_M2A3_BUSKI_wd",
    "RHS_M2A3_BUSKIII_wd",
    "RHS_M6",
    "RHS_M6_wd",

    "M1126_ICV_M134_DG1_NOSLATDES",
    "M1126_ICV_M134_DG1_NOSLATWOOD",
    "M1126_ICV_M134_DG1_SLATWOOD",
    "M1126_ICV_M134_DG1_SLATDES",
    "M1126_ICV_M2_DG1_NOSLATDES",
    "M1126_ICV_M2_DG1_NOSLATWOOD",
    "M1126_ICV_M2_DG1_SLATDES",
    "M1126_ICV_M2_DG1_SLATWOOD",
    "M1126_ICV_M2NEST_DG1_NOSLATWOOD",
    "M1126_ICV_M2NEST_DG1_NOSLATDES",
    "M1126_ICV_M2NEST_DG1_SLATDES",
    "M1126_ICV_M2NEST_DG1_SLATWOOD",
    "M1126_ICV_mk19_DG1_NOSLATWOOD",
    "M1126_ICV_mk19_DG1_NOSLATDES",
    "M1126_ICV_mk19_DG1_SLATDES",
    "M1126_ICV_mk19_DG1_SLATWOOD",
    "M1128_MGS_DG1_NOSLATWOOD",
    "M1128_MGS_DG1_NOSLATDES",
    "M1128_MGS_DG1_SLATDES",
    "M1128_MGS_DG1_SLATWOOD",
    "M1129_MC_DG1_NOSLATWOOD",
    "M1129_MC_DG1_NOSLATDES",
    "M1129_MC_DG1_SLATDES",
    "M1129_MC_DG1_SLATWOOD",
    "M1130_CV_DG1_NOSLATWOOD",
    "M1130_CV_DG1_NOSLATDES",
    "M1130_CV_DG1_SLATDES",
    "M1130_CV_DG1_SLATWOOD",
    "M1135_ATGMV_DG1_NOSLATDES",
    "M1135_ATGMV_DG1_NOSLATWOOD",
    "M1135_ATGMV_DG1_SLATDES",
    "M1135_ATGMV_DG1_SLATWOOD",

    "rhsusf_m113d_usarmy_supply",
    "rhsusf_m113d_usarmy",
    "rhsusf_m113d_usarmy_M240",
    "rhsusf_m113d_usarmy_MK19",
    "rhsusf_m113d_usarmy_unarmed"
];
private _vehicleCargoMED = [
    "M1133_MEV_DG1_NOSLATWOOD",
    "M1133_MEV_DG1_NOSLATDES",
    "M1133_MEV_DG1_SLATDES",
    "M1133_MEV_DG1_SLATWOOD",
    
    "rhsusf_m113_usarmy_medical",
    "rhsusf_m113d_usarmy_medical",

    "rhsusf_M1083A1P2_B_M2_d_Medical_fmtv_usarmy"
];
private _vehicleCargoTransportAviation = [
    "RHS_UH1Y",
    "RHS_UH1Y_FFAR",
    "RHS_UH1Y_FFAR_d",
    "RHS_UH1Y_UNARMED",
    "RHS_UH1Y_UNARMED_d",
    "RHS_UH1Y_d",
    "RHS_UH60M",
    "RHS_UH60M_d",

    "rhsusf_CH53E_USMC_D",
    "rhsusf_CH53E_USMC",
    
    "RHS_CH_47F_10",
    "RHS_CH_47F_light",
    "RHS_CH_47F"
];
private _vehicleCargoAttackAviation = [
    "B_Heli_Light_01_armed_F",
    "MELB_AH6M_H",
    "MELB_AH6M_L",
    "MELB_AH6M_M",
    "RHS_AH64D_AA",
    "RHS_AH64D_CS",
    "RHS_AH64D_GS",
    "RHS_AH64D",
    "RHS_AH64DGrey",
    "RHS_AH64D_wd_AA",
    "RHS_AH64D_wd_CS",
    "RHS_AH64D_wd_GS",
    "RHS_AH64D_wd",
    "RHS_AH1Z_CS",
    "RHS_AH1Z_GS",
    "RHS_AH1Z",
    "RHS_AH1Z_wd_CS",
    "RHS_AH1Z_wd_GS",
    "RHS_AH1Z_wd",
    
    "RHS_A10",
    "RHS_C130J",
    "rhsusf_f22"
];
private _vehicleCargoMedicalAviation = [
    "RHS_UH60M_MEV2_d",
    "RHS_UH60M_MEV_d",
    "RHS_UH60M_MEV2",
    "RHS_UH60M_MEV"
];
clearweaponcargoGlobal _vehicle;
clearmagazinecargoGlobal _vehicle;
clearitemcargoGlobal _vehicle;
clearbackpackcargoGlobal _vehicle;

switch (true) do {
    case (_vehicleType in _vehicleCargoHUMVEE): {
        _vehicle addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY),(_quaScale * 15)];
        
        _vehicle addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),(_quaScale * 2)];
        _vehicle addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),(_quaScale * 1)];
        
        _vehicle addMagazineCargoGlobal [QUOTE(Chemlight_Blue),(_quaScale * 10)];
        _vehicle addMagazineCargoGlobal [QUOTE(Chemlight_Red),(_quaScale * 10)];
        
        _vehicle addItemCargoGlobal [QUOTE(ACE_EarPlugs),(_quaScale * 3)];
        _vehicle addItemCargoGlobal [QUOTE(ACE_FieldDressing),(_quaScale * 6)];
        
        _vehicle addItemCargoGlobal [QUOTE(Toolkit),(_quaScale * 1)];
    };
    case (_vehicleType in _vehicleCargoTRUCK): {
        _vehicle addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY),(_quaScale * 15)];
        _vehicle addMagazineCargoGlobal [QUOTE(_MAG_AR1),(_quaScale * 4)];
        
        _vehicle addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),(_quaScale * 2)];
        _vehicle addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),(_quaScale * 1)];
        
        _vehicle addMagazineCargoGlobal [QUOTE(Chemlight_Blue),(_quaScale * 10)];
        _vehicle addMagazineCargoGlobal [QUOTE(Chemlight_Red),(_quaScale * 10)];
        
        _vehicle addItemCargoGlobal [QUOTE(ACE_EarPlugs),(_quaScale * 3)];
        _vehicle addItemCargoGlobal [QUOTE(ACE_FieldDressing),(_quaScale * 6)];
        
        _vehicle addItemCargoGlobal [QUOTE(Toolkit),(_quaScale * 1)];
    };
    case (_vehicleType in _vehicleCargoARMOR) : {
        _vehicle addMagazineCargoGlobal [QUOTE(_MAG_AR1),(_quaScale * 2)];
        _vehicle addWeaponCargoGlobal [QUOTE(_WEAPON_PRIMARY_AR1),(_quaScale * 1)];
        
        _vehicle addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),(_quaScale * 2)];
        _vehicle addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),(_quaScale * 1)];
        
        _vehicle addMagazineCargoGlobal [QUOTE(Chemlight_Blue),(_quaScale * 10)];
        _vehicle addMagazineCargoGlobal [QUOTE(Chemlight_Red),(_quaScale * 10)];
        
        _vehicle addItemCargoGlobal [QUOTE(Toolkit),(_quaScale * 1)];
    };
    case (_vehicleType in _vehicleCargoIFV) : {
        _vehicle addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY),(_quaScale * 15)];
        _vehicle addMagazineCargoGlobal [QUOTE(_MAG_AR1),(_quaScale * 4)];
        
        _vehicle addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),(_quaScale * 2)];
        _vehicle addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),(_quaScale * 1)];
        
        _vehicle addMagazineCargoGlobal [QUOTE(Chemlight_Blue),(_quaScale * 10)];
        _vehicle addMagazineCargoGlobal [QUOTE(Chemlight_Red),(_quaScale * 10)];
        
        _vehicle addItemCargoGlobal [QUOTE(ACE_EarPlugs),(_quaScale * 3)];
        _vehicle addItemCargoGlobal [QUOTE(ACE_FieldDressing),(_quaScale * 6)];
        
        _vehicle addItemCargoGlobal [QUOTE(Toolkit),(_quaScale * 1)];
    };
    case (_vehicleType in _vehicleCargoMED) : {
        _vehicle addItemCargoGlobal [QUOTE(ACE_EarPlugs),(_quaScale * 15)];
        
        _vehicle addItemCargoGlobal [QUOTE(ACE_FieldDressing),(_quaScale * 30)];
        
        _vehicle addItemCargoGlobal [QUOTE(_MED_IV0),(_quaScale * 10)];
        _vehicle addItemCargoGlobal [QUOTE(_MED_IV1),(_quaScale * 10)];
        _vehicle addItemCargoGlobal [QUOTE(_MED_IV2),(_quaScale * 10)];
        
        _vehicle addItemCargoGlobal [QUOTE(ACE_morphine),(_quaScale * 30)];
        _vehicle addItemCargoGlobal [QUOTE(ACE_epinephrine),(_quaScale * 20)];
        _vehicle addItemCargoGlobal [QUOTE(ACE_atropine),(_quaScale * 20)];

        _vehicle addItemCargoGlobal [QUOTE(ACE_tourniquet),(_quaScale * 10)];
        _vehicle addItemCargoGlobal [QUOTE(ACE_elasticBandage),(_quaScale * 40)];
        _vehicle addItemCargoGlobal [QUOTE(ACE_packingBandage),(_quaScale * 40)];
        _vehicle addItemCargoGlobal [QUOTE(ACE_quikclot),(_quaScale * 60)];
        
        _vehicle addItemCargoGlobal [QUOTE(ACE_bodyBag),(_quaScale * 12)];
        
        _vehicle addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),(_quaScale * 2)];
        _vehicle addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),(_quaScale * 1)];
        
        _vehicle addMagazineCargoGlobal [QUOTE(Chemlight_Blue),(_quaScale * 10)];
        _vehicle addMagazineCargoGlobal [QUOTE(Chemlight_Red),(_quaScale * 10)];
        
        _vehicle addItemCargoGlobal [QUOTE(Toolkit),(_quaScale * 1)];
    };
    case (_vehicleType in _vehicleCargoTransportAviation) : {
        _vehicle addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY),(_quaScale * 15)];
        
        _vehicle addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),(_quaScale * 2)];
        _vehicle addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),(_quaScale * 1)];
        
        _vehicle addMagazineCargoGlobal [QUOTE(Chemlight_Blue),(_quaScale * 10)];
        _vehicle addMagazineCargoGlobal [QUOTE(Chemlight_Red),(_quaScale * 10)];
        
        _vehicle addItemCargoGlobal [QUOTE(Toolkit),(_quaScale * 1)];
    };
    case (_vehicleType in _vehicleCargoAttackAviation) : {
    };
    case (_vehicleType in _vehicleCargoMedicalAviation) : {
        _vehicle addItemCargoGlobal [QUOTE(ACE_EarPlugs),(_quaScale * 15)];
        
        _vehicle addItemCargoGlobal [QUOTE(ACE_FieldDressing),(_quaScale * 30)];
        
        _vehicle addItemCargoGlobal [QUOTE(_MED_IV0),(_quaScale * 10)];
        _vehicle addItemCargoGlobal [QUOTE(_MED_IV1),(_quaScale * 10)];
        _vehicle addItemCargoGlobal [QUOTE(_MED_IV2),(_quaScale * 10)];
        
        _vehicle addItemCargoGlobal [QUOTE(ACE_morphine),(_quaScale * 30)];
        _vehicle addItemCargoGlobal [QUOTE(ACE_epinephrine),(_quaScale * 20)];
        _vehicle addItemCargoGlobal [QUOTE(ACE_atropine),(_quaScale * 20)];

        _vehicle addItemCargoGlobal [QUOTE(ACE_tourniquet),(_quaScale * 10)];
        _vehicle addItemCargoGlobal [QUOTE(ACE_elasticBandage),(_quaScale * 40)];
        _vehicle addItemCargoGlobal [QUOTE(ACE_packingBandage),(_quaScale * 40)];
        _vehicle addItemCargoGlobal [QUOTE(ACE_quikclot),(_quaScale * 60)];
        
        _vehicle addItemCargoGlobal [QUOTE(ACE_bodyBag),(_quaScale * 12)];
        
        _vehicle addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),(_quaScale * 2)];
        _vehicle addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),(_quaScale * 1)];
        
        _vehicle addMagazineCargoGlobal [QUOTE(Chemlight_Blue),(_quaScale * 10)];
        _vehicle addMagazineCargoGlobal [QUOTE(Chemlight_Red),(_quaScale * 10)];
        
        _vehicle addItemCargoGlobal [QUOTE(Toolkit),(_quaScale * 1)];
    };
};