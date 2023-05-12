#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A 
 * This function return a list of items used for arsenal
 *
 * Arguments:
 * None
 *
 * Return:
 * ARRAY of items
 *
 * Example:
 * [] call cScripts_fnc_getArsenalWhitelist;
 */

private _classname = call EFUNC(gear,getCurrentLoadout);
if !(isClass (missionConfigFile >> "CfgLoadouts" >> _classname)) exitWith {
    [format["Loadout '%1' does not exist inside of mission config. No whitelist will be created.", _classname], "Arsenal Whitelist", true] call FUNC(warning);
    [];
};

private _loadout = parseSimpleArray getText (missionConfigFile >> "CfgLoadouts" >> _classname >> "loadout");
private _unitItems = str _loadout splitString "[]," joinString ",";
_unitItems = parseSimpleArray ("[" + _unitItems + "]");
_unitItems = _unitItems arrayIntersect _unitItems select {_x isEqualType "" && {_x != ""}};

private _commonGear = [
    // Goggles
    "G_Aviator",
    "rhs_googles_black",
    "rhs_googles_clear",
    "rhs_googles_orange",
    "rhs_googles_yellow",
    "rhs_ess_black",
    "G_Shades_Black",
    "G_Shades_Blue",
    "G_Shades_Green",
    "G_Shades_Red",
    "rhsusf_shemagh_grn",
    "rhsusf_shemagh2_grn",
    "rhsusf_shemagh_od",
    "rhsusf_shemagh2_od",
    "rhsusf_shemagh_tan",
    "rhsusf_shemagh2_tan",
    "rhsusf_shemagh_white",
    "rhsusf_shemagh2_white",
    "rhsusf_shemagh_gogg_grn",
    "rhsusf_shemagh2_gogg_grn",
    "rhsusf_shemagh_gogg_od",
    "rhsusf_shemagh2_gogg_od",
    "rhsusf_shemagh_gogg_tan",
    "rhsusf_shemagh2_gogg_tan",
    "rhsusf_shemagh_gogg_white",
    "rhsusf_shemagh2_gogg_white",
    "rhsusf_oakley_goggles_blk",
    "rhsusf_oakley_goggles_clr",
    "rhsusf_oakley_goggles_ylw",
    "USP_RAID_BLK2",
    "USP_BALACLAVA2",
    "USP_BALACLAVA_BLK",
    "USP_ADVANCER",
    "USP_CROSSBOW_BLK",
    "USP_GATORZ_BLK",
    "USP_OAKLEY_SI2",
    "USP_DETCORD_BLK",
    "USP_MFRAME_BLK",
    "USP_STRAIGHTJACKET_BLK",
    "USP_SHEMAGH_HEAD_CBR",
    "G_Spectacles",
    "G_Spectacles_Tinted",
    "USP_M50_BLK2",

    // Headgear
    "DAR_Beret_Mar",
    "rhsusf_patrolcap_ocp",
    "USP_BOONIE_HAT_MC",

    // Uniforms
    "USP_G3C_MC",
    "USP_G3C_KP_MC",
    "USP_G3C_KP_MX_MC",
    "USP_G3C_KP_OR_MC",
    "USP_G3C_MX_MC",
    "USP_G3C_OR_MC",
    "USP_G3C_RS_MC",
    "USP_G3C_RS_KP_MC",
    "USP_G3C_RS_KP_MX_MC",
    "USP_G3C_RS_KP_OR_MC",
    "USP_G3C_RS_MX_MC",
    "USP_G3C_RS_MX_MC",
    "USP_G3C_RS2_MC",
    "USP_G3C_RS2_KP_MC",
    "USP_G3C_RS2_KP_MX_MC",
    "USP_G3C_RS2_KP_OR_MC",
    "USP_G3C_RS2_MX_MC",
    "USP_G3C_RS2_OR_MC",
    "USP_G3F_MC",
    "USP_G3F_MX_MC",
    "USP_G3F_OR_MC",
    "USP_PCU_G3C_MX_MC",
    "USP_PCU_G3C_OR_MC",
    "USP_PCU_G3C_KP_MX_MC",
    "USP_PCU_G3C_KP_OR_MC",
    "USP_SOFTSHELL_G3C_MC",
    "USP_SOFTSHELL_G3C_KP_MC",
    "USP_SOFTSHELL_G3C_KP_MX_MC",
    "USP_SOFTSHELL_G3C_KP_OR_MC",
    "USP_SOFTSHELL_G3C_MX_MC",
    "USP_SOFTSHELL_G3C_OR_MC",
    "USP_G3F_MX_MCA",
    "USP_G3F_OR_MCA",
    "USP_G3F_G3C_KP_MX_MCA",
    "USP_G3F_G3C_KP_OR_MCA",
    "USP_OVERWHITE_G3C_KP_MX_MCA_MC",
    "USP_OVERWHITE_G3C_KP_OR_MCA_MC",
    "USP_OVERWHITE_G3C_MX_MCA_MC",
    "USP_OVERWHITE_G3C_OR_MCA_MC",
    

    //Chemlights
    "Chemlight_blue",
    "Chemlight_green",
    "ACE_Chemlight_HiBlue",
    "ACE_Chemlight_HiGreen",
    "ACE_Chemlight_HiRed",
    "ACE_Chemlight_HiWhite",
    "ACE_Chemlight_HiYellow",
    "ACE_Chemlight_IR",
    "ACE_Chemlight_Orange",
    "Chemlight_red",
    "ACE_Chemlight_UltraHiOrange",
    "ACE_Chemlight_White",
    "Chemlight_yellow",
    "ACE_Chemlight_Shield",

    // Grenades
    "SmokeShellBlue",
    "SmokeShellGreen",
    "SmokeShellOrange",
    "SmokeShellPurple",
    "SmokeShellRed",
    "SmokeShellYellow",
    "SmokeShell",
    "HandGrenade",
    "ACE_M84",
    "rhs_mag_mk3a2",
    "B_IR_Grenade",
    
    // Explosives
    "ACE_M26_Clacker",
    "ACE_DefusalKit",
    "ACE_Clacker",
    "SatchelCharge_Remote_Mag",
    "DemoCharge_Remote_Mag",
    "ClaymoreDirectionalMine_Remote_Mag",
    
    
    // Radios
    "ACRE_PRC343",
    "ACRE_PRC152",

    // Medical
    "ACE_EarPlugs",

    "ACE_quikclot",
    "ACE_packingBandage",
    "ACE_elasticBandage",
    "ACE_fieldDressing",
    "ACE_tourniquet",

    // Tools
    "ACE_SpareBarrel",

    "ACE_SpraypaintBlack",
    "ACE_SpraypaintBlue",
    "ACE_SpraypaintGreen",
    "ACE_SpraypaintRed",

    "rhsusf_bino_m24",
    "rhsusf_bino_m24_ARD",

    "ACE_Altimeter",
    "ACE_DAGR",
    "ACE_MapTools",
    "ACE_Flashlight_MX991",

    "ACE_IR_Strobe_Item",

    "ToolKit",
    "ACE_wirecutter",
    "ACE_EntrenchingTool",
    "ACE_CableTie",

    // NVG
    "USP_PVS14",
    "USP_PVS15",
    "USP_L4G19",
    "USP_RHINO",
    "ItemMap",
    "ItemWatch",
    "ItemCompass"
];

