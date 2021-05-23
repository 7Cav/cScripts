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

private _loadout = [player] call EFUNC(gear,getCurrentLoadout);
private _unitItems = parseSimpleArray getText (missionConfigFile >> "CfgLoadouts" >> _loadout >> "loadout");
_unitItems = str _unitItems splitString "[]," joinString ",";
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
    "G_Spectacles",
    "G_Spectacles_Tinted",
    "G_AirPurifyingRespirator_01_F",

    // Headgear
    "DAR_Beret_Mar",

    // Uniforms
    "rhs_uniform_cu_ocp",
    "rhs_uniform_cu_ocp_1stcav",

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

    "ItemMap",
    "ItemWatch",
    "ItemCompass",
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
    "rhsusf_ANPVS_14"
];

private _company = call FUNC(getCompanyVariable);
private _companyItems = switch (_company) do {
    case "alpha": {[
        // Helmets
        "H_Cap_tan",

        // Uniform
        "rhs_uniform_acu_ocp",
        "rhs_uniform_acu_oefcp",

        // Magazines
        "rhs_mag_20Rnd_556x45_M855A1_Stanag",
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",

        // NVG
        "rhsusf_ANPVS_15",
        "NVGogglesB_blk_F"
    ]};
    case "charlie": {[
        // Helmets
        "rhsusf_patrolcap_ocp",
        "rhs_Booniehat_ocp",

        "rhsusf_ach_helmet_ocp",
        "rhsusf_ach_helmet_ocp_alt",
        "rhsusf_ach_helmet_ESS_ocp",
        "rhsusf_ach_helmet_ESS_ocp_alt",
        "rhsusf_ach_helmet_headset_ocp",
        "rhsusf_ach_helmet_headset_ocp_alt",
        "rhsusf_ach_helmet_headset_ess_ocp",
        "rhsusf_ach_helmet_headset_ess_ocp_alt",
        "rhsusf_ach_helmet_camo_ocp",
        "rhsusf_ach_helmet_ocp_norotos",

        // Uniform
        "rhs_uniform_acu_ocp",
        "rhs_uniform_acu_oefcp",

        // Backpack
        "B_AssaultPack_mcamo",
        "B_Kitbag_mcamo",

        // Weapons
        "rhs_weap_M136",
        "rhs_weap_M136_hedp",
        "rhs_weap_M136_hp",

        // Grenades
        "rhs_mag_m67",
        "ACE_M84",

        // Magazines
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",

        "rhsusf_100Rnd_556x45_soft_pouch",
        "rhsusf_100Rnd_556x45_soft_pouch_coyote",
        "rhsusf_100Rnd_556x45_soft_pouch_ucp",

        "rhsusf_100Rnd_556x45_mixed_soft_pouch",
        "rhsusf_100Rnd_556x45_mixed_soft_pouch_ucp",
        "rhsusf_100Rnd_556x45_mixed_soft_pouch_coyote",

        "rhsusf_200Rnd_556x45_soft_pouch_coyote",
        "rhsusf_200Rnd_556x45_soft_pouch",
        "rhsusf_200Rnd_556x45_soft_pouch_ucp",

        "rhsusf_200Rnd_556x45_mixed_soft_pouch",
        "rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote",
        "rhsusf_200Rnd_556x45_mixed_soft_pouch_ucp",

        "rhsusf_200Rnd_556x45_box",
        "rhsusf_200rnd_556x45_mixed_box",

        // Attachements
        "rhsusf_acc_anpeq15side_bk",
        "rhsusf_acc_anpeq15_bk_top",
        "rhsusf_acc_anpeq15",
        "rhsusf_acc_anpeq15_light",
        "rhsusf_acc_anpeq15_bk",
        "rhsusf_acc_anpeq15_bk_light",
        "rhsusf_acc_m952v",

        "rhsusf_acc_sfmb556",
        "rhsusf_acc_sf3p556",

        "rhsusf_acc_grip2",
        "rhsusf_acc_grip2_tan",
        "rhsusf_acc_grip2_wd",
        "rhsusf_acc_kac_grip",
        "rhsusf_acc_grip1",
        "rhsusf_acc_rvg_blk",
        "rhsusf_acc_rvg_de",
        "rhsusf_acc_tdstubby_blk",
        "rhsusf_acc_tdstubby_tan",
        "rhsusf_acc_grip3",
        "rhsusf_acc_grip3_tan",

        "rhsusf_acc_eotech_552",
        "rhsusf_acc_compm4",

        // Explosives
        "ACE_Clacker",
        "ClaymoreDirectionalMine_Remote_Mag",
        "rhsusf_m112_mag",
        "rhsusf_m112x4_mag",
        "SatchelCharge_Remote_Mag"
    ]};
    case "bravo": {[
        // Helmets
        "rhsusf_patrolcap_ocp",
        "rhs_Booniehat_ocp",

        "rhsusf_ach_helmet_ocp",
        "rhsusf_ach_helmet_ocp_alt",
        "rhsusf_ach_helmet_ESS_ocp",
        "rhsusf_ach_helmet_ESS_ocp_alt",
        "rhsusf_ach_helmet_headset_ocp",
        "rhsusf_ach_helmet_headset_ocp_alt",
        "rhsusf_ach_helmet_headset_ess_ocp",
        "rhsusf_ach_helmet_headset_ess_ocp_alt",
        "rhsusf_ach_helmet_camo_ocp",
        "rhsusf_ach_helmet_ocp_norotos",

        // Backpack
        "B_Carryall_mcamo",
        "B_UAV_01_backpack_F",
        "B_Kitbag_mcamo",
        "NDS_B_M224_mortar",

        // Weapons
        "rhs_weap_M136",
        "rhs_weap_M136_hedp",
        "rhs_weap_M136_hp",

        // Grenades
        "rhs_mag_m67",
        "ACE_M84",

        // Magazines
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan",
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red",

        "rhsusf_100Rnd_556x45_soft_pouch",
        "rhsusf_100Rnd_556x45_soft_pouch_coyote",
        "rhsusf_100Rnd_556x45_soft_pouch_ucp",

        "rhsusf_100Rnd_556x45_mixed_soft_pouch",
        "rhsusf_100Rnd_556x45_mixed_soft_pouch_ucp",
        "rhsusf_100Rnd_556x45_mixed_soft_pouch_coyote",

        "rhsusf_200Rnd_556x45_soft_pouch_coyote",
        "rhsusf_200Rnd_556x45_soft_pouch",
        "rhsusf_200Rnd_556x45_soft_pouch_ucp",

        "rhsusf_200Rnd_556x45_mixed_soft_pouch",
        "rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote",
        "rhsusf_200Rnd_556x45_mixed_soft_pouch_ucp",

        "rhsusf_200Rnd_556x45_box",
        "rhsusf_200rnd_556x45_mixed_box",

        "rhs_fgm148_magazine_AT",

        "NDS_M_6Rnd_60mm_HE_0",
        "NDS_M_6Rnd_60mm_HE",
        "NDS_M_6Rnd_60mm_SMOKE",
        "NDS_M_6Rnd_60mm_ILLUM",

        // Attachements
        "rhsusf_acc_anpeq15side_bk",
        "rhsusf_acc_anpeq15_bk_top",
        "rhsusf_acc_anpeq15",
        "rhsusf_acc_anpeq15_light",
        "rhsusf_acc_anpeq15_bk",
        "rhsusf_acc_anpeq15_bk_light",
        "rhsusf_acc_m952v",

        "rhsusf_acc_ELCAN",
        "rhsusf_acc_acog3",
        "rhsusf_acc_eotech_xps3",
        "rhsusf_acc_eotech",

        "rhsusf_acc_grip2",
        "rhsusf_acc_grip2_tan",
        "rhsusf_acc_grip2_wd",
        "rhsusf_acc_kac_grip",
        "rhsusf_acc_grip1",
        "rhsusf_acc_rvg_blk",
        "rhsusf_acc_rvg_de",
        "rhsusf_acc_tdstubby_blk",
        "rhsusf_acc_tdstubby_tan",
        "rhsusf_acc_grip3",
        "rhsusf_acc_grip3_tan",

        "acc_flashlight",
        "rhsusf_acc_compm4",
        "rhsusf_acc_eotech_552",

        // Explosives
        "ACE_Clacker",
        "ClaymoreDirectionalMine_Remote_Mag",
        "rhsusf_m112_mag",
        "rhsusf_m112x4_mag",
        "SatchelCharge_Remote_Mag",
        
        // Radios
        "ACRE_PRC117F"
    ]};
    default {[
        // Helmets
        "rhsusf_ach_helmet_ocp",
        "rhsusf_ach_helmet_ocp_alt",

        // Grenades
        "rhs_mag_m67",
        "ACE_M84",

        // Magazines
        "rhs_mag_20Rnd_556x45_M855A1_Stanag",
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"
    ]};
};