private _company = call FUNC(getCompanyVariable);
private _companyItems = switch (_company) do {
    case "alpha": {[
        // Helmets
        "H_Cap_tan",

        // Vest
        "B_ACU_crye_ocp_SH_1",
        "B_ACU_crye_ocp_SH_vest_1",

        // Magazines
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",
        "ACE_30Rnd_556x45_Stanag_M995_AP_mag",
        "rhs_mag_30Rnd_556x45_Mk262_PMAG",

        // NVG
        "USP_PVS14",
        "USP_PVS15",
        "USP_L4G19",
        "USP_RHINO"
    ]};
    case "charlie": {[
        
        //Helmets
        "USP_OPSCORE_FASTMTC_CGW",
        "USP_OPSCORE_FASTMTC_CMW",
        "USP_OPSCORE_FASTMTC_CMGSW",
        "USP_OPSCORE_FASTMTC_CMGTW",
        "USP_OPSCORE_FASTMTC_CMSW",
        "USP_OPSCORE_FASTMTC_CMTW",
        "USP_OPSCORE_FASTMTC_CW",
        "USP_OPSCORE_FASTMTC_CGSW",
        "USP_OPSCORE_FASTMTC_CGTW",
        "USP_OPSCORE_FASTMTC_CSW",
        "USP_OPSCORE_FASTMTC_CTW",
        "rhsusf_ach_helmet_camo_ocp",
        "H_HelmetHBK_ocp_headset_F",
        "H_HelmetB_camo",

        // Backpack
        "B_AssaultPack_mcamo",
        "B_Kitbag_mcamo",
        "rhsusf_assault_eagleaiii_ocp",
        "USP_PACK_BREACHER",
        "USP_PACK_FASTHAWK",
        "USP_PACK_POINTMAN",
        "USP_45L_RUCKSACK_MC",
        "USP_PATROL_PACK",
        "USP_ZIPON_PANEL_MC",
        "USP_PACK_HYDRATION",

        // Weapons
        "rhs_weap_M136",
        "rhs_weap_M136_hedp",
        "rhs_weap_M136_hp",

        // Grenades
        "HandGrenade",
        "ACE_M84",
        "rhs_mag_mk3a2",

        // Magazines
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",
        "ACE_30Rnd_556x45_Stanag_M995_AP_mag",
        "rhs_mag_30Rnd_556x45_Mk262_PMAG",
        "rhsusf_mag_17Rnd_9x19_FMJ",
        "rhsusf_200Rnd_556x45_mixed_soft_pouch",
        "rhsusf_100Rnd_762x51_m62_tracer",
        "rhs_mag_M397_HET",
        "rhs_mag_M433_HEDP",
        "ACE_HuntIR_M203",
        "ACE_40mm_Flare_white",
        "ACE_40mm_Flare_red",
        "ACE_40mm_Flare_ir",
        "rhs_mag_m664_red_cluster",
        "rhs_mag_m713_Red",
        "rhs_mag_m716_yellow",
        
        "rhs_mag_maaws_HE",
        "rhs_mag_maaws_HEAT",
        "MAA_MAAWS_ASM509",
        "MAA_MAAWS_GMM_MT",
        "NDS_M_6Rnd_60mm_HE_0",
        "NDS_M_6Rnd_60mm_HE",
        "NDS_M_6Rnd_60mm_SMOKE",
        "NDS_M_6Rnd_60mm_ILLUM",
 

        //Night Vision
        "USP_PVS14",
        "USP_PVS15",
        "USP_L4G19",
        "USP_RHINO",
        

        // Explosives
        "ACE_M26_Clacker",
        "ACE_DefusalKit",
        "ACE_Clacker",
        "SatchelCharge_Remote_Mag",
        "DemoCharge_Remote_Mag",
        "AMP_Breaching_Charge_Mag",
        "ClaymoreDirectionalMine_Remote_Mag"
    ]};
    case "bravo": {[
        // Helmets
        "UK3CB_BAF_H_Mk7_Scrim_A",
        "UK3CB_BAF_H_Mk7_Scrim_B",
        "UK3CB_BAF_H_Mk7_Scrim_C",
        "rhsusf_ach_helmet_camo_ocp",
        "H_HelmetHBK_ocp_headset_F",
        "H_HelmetB_camo",
        "USP_OPS_FASTXP_TAN_MC_02",
        "USP_OPS_FASTXP_TAN_MC_03",
        "USP_OPS_FASTXP_TAN_MC_04",
        "USP_OPS_FASTXP_TAN_MC_05",
        "USP_OPS_FASTXP_TAN_MC_06",
        "USP_OPS_FASTXP_TAN_MC_07",
        "USP_OPS_FASTXP_TAN_MC_08",
        "USP_BOONIE_HAT_MC",
        
        //Vests
        "LV119",
        "LV1192",
        "LV1193",
        "USP_VEST_STRANDHOGG2_MC",
        "USP_VEST_STRANDHOGG2_CBR",
        "JPC23",
        "JPC25",
        "JPC24",
        "JPC2_MC",
        "JPC22",
        
        //Items
        "USP_PVS14",
        "USP_PVS15",
        "USP_L4G24",
        "USP_RHINO",
        "USP_L4G19",
        "USP_PVS31",
        "ItemcTab",
        "ItemAndroid",
        "ACE_Vector",
        "Rev_darter_item",
        "B_UavTerminal",
        "ACE_SpareBarrel",
        "ACE_MX2A",
        "Rev_pelican_item",
        "kat_Painkiller",

        // Backpack
        "B_Carryall_mcamo",
        "B_UAV_01_backpack_F",
        "B_Kitbag_mcamo",
        "UK3CB_BAF_B_Bergen_MTP_Rifleman_H_A",
        "UK3CB_BAF_B_Bergen_MTP_Rifleman_H_B",
        "UK3CB_BAF_B_Bergen_MTP_Rifleman_H_C",
        "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A",
        "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_B",
        "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C",
        "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D",
        "UK3CB_BAF_B_Bergen_MTP_Radio_H_A",
        "UK3CB_BAF_B_Bergen_MTP_Radio_H_B",
        "UK3CB_BAF_B_Bergen_MTP_Radio_L_A",
        "UK3CB_BAF_B_Bergen_MTP_Radio_L_B",
        "UK3CB_BAF_B_Bergen_MTP_JTAC_H_A",
        "UK3CB_BAF_B_Bergen_MTP_JTAC_L_A",
        "UK3CB_BAF_B_Bergen_MTP_Engineer_H_A",
        "UK3CB_BAF_B_Bergen_MTP_Engineer_L_A",
        "UK3CB_BAF_B_Bergen_MTP_SL_H_A",
        "UK3CB_BAF_B_Bergen_MTP_SL_L_A",
        "UK3CB_B_Backpack_Pocket_OLI",
        "UK3CB_B_Backpack_Pocket",
        "B_rhsusf_B_BACKPACK",
        "USP_PACK_BREACHER",
        "USP_PACK_FASTHAWK",
        "USP_PACK_POINTMAN",
        "USP_45L_RUCKSACK_MC",
        "USP_PATROL_PACK",
        "USP_ZIPON_PANEL_MC",
        "USP_PACK_HYDRATION",

        // Weapons
        "dzn_MG_Tripod_M122A1_M240Mount_Carry",
        "ace_csw_carryMortarBaseplate",
        "ace_compat_rhs_usf3_m252_carry",
        
        // Grenades
        "HandGrenade",
        "ACE_M84",
        "rhs_mag_mk3a2",

        // Magazines
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",
        "rhs_mag_30Rnd_556x45_Mk262_PMAG",
        "ACE_30Rnd_556x45_Stanag_M995_AP_mag",
        "rhsusf_mag_17Rnd_9x19_FMJ",
        "rhsusf_200Rnd_556x45_mixed_soft_pouch",
        "rhsusf_100Rnd_762x51_m62_tracer",

        "rhs_mag_M397_HET",
        "rhs_mag_M433_HEDP",
        "ACE_HuntIR_M203",
        "ACE_40mm_Flare_ir",
        "ACE_40mm_Flare_white",
        "ACE_40mm_Flare_red",
        "rhs_mag_m664_red_cluster",
        "rhs_mag_m713_Red",
        "rhs_mag_m716_yellow",
        
        "rhs_mag_maaws_HE",
        "rhs_mag_maaws_HEAT",
        "MAA_MAAWS_ASM509",
        "MAA_MAAWS_GMM_MT",
        "NDS_M_6Rnd_60mm_HE_0",
        "NDS_M_6Rnd_60mm_HE",
        "NDS_M_6Rnd_60mm_SMOKE",
        "NDS_M_6Rnd_60mm_ILLUM",
        
        "ACE_1Rnd_82mm_Mo_HE",
        "ACE_1Rnd_82mm_Mo_Illum",
        "ACE_1Rnd_82mm_Mo_HE_LaserGuided",
        "ACE_1Rnd_82mm_Mo_Smoke",
        
        // Explosives
        "ACE_M26_Clacker",
        "ACE_DefusalKit",
        "ACE_Clacker",
        "SatchelCharge_Remote_Mag",
        "DemoCharge_Remote_Mag",
        "ClaymoreDirectionalMine_Remote_Mag",
        "AMP_Breaching_Charge_Mag",
        
        // Radios
        "ACRE_PRC152",
        "ACRE_PRC343",
        "ACRE_PRC117F"
    ]};
    default {[
        // Grenades
        "HandGrenade",
        "ACE_M84",

        // Magazines
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",
        "rhs_mag_30Rnd_556x45_Mk262_PMAG",
        "ACE_30Rnd_556x45_Stanag_M995_AP_mag",
        "rhsusf_mag_17Rnd_9x19_FMJ",
        "rhsusf_200Rnd_556x45_mixed_soft_pouch",
        "rhsusf_100Rnd_762x51_m62_tracer",

        "rhs_mag_M397_HET",
        "rhs_mag_M433_HEDP",
        "ACE_HuntIR_M203",
        "ACE_40mm_Flare_ir",
        "ACE_40mm_Flare_white",
        "ACE_40mm_Flare_red",
        "rhs_mag_m664_red_cluster",
        "rhs_mag_m713_Red",
        "rhs_mag_m716_yellow",
        
        "rhs_mag_maaws_HE",
        "rhs_mag_maaws_HEAT",
        "MAA_MAAWS_ASM509",
        "MAA_MAAWS_GMM_MT",
        "NDS_M_6Rnd_60mm_HE_0",
        "NDS_M_6Rnd_60mm_HE",
        "NDS_M_6Rnd_60mm_SMOKE",
        "NDS_M_6Rnd_60mm_ILLUM",
        
        "ACE_1Rnd_82mm_Mo_HE",
        "ACE_1Rnd_82mm_Mo_Illum",
        "ACE_1Rnd_82mm_Mo_HE_LaserGuided",
        "ACE_1Rnd_82mm_Mo_Smoke",
        
        //Attachements
        "rhsusf_acc_anpeq15side_bk",
        "rhsusf_acc_anpeq15_bk_top",
        "rhsusf_acc_anpeq15",
        "rhsusf_acc_anpeq15_light",
        "rhsusf_acc_anpeq15_bk",
        "rhsusf_acc_anpeq15_bk_light",
        "rhsusf_acc_m952v",
        "acc_flashlight",
        "rhsusf_acc_eotech_552",
        "optic_hamr",
        "rhsusf_acc_t1_high",
        "rhsusf_acc_g33_xps3",
        "rhsusf_acc_compm4",
        "rhsusf_acc_eotech_552",
        "rhsusf_acc_g33_t1",
        "rhsusf_acc_su230_mrds",
        "rhsusf_acc_ELCAN",
        "rhsusf_acc_acog3",
        "rhsusf_acc_eotech_xps3",
        "rhsusf_acc_eotech",
        "optic_MRCO",
        "rhsusf_acc_acog_rmr",
        "rhsusf_acc_acog_d",
        "rhsusf_acc_acog_wd"
    ]};
};