private _roleSpecific = switch ([player] call EFUNC(gear,getLoadoutRole)) do {
    case "officer": {[
        "ACE_microDAGR",
        "ACE_HuntIR_monitor",
        "ItemAndroid",
        "ItemcTab",

        "ACE_VectorDay",

        "rhsusf_acc_acog",
        "rhsusf_acc_acog2",
        "rhsusf_acc_acog3",
        "rhsusf_acc_acog_rmr",
        "rhsusf_acc_acog_d",
        "rhsusf_acc_acog_wd",
        "rhsusf_acc_acog2_usmc",
        "rhsusf_acc_acog3_usmc",
        "rhsusf_acc_acog_usmc"
    ]};
    case "squadleader": {[
        "ACE_microDAGR",
        "ACE_HuntIR_monitor",
        "ItemAndroid",

        "ACE_VectorDay",

        "rhsusf_acc_acog",
        "rhsusf_acc_acog2",
        "rhsusf_acc_acog3",
        "rhsusf_acc_acog_rmr",
        "rhsusf_acc_acog_d",
        "rhsusf_acc_acog_wd",
        "rhsusf_acc_acog2_usmc",
        "rhsusf_acc_acog3_usmc",
        "rhsusf_acc_acog_usmc"
    ]};
    case "fireteamleader": {[
        "ACE_microDAGR",
        "ACE_HuntIR_monitor"
    ]};
    case "medic": {[
        "ACE_microDAGR",
        "ItemAndroid",

        "ACE_bodyBag",

        "ACE_quikclot",
        "ACE_packingBandage",
        "ACE_elasticBandage",
        "ACE_fieldDressing",
        "ACE_tourniquet",

        "ACE_adenosine",
        "ACE_epinephrine",
        "ACE_morphine",

        "ACE_salineIV",
        "ACE_salineIV_500",
        "ACE_salineIV_250",

        "ACE_splint",

        "ACE_surgicalKit",
        "ACE_personalAidKit"
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

    default {[]};
};

private _weaponSystemSpecific = switch (true) do {
    case (primaryWeapon player isKindof ['rhs_weap_m4a1_m320', configFile >> 'CfgWeapons']
            || primaryWeapon player isKindof ['rhs_weap_m16a4_carryhandle_M203', configFile >> 'CfgWeapons']): {[
        "rhs_weap_m16a4_carryhandle_M203",
        "rhs_weap_m16a4_imod_M203",

        "rhs_weap_m4a1_m320",
        "rhs_weap_m4a1_m203s",
        "rhs_weap_m4a1_carryhandle_m203S",
        "rhs_weap_m4a1_carryhandle_m203",
        "rhs_weap_m4a1_m203s_d",
        "rhs_weap_m4a1_m203s_wd",

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

    case (primaryWeapon player isKindof ['rhs_weap_m4a1', configFile >> 'CfgWeapons']
            || primaryWeapon player isKindof ['rhs_weap_m16a4', configFile >> 'CfgWeapons']): {[
        "rhs_weap_m16a4",
        "rhs_weap_m16a4_carryhandle",
        "rhs_weap_m16a4_imod",

        "rhs_weap_m4a1_carryhandle",
        "rhs_weap_m4a1_carryhandle_mstock",
        "rhs_weap_m4a1",
        "rhs_weap_m4a1_mstock",
        "rhs_weap_m4a1_d",
        "rhs_weap_m4a1_d_mstock",
        "rhs_weap_m4a1_wd",
        "rhs_weap_m4a1_wd_mstock"
    ]};
    case (primaryWeapon player isKindof ['rhs_weap_m240B', configFile >> 'CfgWeapons']): {[
        "rhs_weap_m240B"
    ]};
    case (primaryWeapon player isKindof ['rhs_weap_m249_pip', configFile >> 'CfgWeapons']
            || primaryWeapon player isKindof ['rhs_weap_m249_pip_L', configFile >> 'CfgWeapons']
            || primaryWeapon player isKindof ['rhs_weap_m249_pip_S', configFile >> 'CfgWeapons']): {[
        "rhs_weap_m249_pip",
        "rhs_weap_m249_light_L",
        "rhs_weap_m249_pip_L_para",
        "rhs_weap_m249_pip_L",
        "rhs_weap_m249_pip_ris",
        "rhs_weap_m249_light_S",
        "rhs_weap_m249_pip_S_para",
        "rhs_weap_m249_pip_S"
    ]};
    case (primaryWeapon player isKindof ['rhs_weap_m4', configFile >> 'CfgWeapons']): {[
        "rhs_weap_m4_carryhandle",
        "rhs_weap_m4_carryhandle_mstock",
        "rhs_weap_m4_mstock"
    ]};
    default {[]};
};

private _whitelist = _commonGear + _unitItems + _companyItems + _roleSpecific + _weaponSystemSpecific;

_whitelist