private _medicRole = getNumber (missionConfigFile >> "CfgLoadouts" >> _classname >> "abilityMedic");
_medicGear = if (_medicRole >= 1) then {[
        "ACE_microDAGR",
        "ItemAndroid",

        "kat_IV_16",
        "ACE_adenosine",
        "kat_AED","kat_X_AED",
        "ACE_packingBandage",
        "ACE_quikclot","ACE_elasticBandage",
        "ACE_bloodIV",
        "ACE_bloodIV_250",
        "ACE_bloodIV_500",
        "ACE_bodyBag",
        "kat_plate",
        "ACE_CableTie",
        "ACE_Chemlight_Shield",
        "kat_clamp",
        "Rev_pelican_item",
        "kat_vacuum",
        "kat_EACA",
        "ACE_EarPlugs",
        "ACE_EntrenchingTool",
        "ACE_epinephrine",
        "kat_etomidate",
        "kat_IO_FAST",
        "kat_flumazenil",
        "kat_lidocaine",
        "kat_lorazepam",
        "ACE_morphine",
        "kat_naloxone",
        "kat_nitroglycerin",
        "kat_norepinephrine",
        "ACE_personalAidKit",
        "kat_phenylephrine",
        "kat_phenylephrine_inject",
        "ACE_plasmaIV",
        "ACE_plasmaIV_250",
        "ACE_plasmaIV_500",
        "kat_retractor",
        "ACE_salineIV",
        "ACE_salineIV_250",
        "ACE_salineIV_500",
        "kat_scalpel",
        "ACE_splint",
        "ACE_surgicalKit",
        "ACE_tourniquet",
        "kat_TXA",
        "kat_Carbonate",
        "kat_Painkiller"
        
]} else {[]};

private _roleSpecific = switch (call EFUNC(gear,getLoadoutRole)) do {
    case "officer": {[
        "ACE_microDAGR",
        "ACE_HuntIR_monitor",
        "ItemAndroid",
        "ItemcTab",

        "ACE_Vector",
        "ACE_MX2A",
        "rhsusf_acc_acog",
        "rhsusf_acc_acog2",
        "rhsusf_acc_acog3",
        "rhsusf_acc_acog_rmr",
        "rhsusf_acc_acog_d",
        "rhsusf_acc_acog_wd"
    ]};
    case "squadleader": {[
        "ACE_microDAGR",
        "ACE_HuntIR_monitor",
        "ItemAndroid",
        "rhsusf_weap_glock17g4",
        "ACE_Vector",
        "ACE_MX2A",
        "UK3CB_BAF_B_Bergen_MTP_SL_L_A",
        "UK3CB_BAF_B_Bergen_MTP_SL_H_A"
    ]};
    case "fireteamleader": {[
        "ACE_microDAGR",
        "ACE_MX2A",
        "rhsusf_weap_glock17g4",
        "ACE_HuntIR_monitor"
    ]};
    case "pilot";
    case "rotarypilot": {[
        "H_PilotHelqmetHeli_B",

        "rhsusf_hgu56p_black",
        "rhsusf_hgu56p_green",
        "rhsusf_hgu56p_pink",
        "rhsusf_hgu56p_saf",
        "rhsusf_hgu56p_tan",
        "rhsusf_hgu56p_usa",
        "rhsusf_hgu56p_visor_black",
        "rhsusf_hgu56p_visor_green",
        "rhsusf_hgu56p_visor_pink",
        "rhsusf_hgu56p_visor_saf",
        "rhsusf_hgu56p_visor_tan",
        "rhsusf_hgu56p_visor_usa",
        "rhsusf_hgu56p_visor_white",
        "rhsusf_hgu56p_visor",
        "rhsusf_hgu56p_white",
        "rhsusf_hgu56p",

        "rhsusf_ihadss"
    ]};
    case "rotarycrew": {[
        "H_CrewHelmetHeli_B",
        "FIR_HGU56P_Skull_Death",
        "FIR_HGU56P_Skull",

        "rhsusf_hgu56p_mask_black",
        "rhsusf_hgu56p_mask_black_skull",
        "rhsusf_hgu56p_visor_mask_black",
        "rhsusf_hgu56p_visor_mask_Empire_black",
        "rhsusf_hgu56p_visor_mask_black_skull",
        "rhsusf_hgu56p_mask_green",
        "rhsusf_hgu56p_mask_green_mo",
        "rhsusf_hgu56p_visor_mask_green",
        "rhsusf_hgu56p_visor_mask_green_mo",
        "rhsusf_hgu56p_mask",
        "rhsusf_hgu56p_mask_mo",
        "rhsusf_hgu56p_mask_skull",
        "rhsusf_hgu56p_visor_mask",
        "rhsusf_hgu56p_visor_mask_mo",
        "rhsusf_hgu56p_visor_mask_skull",
        "rhsusf_hgu56p_mask_tan",
        "rhsusf_hgu56p_visor_mask_tan",
        "rhsusf_hgu56p_mask_pink",
        "rhsusf_hgu56p_visor_mask_pink",
        "rhsusf_hgu56p_mask_saf",
        "rhsusf_hgu56p_visor_mask_saf",
        "rhsusf_hgu56p_mask_smiley",
        "rhsusf_hgu56p_visor_mask_smiley"
    ]};
    case "pilotfighter": {[
        "RHS_jetpilot_usaf",

        "FIR_hgu26p",
        "FIR_hgu26p_camo",
        "FIR_HGU33P",
        "FIR_HGU33P_VF1",
        "FIR_HGU33P_VF111",
        "FIR_HGU33P_VF84",
        "FIR_USHelmetType2",
        "FIR_USHelmetType2_USMC",
        "FIR_USHelmetType2_Navy",
        "FIR_USHelmetType2_USAF_80s",
        "FIR_USHelmetType2_VF103",
        "FIR_USHelmetType2_VF154",
        "FIR_USHelmetType1",
        "FIR_USHelmetType1_Navy",
        "FIR_USHelmetType1_USMC",
        "FIR_USHelmetType1_VF31",
        "FIR_USHelmetType1_Agg",
        "FIR_HGU55PJ",

        "FIR_JHMCS",
        "FIR_JHMCS_II",
        "FIR_JHMCS_Type2"
    ]};
    case "weapons": {[
        "NDS_M_6Rnd_60mm_HE_0",
        "NDS_M_6Rnd_60mm_HE",
        "NDS_M_6Rnd_60mm_SMOKE",
        "NDS_M_6Rnd_60mm_ILLUM",

        // Launchers
        "rhs_weap_fgm148",
        "rhs_fgm148_magazine_AT",
        
        "rhs_weap_fim92",
        "rhs_fim92_mag",
        
        "rhs_weap_maaws",
        "rhs_optic_maaws",
        "rhs_mag_maaws_HE",
        "rhs_mag_maaws_HEDP",
        "rhs_mag_maaws_HEAT",

        "ace_compat_rhs_usf3_mag_TOW2b_aero",
        "ace_compat_rhs_usf3_mag_TOW2bb",
        "ace_compat_rhs_usf3_48Rnd_40mm_MK19_M430A1",

        // Backpacks
        "B_Carryall_mcamo",
        "ACE_Vector",
        "NDS_B_M224_mortar",
        
        "ace_compat_rhs_usf3_tow_carry",
        "ace_csw_m3CarryTripodLow",
        "ace_compat_rhs_usf3_mk19_carry",
        "ace_csw_m220CarryTripod"
    ]};

    default {[]};
};

private _primaryWeapon = if (!isNil{_loadout#0#0}) then {_loadout#0#0} else {""};
private _weaponSystemSpecific = switch (true) do {

    case (_primaryWeapon isKindof ['rhs_weap_hk416d10', configFile >> 'CfgWeapons']
            || _primaryWeapon isKindof ['rhs_weap_hk416d145', configFile >> 'CfgWeapons']): {[
        "rhs_weap_hk416d10",
        "rhs_weap_hk416d10_LMT",
        "rhs_weap_hk416d10_LMT_d",
        "rhs_weap_hk416d10_LMT_wd",

        "rhs_weap_hk416d145",
        "rhs_weap_hk416d145_d",
        "rhs_weap_hk416d145_d_2",
        "rhs_weap_hk416d145_wd",
        "rhs_weap_hk416d145_wd_2",

        // Attachements
        "rhsusf_acc_anpeq15side_bk",
        "rhsusf_acc_anpeq15_bk_top",
        "rhsusf_acc_anpeq15",
        "rhsusf_acc_anpeq15_light",
        "rhsusf_acc_anpeq15_bk",
        "rhsusf_acc_anpeq15_bk_light",
        "rhsusf_acc_m952v",
        "acc_flashlight",

        "rhsusf_acc_eotech_552",
        "optic_hamr",
        "rhsusf_acc_anpas13gv1",
        "rhsusf_acc_t1_high",
        "rhsusf_acc_g33_xps3",
        "rhsusf_acc_compm4",
        "rhsusf_acc_eotech_552",
        "rhsusf_acc_g33_t1",
        "rhsusf_acc_su230_mrds",
        "rhsusf_acc_ELCAN",
        "rhsusf_acc_acog3",
        "rhsusf_acc_eotech_xps3",
        "rhsusf_acc_eotech",
        "optic_MRCO"
    ]};

    case (_primaryWeapon isKindof ['rhs_weap_hk416d145_m320', configFile >> 'CfgWeapons']
            || _primaryWeapon isKindof ['rhs_weap_hk416d10_m320', configFile >> 'CfgWeapons']): {[
        "rhs_weap_hk416d145_m320",
        "rhs_weap_hk416d10_m320"
    ]};

    case (_primaryWeapon isKindof ['rhs_weap_mk18_m320', configFile >> 'CfgWeapons']
            || _primaryWeapon isKindof ['rhs_weap_m16a4_carryhandle_M203', configFile >> 'CfgWeapons']): {[

        "rhs_weap_m4a1_m320",
        "rhs_weap_mk18_m320",
        "rhs_weap_M320",
        "rhs_weap_m4a1_carryhandle",
        "rhs_weap_m4a1_carryhandle_mstock",
        "rhs_weap_m4a1",
        "rhs_weap_m4a1_mstock",
        "rhs_weap_m4a1_d",
        "rhs_weap_m4a1_d_mstock",
        "rhs_weap_m4a1_wd",
        "rhs_weap_m4a1_wd_mstock",

        "rhs_weap_m4a1_blockII",
        "rhs_weap_m4a1_blockII_KAC",
        "rhs_weap_m4a1_blockII_bk",
        "rhs_weap_m4a1_blockII_KAC_bk",
        "rhs_weap_m4a1_blockII_d",
        "rhs_weap_m4a1_blockII_KAC_d",
        "rhs_weap_m4a1_blockII_wd",
        "rhs_weap_m4a1_blockII_KAC_wd",
        
        "rhs_weap_mk18",
        "rhs_weap_mk18_bk",
        "rhs_weap_mk18_KAC_bk",
        "rhs_weap_mk18_d",
        "rhs_weap_mk18_KAC_d",
        "rhs_weap_mk18_KAC",
        "rhs_weap_mk18_wd",
        "rhs_weap_mk18_KAC_wd",

        "rhs_mag_M397_HET",
        "rhs_mag_M433_HEDP",
        "ACE_HuntIR_M203",

        "rhs_mag_M583A1_white",
        "rhs_mag_M585_white_cluster",
        "rhs_mag_m661_green",
        "rhs_mag_m662_red",
        "rhs_mag_M663_green_cluster",
        "rhs_mag_M664_red_cluster",
        "rhs_mag_m713_Red",
        "rhs_mag_m714_White",
        "rhs_mag_m715_Green",
        "rhs_mag_m716_yellow"
    ]};

    case (_primaryWeapon isKindof ['rhs_weap_m4a1', configFile >> 'CfgWeapons']
            || _primaryWeapon isKindof ['rhs_weap_m16a4', configFile >> 'CfgWeapons']): {[

        "rhs_weap_m4a1_carryhandle",
        "rhs_weap_m4a1_carryhandle_mstock",
        "rhs_weap_m4a1",
        "rhs_weap_m4a1_mstock",
        "rhs_weap_m4a1_d",
        "rhs_weap_m4a1_d_mstock",
        "rhs_weap_m4a1_wd",
        "rhs_weap_m4a1_wd_mstock",

        "rhs_weap_m4a1_blockII",
        "rhs_weap_m4a1_blockII_KAC",
        "rhs_weap_m4a1_blockII_bk",
        "rhs_weap_m4a1_blockII_KAC_bk",
        "rhs_weap_m4a1_blockII_d",
        "rhs_weap_m4a1_blockII_KAC_d",
        "rhs_weap_m4a1_blockII_wd",
        "rhs_weap_m4a1_blockII_KAC_wd",
        
        "rhs_weap_mk18",
        "rhs_weap_mk18_bk",
        "rhs_weap_mk18_KAC_bk",
        "rhs_weap_mk18_d",
        "rhs_weap_mk18_KAC_d",
        "rhs_weap_mk18_KAC",
        "rhs_weap_mk18_wd",
        "rhs_weap_mk18_KAC_wd",
        
        "rhsusf_acc_anpeq15side_bk",
        "rhsusf_acc_anpeq15_bk_top",
        "rhsusf_acc_anpeq15",
        "rhsusf_acc_anpeq15_light",
        "rhsusf_acc_anpeq15_bk",
        "rhsusf_acc_anpeq15_bk_light",
        "rhsusf_acc_m952v",
        "acc_flashlight",

        "rhsusf_acc_eotech_552",
        "optic_hamr",
        "rhsusf_acc_anpas13gv1",
        "rhsusf_acc_t1_high",
        "rhsusf_acc_g33_xps3",
        "rhsusf_acc_compm4",
        "rhsusf_acc_eotech_552",
        "rhsusf_acc_g33_t1",
        "rhsusf_acc_su230_mrds",
        "rhsusf_acc_ELCAN",
        "rhsusf_acc_acog3",
        "rhsusf_acc_eotech_xps3",
        "rhsusf_acc_eotech",
        "optic_MRCO"
    ]};

    case (_primaryWeapon isKindof ['rhs_weap_m4', configFile >> 'CfgWeapons']): {[
        "rhs_weap_m4_carryhandle",
        "rhs_weap_m4_carryhandle_mstock",
        "rhs_weap_m4_mstock"
    ]};

    case (primaryWeapon player isKindof ['rhs_weap_m240_base', configFile >> 'CfgWeapons']): {[
        "rhs_weap_m240B",
        "rhs_weap_m240G"
    ]};

    case (primaryWeapon player isKindof ['rhs_weap_m249_pip', configFile >> 'CfgWeapons']
            || _primaryWeapon isKindof ['rhs_weap_m249_pip_L', configFile >> 'CfgWeapons']
            || _primaryWeapon isKindof ['rhs_weap_m249_pip_S', configFile >> 'CfgWeapons']): {[
        "rhs_weap_m249_pip",
        "rhs_weap_m249_light_L",
        "rhs_weap_m249_pip_L_para",
        "rhs_weap_m249_pip_L",
        "rhs_weap_m249_pip_ris",
        "rhs_weap_m249_light_S",
        "rhs_weap_m249_pip_S_para",
        "rhs_weap_m249_pip_S",

        // Attachements
        "rhsusf_acc_kac_grip_saw_bipod",
        "rhsusf_acc_grip4",
        "rhsusf_acc_grip4_bipod",
        "rhsusf_acc_saw_lw_bipod"
    ]};

    default {[]};
};

private _whitelist = _commonGear + _unitItems + _companyItems + _roleSpecific + _medicGear + _weaponSystemSpecific;

_whitelist
