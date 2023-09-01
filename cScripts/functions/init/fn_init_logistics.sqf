#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function initzializes the logistical database
 *
 * Return Value:
 * HashMap
 *
 * Example:
 * call cScripts_fnc_init_logistics
 *
 * Public: No
 */

INFO("Logistics", "Creating logistical database");
private _dataArray = [
    // // // // // // //
    // Starter Crates \\
    // // // // // // //
    ["alpha_company", [
        // Radios
        ["ACRE_PRC343", 30],
        ["ACRE_PRC152", 20],
        ["ACRE_PRC117F", 30],
        ["TFAR_anprc152", 30],

        // Helmets
        ["H_Cap_tan", 0],
        ["H_Cap_headphones", 0],
        ["DAR_Beret_Mar", 12],
        ["rhsusf_hgu56p_black", 0],
        ["rhsusf_hgu56p_green", 0],
        ["rhsusf_hgu56p_mask_black_skull", 0],
        ["rhsusf_hgu56p_mask_black", 0],
        ["rhsusf_hgu56p_mask_green_mo", 0],
        ["rhsusf_hgu56p_mask_green", 0],
        ["rhsusf_hgu56p_mask_mo", 0],
        ["rhsusf_hgu56p_mask_pink", 0],
        ["rhsusf_hgu56p_mask_saf", 0],
        ["rhsusf_hgu56p_mask_skull", 0],
        ["rhsusf_hgu56p_mask_smiley", 0],
        ["rhsusf_hgu56p_mask_tan", 0],
        ["rhsusf_hgu56p_mask", 0],
        ["rhsusf_hgu56p_pink", 0],
        ["rhsusf_hgu56p_saf", 0],
        ["rhsusf_hgu56p_tan", 0],
        ["rhsusf_hgu56p_usa", 0],
        ["rhsusf_hgu56p_visor_black", 0],
        ["rhsusf_hgu56p_visor_green", 12],
        ["rhsusf_hgu56p_visor_mask_black_skull", 0],
        ["rhsusf_hgu56p_visor_mask_black", 12],
        ["rhsusf_hgu56p_visor_mask_Empire_black", 0],
        ["rhsusf_hgu56p_visor_mask_green_mo", 0],
        ["rhsusf_hgu56p_visor_mask_green", 0],
        ["rhsusf_hgu56p_visor_mask_mo", 0],
        ["rhsusf_hgu56p_visor_mask_pink", 0],
        ["rhsusf_hgu56p_visor_mask_saf", 0],
        ["rhsusf_hgu56p_visor_mask_skull", 0],
        ["rhsusf_hgu56p_visor_mask_smiley", 0],
        ["rhsusf_hgu56p_visor_mask_tan", 0],
        ["rhsusf_hgu56p_visor_mask", 0],
        ["rhsusf_hgu56p_visor_pink", 0],
        ["rhsusf_hgu56p_visor_saf", 0],
        ["rhsusf_hgu56p_visor_tan", 0],
        ["rhsusf_hgu56p_visor_usa", 0],
        ["rhsusf_hgu56p_visor_white", 0],
        ["rhsusf_hgu56p_visor", 12],
        ["rhsusf_hgu56p_white", 0],
        ["rhsusf_hgu56p", 0],
        ["rhsusf_ihadss", 12],
        ["rhsusf_patrolcap_ocp", 12],
        
        // Vest
        ["B_ACU_crye_ocp_SH_1", 0],
        ["B_ACU_crye_ocp_SH_vest_1", 0],


        // Weapons
        ["rhs_weap_m4a1_m320",2],
        ["rhs_weap_m249_pip_L",2],
        ["rhs_weap_m240B",2],
        ["rhs_weap_M136_hp",6],

        ["acc_flashlight",50],
        ["rhsusf_acc_anpeq15_bk_light",50],
        ["rhsusf_acc_acog_mdo",50],
        ["rhsusf_acc_ELCAN",50],
        ["rhsusf_acc_compm4",50],
        ["rhsusf_acc_acog3",50],
        ["rhsusf_acc_eotech_xps3",50],

        // Ammo
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 250],
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 250],
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan", 250],
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red", 250],
        ["ACE_30Rnd_556x45_Stanag_M995_AP_mag", 250],
        ["rhs_mag_30Rnd_556x45_Mk262_PMAG", 250],
        ["rhsusf_mag_15Rnd_9x19_JHP",30],

        // Grenades
        ["rhs_mag_m67",50],
        ["SmokeShell",50],
        ["SmokeShellRed",25],
        ["SmokeShellBlue",25],
        ["SmokeShellGreen",25],
        ["SmokeShellOrange",25],
        ["SmokeShellYellow",25],
        ["SmokeShellPurple",25],
        ["B_IR_Grenade",25],
        ["ACE_M84",25],
        ["rhs_mag_M441_HE",25],
        ["rhs_mag_M433_HEDP",25],
        ["rhs_mag_m714_White",25],
        ["rhs_mag_m715_Green",25],
        ["rhs_mag_m716_yellow",25],
        ["rhs_mag_m713_Red",25],
        ["ACE_HUNTIR_M203",25],
        ["ACE_40mm_Flare_red",250],
        ["Chemlight_green",25],
        ["Chemlight_red",25],
        ["Chemlight_yellow",25],

        // Tools and Items
        ["Toolkit",50],
        ["ACE_Flashlight_MX991",50],
        ["itemcTabHCam",50],
        ["ACE_CableTie",50],
        ["ACE_Chemlight_Shield",25],
        ["ACE_VMH3",20],
        ["ACE_VMM3",20],
        ["Flagstack_Red",20],
        ["Signpack_Mines",20],
        
        //cTab
        ["ItemAndroid", 0],
        ["ItemcTab", 0],

        // Medical
        ["ACE_EarPlugs",250],
        ["ACE_quikclot",250],
        ["ACE_packingBandage",250],
        ["ACE_tourniquet",250],
        ["ACE_splint",250],
        ["ACE_epinephrine",250],
        ["ACE_personalAidKit",250],
        ["ACE_bodyBag",250],
        ["kat_IV_16",250],
        ["kat_carbonate",250],
        ["kat_naloxone",250],
        ["kat_Painkiller",250],

        // NVG
        ["USP_PVS14", 0],
        ["USP_PVS15", 0],
        ["USP_L4G19", 0],
        ["USP_RHINO", 0],

        //Backpack
        ["USP_TACTICAL_PACK", 0],
        ["USP_TACTICAL_PACK_CCT", 0],
        ["USP_TACTICAL_PACK_CCT2", 0],
        ["USP_TACTICAL_PACK_CCT3", 0],
        ["USP_TACTICAL_PACK_CCT4", 0],
        ["USP_TACTICAL_PACK_CCT5", 0],
        ["USP_TACTICAL_PACK_CCT6", 0],
        ["USP_TACTICAL_PACK_CCT7", 0],
        ["USP_TACTICAL_PACK_CCT8", 0],
        ["UK3CB_US_B_B_RIF_OCP_Radio", 0]
    ]],

    ["bravo_company", [
        // Radios
        ["ACRE_PRC343", 30],
        ["ACRE_PRC152", 20],
        ["ACRE_PRC117F", 30],
        ["TFAR_anprc152", 30],

        // Helmets
        ["USP_OPS_FASTXP_TAN_MC_02", 0],
        ["USP_OPS_FASTXP_TAN_MC_03", 0],
        ["USP_OPS_FASTXP_TAN_MC_04", 0],
        ["USP_OPS_FASTXP_TAN_MC_05", 0],
        ["USP_OPS_FASTXP_TAN_MC_06", 0],
        ["USP_OPS_FASTXP_TAN_MC_07", 0],
        ["USP_OPS_FASTXP_TAN_MC_08", 0],
        ["USP_BOONIE_HAT_MC", 0],

        // Weapons
        ["dzn_MG_Tripod_M122A1_M240Mount_Carry", 0],
        ["ace_csw_carryMortarBaseplate", 0],
        ["ace_csw_staticMortarCarry", 0],

        ["avm224_W_M224_mortar_carry", 0],
        ["avm224_M_6Rnd_60mm_HE_csw", 0],
        ["avm224_M_6Rnd_60mm_HE_0_csw", 0],
        ["avm224_M_6Rnd_60mm_ILLUM_IR_csw", 0],
        ["avm224_M_6Rnd_60mm_SMOKE_csw", 0],

        ["ACE_1Rnd_82mm_Mo_HE", 0],
        ["ACE_1Rnd_82mm_Mo_Illum", 0],
        ["ACE_1Rnd_82mm_Mo_HE_LaserGuided", 0],
        ["ACE_1Rnd_82mm_Mo_Smoke", 0],

        // Ammo
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 250],
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 250],
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan", 250],
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red", 250],
        ["rhs_mag_30Rnd_556x45_Mk262_PMAG", 250],
        ["rhsusf_200Rnd_556x45_mixed_soft_pouch", 250],
        ["rhsusf_100Rnd_762x51_m62_tracer", 250],
        ["rhs_mag_M397_HET", 50],
        ["rhs_mag_M433_HEDP", 50],
        ["ACE_HuntIR_M203", 50],
        ["ACE_40mm_Flare_white", 50],
        ["ACE_40mm_Flare_red", 50],
        ["ACE_40mm_Flare_ir", 50],
        ["rhs_mag_m664_red_cluster", 50],
        ["rhs_mag_m713_Red", 50],
        ["rhs_mag_m716_yellow", 50],
        
        // NVG
        ["USP_PVS14", 0],
        ["USP_PVS15", 0],
        ["USP_L4G19", 0],
        ["USP_L4G24",0],
        ["USP_PVS31",0],
        ["USP_PVS31_HIGH",0],
        ["USP_PVS31_LOW",0],
        ["USP_PVS31_COMPACT",0],
        ["USP_RHINO", 0],

        // cTab
        ["ItemAndroid", 0],
        ["ItemcTab", 0],

        // Tools
        ["ACE_EntrenchingTool", 0],

        // Backpacks
        ["B_Carryall_mcamo", 0],
        ["B_UAV_01_backpack_F", 0],
        ["B_Kitbag_mcamo", 0],
        ["UK3CB_B_Backpack_Pocket_OLI", 0],
        ["UK3CB_B_Backpack_Pocket", 0],
        ["B_rhsusf_B_BACKPACK", 0],
        ["USP_TACTICAL_PACK_CCT", 0],
        ["USP_TACTICAL_PACK_CCT2", 0],
        ["USP_TACTICAL_PACK_CCT3", 0],
        ["USP_TACTICAL_PACK_CCT4", 0],
        ["USP_TACTICAL_PACK_CCT5", 0],
        ["USP_TACTICAL_PACK_CCT6", 0],
        ["USP_TACTICAL_PACK_CCT7", 0],
        ["USP_TACTICAL_PACK_CCT8", 0],
        ["UK3CB_US_B_B_RIF_OCP_Radio", 0]
    ]],

    ["bravo_company_viking", [
        // Radios
        ["ACRE_PRC343", 30],
        ["ACRE_PRC152", 20],
        ["ACRE_PRC117F", 20],
        ["TFAR_anprc152", 30],

        // Lunchers and mortars
        ["rhs_weap_M136_hedp",1],
        ["rhs_weap_fgm148",1],
        ["rhs_weap_fim92",2],
        ["dzn_MG_Tripod_M122A1_M240Mount_Carry",2],
        ["ace_csw_carryMortarBaseplate",4],
        ["ace_csw_staticMortarCarry",4],
        ["avm224_W_M224_mortar_carry",4],

        // Ammo
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG",28],
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",28],
        ["ACE_30Rnd_556x45_Stanag_M995_AP_mag",28],
        ["rhsusf_200Rnd_556x45_soft_pouch",8],
        ["rhsusf_100Rnd_762x51_m62_tracer",5],
        ["rhs_fgm148_magazine_AT",1],
        ["rhs_fim92_mag",2],
        ["rhs_mag_maaws_HE",2],
        ["rhs_mag_maaws_HEAT",2],
        ["MAA_MAAWS_ASM509",2],
        ["MAA_MAAWS_GMM_MT",1],

        ["rhs_mag_M397_HET",20],
        ["rhs_mag_M433_HEDP",20],
        ["ACE_HuntIR_M203",8],
        ["ACE_40mm_Flare_white",10],
        ["ACE_40mm_Flare_red",10],
        ["rhs_mag_m664_red_cluster",10],
        ["rhs_mag_m713_Red",10],
        ["rhs_mag_m716_yellow",10],
        ["rhs_mag_M663_green_cluster",10],
        ["ACE_40mm_Flare_ir",20],
        
        // Grenades
        ["HandGrenade",18],
        ["SmokeShell",27],
        ["SmokeShellRed",4],
        ["SmokeShellBlue",4],
        ["SmokeShellGreen",4],
        ["SmokeShellYellow",4],
        ["rhs_mag_mk3a2",18],
        ["ACE_M84",28],
        ["ACE_Chemlight_HiYellow",250],
        ["ACE_Chemlight_HiBlue",250],
        ["ACE_Chemlight_HiRed",250],

        // Mines and Explosives
        ["ACE_Clacker",1],
        ["ACE_DefusalKit",2],
        ["ACE_M26_Clacker",2],
        ["SatchelCharge_Remote_Mag",3],
        ["DemoCharge_Remote_Mag",6],
        ["ClaymoreDirectionalMine_Remote_Mag",2],

        // Tools and Items
        ["ACE_Flashlight_MX991",50],
        ["ACE_CableTie",100],
        ["ACE_wirecutter",5],
        ["ACE_EntrenchingTool",20],
        ["B_UavTerminal",20]
    ]],

    ["bravo_company_atlas", [
        ["ACE_microDAGR",0],
        ["ItemAndroid",0],
        ["kat_IV_16",0],
        ["ACE_adenosine",0],
        ["kat_AED",0],
        ["kat_X_AED",0],
        ["ACE_packingBandage",0],
        ["ACE_quikclot",0],
        ["ACE_elasticBandage",0],
        ["ACE_bloodIV",0],
        ["ACE_bloodIV_250",0],
        ["ACE_bloodIV_500",0],
        ["ACE_bodyBag",0],
        ["kat_plate",0],
        ["ACE_CableTie",0],
        ["ACE_Chemlight_Shield",0],
        ["kat_clamp",0],
        ["Rev_pelican_item",0],
        ["kat_vacuum",0],
        ["kat_EACA",0],
        ["ACE_EarPlugs",0],
        ["ACE_EntrenchingTool",0],
        ["ACE_epinephrine",0],
        ["kat_etomidate",0],
        ["kat_IO_FAST",0],
        ["kat_flumazenil",0],
        ["kat_lidocaine",0],
        ["kat_lorazepam",0],
        ["ACE_morphine",0],
        ["kat_naloxone",0],
        ["kat_nitroglycerin",0],
        ["kat_norepinephrine",0],
        ["ACE_personalAidKit",0],
        ["kat_phenylephrine",0],
        ["kat_phenylephrine_inject",0],
        ["ACE_plasmaIV",0],
        ["ACE_plasmaIV_250",0],
        ["ACE_plasmaIV_500",0],
        ["kat_retractor",0],
        ["ACE_salineIV",0],
        ["ACE_salineIV_250",0],
        ["ACE_salineIV_500",0],
        ["kat_scalpel",0],
        ["ACE_splint",0],
        ["ACE_surgicalKit",0],
        ["ACE_tourniquet",0],
        ["kat_TXA",0],
        ["kat_Carbonate",0],
        ["kat_Painkiller",0],

        // Tools and Items
        ["ACE_wirecutter",10],
        ["ACE_EntrenchingTool",20],
        ["ACE_IR_Strobe_Item",20], 
        // Medical
        ["ACE_EarPlugs",250]
    ]],

    ["charlie_company", [
        // Radios
        ["ACRE_PRC343", 30],
        ["ACRE_PRC152", 20],
        ["TFAR_anprc152", 30],

        // Helmets
        ["DAR_Beret_Mar", 0],
        ["USP_OPSCORE_FASTMTC_CGW", 0],
        ["USP_OPSCORE_FASTMTC_CMW", 0],
        ["USP_OPSCORE_FASTMTC_CMGSW", 0],
        ["USP_OPSCORE_FASTMTC_CMGTW", 0],
        ["USP_OPSCORE_FASTMTC_CMSW", 0],
        ["USP_OPSCORE_FASTMTC_CMTW", 0],
        ["USP_OPSCORE_FASTMTC_CW", 0],
        ["USP_OPSCORE_FASTMTC_CGSW", 0],
        ["USP_OPSCORE_FASTMTC_CGTW", 0],
        ["USP_OPSCORE_FASTMTC_CSW", 0],
        ["USP_OPSCORE_FASTMTC_CTW", 0],

        // Weapons
        ["rhs_weap_M136_hp",10],
        ["rhs_weap_M136_hedp",10],
        ["rhs_weap_m72a7",50],
        ["dzn_MG_Tripod_M122A1_M240Mount_Carry",5],

        // Ammo
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 250],
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 250],
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan", 250],
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tan_Tracer_Red", 250],
        ["ACE_30Rnd_556x45_Stanag_M995_AP_mag", 250],
        ["rhs_mag_30Rnd_556x45_Mk262_PMAG", 250],
        ["rhsusf_mag_17Rnd_9x19_FMJ", 250],
        ["rhsusf_200Rnd_556x45_mixed_soft_pouch", 250],
        ["rhsusf_100Rnd_762x51_m62_tracer", 250],
        ["rhs_mag_M397_HET", 50],
        ["rhs_mag_M433_HEDP", 50],
        ["ACE_HuntIR_M203", 50],
        ["ACE_40mm_Flare_white", 50],
        ["ACE_40mm_Flare_red", 50],
        ["ACE_40mm_Flare_ir", 50],
        ["rhs_mag_m664_red_cluster", 50],
        ["rhs_mag_m713_Red", 50],
        ["rhs_mag_m716_yellow", 50],
        
        ["rhs_mag_maaws_HE", 50],
        ["rhs_mag_maaws_HEAT", 50],
        ["MAA_MAAWS_ASM509", 50],
        ["MAA_MAAWS_GMM_MT", 50],
        ["NDS_M_6Rnd_60mm_HE_0", 50],
        ["NDS_M_6Rnd_60mm_HE", 50],
        ["NDS_M_6Rnd_60mm_SMOKE", 50],
        ["NDS_M_6Rnd_60mm_ILLUM", 50],

        // Grenades
        ["HandGrenade",50],
        ["SmokeShell",50],
        ["SmokeShellBlue",25],
        ["SmokeShellGreen",25],
        ["SmokeShellYellow",25],
        ["SmokeShellRed",25],
        ["ACE_Chemlight_HiWhite",25],
        ["ACE_Chemlight_HiBlue",25],
        ["ACE_Chemlight_HiGreen",25],
        ["ACE_Chemlight_HiYellow",25],
        ["ACE_Chemlight_HiRed",25],
        ["ACE_Chemlight_IR",25],
        ["ACE_M84",50],
        ["rhs_mag_mk3a2",50],

        // Mines and Explosives
        ["ACE_Clacker",10],
        ["ACE_DefusalKit",10],
        ["ACE_M26_Clacker",20],
        ["SatchelCharge_Remote_Mag",50],
        ["DemoCharge_Remote_Mag",50],
        ["ClaymoreDirectionalMine_Remote_Mag",25],

        // Tools and Items
        ["ACE_CableTie",100],
        ["USP_PVS15",50],
        ["ACE_EntrenchingTool",10],
        ["ACE_wirecutter",10],
        ["rhs_weap_rsp30_green",10],
        ["rhs_weap_rsp30_red",10],
        ["ACE_SpareBarrel", 4],

        //cTab
        ["ItemAndroid", 0],
        ["ItemcTab", 0],

        // Medical
        ["ACE_EarPlugs",250],
        ["ACE_quikclot",250],
        ["ACE_tourniquet",50],
        ["kat_Painkiller",20],

        // NVG
        ["USP_PVS14", 0],
        ["USP_PVS15", 0],
        ["USP_L4G19", 0],
        ["USP_RHINO", 0]
    ]],

    // // // // // // //
    // Resupply Crates \\
    // // // // // // //
    ["crate_medicalInfantry", [
        // Bandages
        ["ACE_elasticBandage",60],
        ["ACE_packingBandage",90],
        ["ACE_quikclot",150],

        // Tourniquets
        ["ACE_tourniquet",50],
        
        // Fluids
        ["ACE_plasmaIV",20],
        ["ACE_plasmaIV_500",20],
        
        // IV & IO Catheters
        ["kat_IO_FAST",10],
        ["kat_IV_16",20],
        
        // Autoinjector Medication
        ["kat_naloxone",20],
        ["ACE_epinephrine",20],
        ["kat_phenylephrine_inject",24],
        
        // Oral Medication
        ["kat_Painkiller",60],
        
        // Splints
        ["ACE_splint",40],
        
        // Surgical Medication
        ["kat_lidocaine",16],
        
        // Surgical Kits
        ["ACE_surgicalKit",2],
        
        // Body Bags
        ["ACE_bodyBag", 20]
    ]],
    
    ["crate_medicalAtlas", [
        // AEDs
        ["kat_AED",1],
        ["kat_X_AED",1],
        
        // Bandages
        ["ACE_elasticBandage",150],
        ["ACE_packingBandage",90],
        ["ACE_quikclot",150],
        
        // Tourniquets
        ["ACE_tourniquet",20],
        
        // Fluids
        ["ACE_plasmaIV",30],
        ["ACE_plasmaIV_500",30],
        ["ACE_salineIV_250",20],
        
        // IV & IO Catheters
        ["kat_IO_FAST",20],
        ["kat_IV_16",40],
        
        // Blood Pressure Medication
        ["kat_nitroglycerin",40],
        ["kat_phenylephrine",40],
        ["kat_norepinephrine",40],
        
        // Hemorrhage Control Medication
        ["kat_EACA",40],
        ["kat_TXA",40],
        
        // Oral Medication
        ["kat_carbonate",20],
        ["kat_Painkiller",40],
        
        // Autoinjector & Nasal Spray Medication
        ["kat_naloxone",20],
        ["ACE_morphine",20],
        ["ACE_epinephrine",40],
        ["kat_phenylephrine_inject",40],
        
        // Splints
        ["ACE_splint",40],
        
        // Surgical Equipment
        ["kat_scalpel",40],
        ["kat_plate",10],
        ["kat_clamp",4],
        ["kat_retractor",4],
        ["kat_vacuum",1],
        
        // Surgical Medication
        ["kat_lidocaine",20],
        ["kat_lorazepam",10],
        ["kat_etomidate",20],
        ["kat_flumazenil",10],
        
        // Surgical Kits
        ["ACE_surgicalKit",8],
        
        // Body Bags
        ["ACE_bodyBag",10],
        
        // E-Tools
        ["ACE_EntrenchingTool",4],
        
        // Smokes
        ["SmokeShell",16],
        ["SmokeShellBlue",8],
        ["SmokeShellGreen",8],
        ["SmokeShellPurple",8],
        
        // Flags and Paint
        ["ace_marker_flags_green",4],
        ["ace_marker_flags_red",4],
        ["ace_marker_flags_blue",4],
        ["ACE_SpraypaintBlue",1],
        ["ACE_SpraypaintRed",1]
    ]],

    ["crate_strykerDragoon_resupply", [
        // Rifle Ammo
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 28],
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 21],
        ["ACE_30Rnd_556x45_Stanag_M995_AP_mag", 7],
        
        // MG Ammo
        ["rhsusf_100Rnd_762x51_m62_tracer", 10],

        // AT
        ["rhs_fgm148_magazine_AT", 1],
        
        // M320 Ammo
        ["rhs_mag_m433_HEDP", 20],
        ["rhs_mag_m397_HET", 10],
        ["rhs_mag_M664_red_cluster", 5],
        ["rhs_mag_m714_White", 5],
        ["ACE_40mm_Flare_IR", 5],
        ["ACE_HUNTIR_M203", 5],

        // Offensive/Defensive Grenades
        ["HandGrenade", 9],

        // Smoke Grenades
        ["SmokeShell", 27],
        ["SmokeShellRed", 4],
        ["SmokeShellBlue", 4],
        ["SmokeShellYellow", 4],
        ["SmokeShellGreen", 4],
        
        // Medical
        ["ACE_quikclot", 50],
        ["ACE_tourniquet", 18]
    ]],
    ["crate_strykerDragoon_60mm",[
        ["avm224_W_M224_mortar_carry",4],
        ["avm224_M_6Rnd_60mm_HE_csw", 50],
        ["avm224_M_6Rnd_60mm_HE_0_csw", 50],
        ["avm224_M_6Rnd_60mm_ILLUM_IR_csw", 25],
        ["avm224_M_6Rnd_60mm_SMOKE_csw", 25]
    ]],
    ["crate_strykerDragoon_82mm",[
        ["ACE_1Rnd_82mm_Mo_HE", 24],
        ["ACE_1Rnd_82mm_Mo_Illum", 8],
        ["ACE_1Rnd_82mm_Mo_Smoke", 8],
        ["ACE_1Rnd_82mm_Mo_HE_LaserGuided",8]
    ]],
    ["crate_resupply_general", [
        // Rifle Ammo
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",70],
        
        // MG Ammo
        ["rhsusf_200rnd_556x45_mixed_soft_pouch",15],
        ["rhsusf_100Rnd_762x51_m62_tracer",15],

        // AT
        ["rhs_fgm148_magazine_AT",3],
        ["rhs_mag_maaws_HEAT",4],
        ["rhs_mag_maaws_HE",4],
        ["rhs_weap_M136_hedp",8],
        
        // AA
        ["rhs_fim92_mag",3],
        
        // M320 Ammo
        ["rhs_mag_M433_HEDP",40],
        ["rhs_mag_m714_White",20],
        ["ACE_HUNTIR_M203",5],
        ["ACE_40mm_Flare_white",10],
        ["ACE_40mm_Flare_IR",10],

        // Mortar Ammo
        ["NDS_M_6Rnd_60mm_HE_0",5],
        ["NDS_M_6Rnd_60mm_HE",5],
        ["NDS_M_6Rnd_60mm_SMOKE",2],
        ["NDS_M_6Rnd_60mm_ILLUM",2],
        
        // Offensive/Defensive Hand Grenades
        ["HandGrenade",20],

        // LTL Hand Grenades
        ["ACE_M84",10],

        // Smoke Grenades
        ["SmokeShell",30],
        ["SmokeShellRed",10],
        ["SmokeShellBlue",10],

        // Chemlights
        ["ACE_Chemlight_HiRed",15],
        ["ACE_Chemlight_HiBlue",15],
        ["ACE_Chemlight_IR",15],

        // Explosives
        ["SatchelCharge_Remote_Mag",2],
        ["DemoCharge_Remote_Mag",4],

        ["ACE_EarPlugs", 3],
        ["ACE_quikclot", 80],
        ["ACE_tourniquet", 15]
    ]],

    // // // // // // //
    // Alpha Vehicles \\
    // // // // // // //
    ["vehicle_heliTransport", [
        ["ToolKit", 2],
        ["ACE_rope18", 4],
        ["ACE_rope36", 2],

        ["ACE_quikclot", 32],
        ["ACE_tourniquet", 8],
        ["ACE_splint", 8],

        ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 32],
        ["SmokeShell", 8]
    ]],

    // // // // // // //
    // Bravo Vehicles \\
    // // // // // // //
    ["vehicle_medicalAtlas", [
        // AEDs
        ["kat_AED",1],

        // Bandages
        ["ACE_elasticBandage",150],
        ["ACE_packingBandage",90],
        ["ACE_quikclot",150],

        // Tourniquets
        ["ACE_tourniquet",20],

        // Fluids
        ["ACE_plasmaIV",30],
        ["ACE_plasmaIV_500",30],
        ["ACE_salineIV_250",20],

        // IV & IO Catheters
        ["kat_IO_FAST",20],
        ["kat_IV_16",40],

        // Blood Pressure Medication
        ["kat_nitroglycerin",40],
        ["kat_phenylephrine",40],
        ["kat_norepinephrine",40],

        // Hemorrhage Control Medication
        ["kat_EACA",40],
        ["kat_TXA",40],

        // Oral Medication
        ["kat_carbonate",20],
        ["kat_Painkiller",40],

        // Autoinjector & Nasal Spray Medication
        ["kat_naloxone",20],
        ["ACE_morphine",20],
        ["ACE_epinephrine",40],
        ["kat_phenylephrine_inject",40],

        // Splints
        ["ACE_splint",20],

        // Surgical Equipment
        ["kat_scalpel",40],
        ["kat_plate",10],
        ["kat_clamp",1],
        ["kat_retractor",1],
        ["kat_vacuum",1],

        // Surgical Medication
        ["kat_lidocaine",20],
        ["kat_lorazepam",10],
        ["kat_etomidate",20],
        ["kat_flumazenil",10],

        // Surgical Kits
        ["ACE_surgicalKit",4],

        // Body Bags
        ["ACE_bodyBag",10],

        // E-Tools
        ["ACE_EntrenchingTool",4],

        // Smoke Grenades
        ["SmokeShell",16],
        ["SmokeShellBlue",4],
        ["SmokeShellGreen",4],
        ["SmokeShellPurple",4],

        // Flags and Paint
        ["ace_marker_flags_green",4],
        ["ace_marker_flags_red",4],
        ["ace_marker_flags_blue",4],
        ["ACE_SpraypaintBlue",1],
        ["ACE_SpraypaintRed",1],

        // Rifle Ammo
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG",24], // M855A1 PMAGs
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",8] // M856A1 PMAGs
    ]],
    ["vehicle_strykerDragoon", [
        // AT
        ["rhs_weap_fgm148", 1],
        ["rhs_fgm148_magazine_AT", 2],
        ["rhs_weap_M136", 2],

        // M32 Rotary Grenade Launcher
        ["rhs_weap_m32", 1],
        ["rhsusf_mag_6Rnd_M397_HET", 2],
        ["rhsusf_mag_6Rnd_M433_HEDP", 3],
        ["rhsusf_mag_6Rnd_m4009", 3],
        ["rhsusf_mag_6Rnd_M713_red", 2],
        
        // UAV Equipment
        ["ACE_UAVBattery", 4],
        
        // Tools
        ["ACE_wirecutter", 1]
    ]],
    ["vehicle_strykerDragoon_V4", [
        // AT
        ["rhs_weap_fgm148", 1],
        ["rhs_fgm148_magazine_AT", 2],
        ["rhs_weap_M136", 2],

        // M32 Rotary Grenade Launcher
        ["rhs_weap_m32", 1],
        ["rhsusf_mag_6Rnd_M397_HET", 2],
        ["rhsusf_mag_6Rnd_M433_HEDP", 3],
        ["rhsusf_mag_6Rnd_m4009", 3],
        ["rhsusf_mag_6Rnd_M713_red", 2],
        
        // UAV Equipment
        ["ACE_UAVBattery", 4],
        
        // Tools
        ["ACE_wirecutter", 1],

        // 82mm Mortars
        ["ace_csw_carryMortarBaseplate", 2],
        ["ace_csw_staticMortarCarry", 2]
    ]],

    // // // // // // // //
    // Charlie Vehicles \\
    // // // // // // // //
    ["vehicle_HMMWV", [
        // Rifle Ammo
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",42],
        
        // MG Ammo
        ["rhsusf_200Rnd_556x45_mixed_soft_pouch",5],
        ["rhsusf_100Rnd_762x51_m62_tracer",5],

        // AT
        ["rhs_weap_fgm148",1],
        ["rhs_fgm148_magazine_AT",1],
        ["rhs_mag_maaws_HE",2],
        ["rhs_mag_maaws_HEAT",2],

        // M320 Ammo
        ["rhsusf_mag_M433_HEDP",20],
        ["rhs_mag_m714_White",6],
        ["ACE_HuntIR_M203",1],
        ["ACE_40mm_Flare_ir",2],

        // Offensive/Defensive Hand Grenades
        ["HandGrenade",8],

        // Smoke Grenades
        ["SmokeShell",10],
        ["SmokeShellBlue",2],
        ["SmokeShellGreen",2],

        // Chemlights
        ["ACE_Chemlight_HiGreen",2],
        ["ACE_Chemlight_HiRed",2],
        ["ACE_Chemlight_IR",4],
        
        // Misc
        ["ACE_SpareBarrel",1]
    ]],

    // // // // // //
    // Specialized \\
    // // // // // //
    ["crate_mortar_60mm_ammo", [
        ["NDS_M_6Rnd_60mm_HE_0",5],
        ["NDS_M_6Rnd_60mm_HE",5],
        ["NDS_M_6Rnd_60mm_SMOKE",2],
        ["NDS_M_6Rnd_60mm_ILLUM",2]
    ]],
    // ["demolitions", []],
    ["radios", [
        ["ACRE_PRC343", 40],
        ["ACRE_PRC152", 40],
        ["ACRE_PRC117F", 40],

        ["TFAR_anprc152", 40]
    ]],

    // No longer used \\
    ["vehicle_bradley", [
        ["rhs_weap_fgm148", 1],
        ["rhs_fgm148_magazine_AT", 2],
        ["rhs_weap_m32", 1],
        ["rhsusf_mag_6Rnd_M397_HET", 2],
        ["rhsusf_mag_6Rnd_M433_HEDP", 3],
        ["rhsusf_mag_6Rnd_m4009", 3],
        ["rhsusf_mag_6Rnd_M713_red", 2],
        ["rhs_weap_M136", 4],
        ["B_UAV_01_backpack_F", 2],
        ["B_UavTerminal", 1],
        ["ACE_UAVBattery", 4],
        ["ACE_wirecutter", 1]
    ]],

    // // // // //
    // Arsenal \\
    // // // // //
    ["arsenal_common", [
        ["G_Aviator", 0],
        ["rhs_googles_black", 0],
        ["rhs_googles_clear", 0],
        ["rhs_googles_orange", 0],
        ["rhs_googles_yellow", 0],
        ["rhs_ess_black", 0],
        ["G_Shades_Black", 0],
        ["G_Shades_Blue", 0],
        ["G_Shades_Green", 0],
        ["G_Shades_Red", 0],
        ["rhsusf_shemagh_grn", 0],
        ["rhsusf_shemagh2_grn", 0],
        ["rhsusf_shemagh_od", 0],
        ["rhsusf_shemagh2_od", 0],
        ["rhsusf_shemagh_tan", 0],
        ["rhsusf_shemagh2_tan", 0],
        ["rhsusf_shemagh_white", 0],
        ["rhsusf_shemagh2_white", 0],
        ["rhsusf_shemagh_gogg_grn", 0],
        ["rhsusf_shemagh2_gogg_grn", 0],
        ["rhsusf_shemagh_gogg_od", 0],
        ["rhsusf_shemagh2_gogg_od", 0],
        ["rhsusf_shemagh_gogg_tan", 0],
        ["rhsusf_shemagh2_gogg_tan", 0],
        ["rhsusf_shemagh_gogg_white", 0],
        ["rhsusf_shemagh2_gogg_white", 0],
        ["rhsusf_oakley_goggles_blk", 0],
        ["rhsusf_oakley_goggles_clr", 0],
        ["rhsusf_oakley_goggles_ylw", 0],
        ["USP_RAID_BLK2", 0],
        ["USP_RAID_BLK", 0],
        ["USP_RAID_SMC1_BLK2", 0],
        ["USP_RAID_SMC1_BLK", 0],
        ["USP_RAID_SMC2_BLK2", 0],
        ["USP_RAID_SMC2_BLK", 0],
        ["USP_RAID_SMC3_BLK2", 0],
        ["USP_RAID_SMC3_BLK", 0],
        ["USP_RAID_SMG1_BLK2", 0],
        ["USP_RAID_SMG1_BLK", 0],
        ["USP_RAID_SMG2_BLK2", 0],
        ["USP_RAID_SMG2_BLK", 0],
        ["USP_RAID_SMG3_BLK2", 0],
        ["USP_RAID_SMG3_BLK", 0],
        ["USP_BALACLAVA_CBR", 0],
        ["USP_BALACLAVA_GRY", 0],
        ["USP_BALACLAVA_MCA", 0],
        ["USP_BALACLAVA_RGR", 0],
        ["USP_BALACLAVA2_CBR", 0],
        ["USP_BALACLAVA2_GRY", 0],
        ["USP_BALACLAVA2_MCA", 0],
        ["USP_BALACLAVA2_RGR", 0],
        ["USP_BALACLAVA_ADV_CBR", 0],
        ["USP_BALACLAVA_ADV_GRY", 0],
        ["USP_BALACLAVA_ADV_MCA", 0],
        ["USP_BALACLAVA_ADV_RGR", 0],
        ["USP_BALACLAVA_ADV_CBR2", 0],
        ["USP_BALACLAVA_ADV_GRY2", 0],
        ["USP_BALACLAVA_ADV_MCA2", 0],
        ["USP_BALACLAVA_ADV_RGR2", 0],
        ["USP_BALACLAVA_ADV_SMC1_CBR", 0],
        ["USP_BALACLAVA_ADV_SMC1_GRY", 0],
        ["USP_BALACLAVA_ADV_SMC1_MCA", 0],
        ["USP_BALACLAVA_ADV_SMC1_RGR", 0],
        ["USP_BALACLAVA_ADV_SMC1_CBR2", 0],
        ["USP_BALACLAVA_ADV_SMC1_GRY2", 0],
        ["USP_BALACLAVA_ADV_SMC1_MCA2", 0],
        ["USP_BALACLAVA_ADV_SMC1_RGR2", 0],
        ["USP_BALACLAVA_ADV_SMG1_CBR", 0],
        ["USP_BALACLAVA_ADV_SMG1_GRY", 0],
        ["USP_BALACLAVA_ADV_SMG1_MCA", 0],
        ["USP_BALACLAVA_ADV_SMG1_RGR", 0],
        ["USP_BALACLAVA_ADV_SMG1_CBR2", 0],
        ["USP_BALACLAVA_ADV_SMG1_GRY2", 0],
        ["USP_BALACLAVA_ADV_SMG1_MCA2", 0],
        ["USP_BALACLAVA_ADV_SMG1_RGR2", 0],
        ["USP_BALACLAVA_ESS_CBR", 0],
        ["USP_BALACLAVA_ESS_GRY", 0],
        ["USP_BALACLAVA_ESS_MCA", 0],
        ["USP_BALACLAVA_ESS_RGR", 0],
        ["USP_BALACLAVA_ESS_CBR2", 0],
        ["USP_BALACLAVA_ESS_GRY2", 0],
        ["USP_BALACLAVA_ESS_MCA2", 0],
        ["USP_BALACLAVA_ESS_RGR2", 0],
        ["USP_BALACLAVA_ESS_CBR3", 0],
        ["USP_BALACLAVA_ESS_GRY3", 0],
        ["USP_BALACLAVA_ESS_MCA3", 0],
        ["USP_BALACLAVA_ESS_RGR3", 0],
        ["USP_BALACLAVA_ESS_SMC1_CBR", 0],
        ["USP_BALACLAVA_ESS_SMC1_GRY", 0],
        ["USP_BALACLAVA_ESS_SMC1_MCA", 0],
        ["USP_BALACLAVA_ESS_SMC1_RGR", 0],
        ["USP_BALACLAVA_ESS_SMC1_CBR2", 0],
        ["USP_BALACLAVA_ESS_SMC1_GRY2", 0],
        ["USP_BALACLAVA_ESS_SMC1_MCA2", 0],
        ["USP_BALACLAVA_ESS_SMC1_RGR2", 0],
        ["USP_BALACLAVA_ESS_SMG1_CBR", 0],
        ["USP_BALACLAVA_ESS_SMG1_GRY", 0],
        ["USP_BALACLAVA_ESS_SMG1_MCA", 0],
        ["USP_BALACLAVA_ESS_SMG1_RGR", 0],
        ["USP_BALACLAVA_ESS_SMG1_CBR2", 0],
        ["USP_BALACLAVA_ESS_SMG1_GRY2", 0],
        ["USP_BALACLAVA_ESS_SMG1_MCA2", 0],
        ["USP_BALACLAVA_ESS_SMG1_RGR2", 0],
        ["USP_BALACLAVA_ESS_SMG1_CBR3", 0],
        ["USP_BALACLAVA_ESS_SMG1_GRY3", 0],
        ["USP_BALACLAVA_ESS_SMG1_MCA3", 0],
        ["USP_BALACLAVA_ESS_SMG1_RGR3", 0],
        ["USP_BALACLAVA_OAK_CBR", 0],
        ["USP_BALACLAVA_OAK_GRY", 0],
        ["USP_BALACLAVA_OAK_MCA", 0],
        ["USP_BALACLAVA_OAK_RGR", 0],
        ["USP_BALACLAVA_OAK_CBR2", 0],
        ["USP_BALACLAVA_OAK_GRY2", 0],
        ["USP_BALACLAVA_OAK_MCA2", 0],
        ["USP_BALACLAVA_OAK_RGR2", 0],
        ["USP_BALACLAVA_OAK_SMC1_CBR", 0],
        ["USP_BALACLAVA_OAK_SMC1_GRY", 0],
        ["USP_BALACLAVA_OAK_SMC1_MCA", 0],
        ["USP_BALACLAVA_OAK_SMC1_RGR", 0],
        ["USP_BALACLAVA_OAK_SMC1_CBR2", 0],
        ["USP_BALACLAVA_OAK_SMC1_GRY2", 0],
        ["USP_BALACLAVA_OAK_SMC1_MCA2", 0],
        ["USP_BALACLAVA_OAK_SMC1_RGR2", 0],
        ["USP_BALACLAVA_OAK_SMG1_CBR", 0],
        ["USP_BALACLAVA_OAK_SMG1_GRY", 0],
        ["USP_BALACLAVA_OAK_SMG1_MCA", 0],
        ["USP_BALACLAVA_OAK_SMG1_RGR", 0],
        ["USP_BALACLAVA_OAK_SMG1_CBR2", 0],
        ["USP_BALACLAVA_OAK_SMG1_GRY2", 0],
        ["USP_BALACLAVA_OAK_SMG1_MCA2", 0],
        ["USP_BALACLAVA_OAK_SMG1_RGR2", 0],
        ["USP_ADVANCER_CLR", 0],
        ["USP_ADVANCER", 0],
        ["USP_ADVANCER_SF2", 0],
        ["USP_ADVANCER_SF3", 0],
        ["USP_ADVANCER_SFL2", 0],
        ["USP_ADVANCER_SFL3", 0],
        ["USP_ADVANCER_SL2", 0],
        ["USP_ADVANCER_SL3", 0],
        ["USP_ADVANCER_SN2", 0],
        ["USP_ADVANCER_SN3", 0],
        ["USP_ADVANCER_SNL2", 0],
        ["USP_ADVANCER_SNL3", 0],
        ["USP_ADVANCER_ST2", 0],
        ["USP_ADVANCER_ST3", 0],
        ["USP_ADVANCER_STL2", 0],
        ["USP_ADVANCER_STL3", 0],
        ["USP_CROSSBOW_BLK2", 0],
        ["USP_CROSSBOW_BLK", 0],
        ["USP_CROSSBOW_TAN2", 0],
        ["USP_CROSSBOW_TAN", 0],
        ["USP_CROSSBOW_SMC1_BLK2", 0],
        ["USP_CROSSBOW_SMC1_BLK", 0],
        ["USP_CROSSBOW_SMC2_BLK2", 0],
        ["USP_CROSSBOW_SMC2_BLK", 0],
        ["USP_CROSSBOW_SMC3_BLK2", 0],
        ["USP_CROSSBOW_SMC3_BLK", 0],
        ["USP_CROSSBOW_SMG1_BLK2", 0],
        ["USP_CROSSBOW_SMG1_BLK", 0],
        ["USP_CROSSBOW_SMG2_BLK2", 0],
        ["USP_CROSSBOW_SMG2_BLK", 0],
        ["USP_CROSSBOW_SMG3_BLK2", 0],
        ["USP_CROSSBOW_SMG3_BLK", 0],
        ["USP_CROSSBOW_SMC1_TAN2", 0],
        ["USP_CROSSBOW_SMC1_TAN", 0],
        ["USP_CROSSBOW_SMC2_TAN2", 0],
        ["USP_CROSSBOW_SMC2_TAN", 0],
        ["USP_CROSSBOW_SMC3_TAN2", 0],
        ["USP_CROSSBOW_SMC3_TAN", 0],
        ["USP_CROSSBOW_SMG1_TAN2", 0],
        ["USP_CROSSBOW_SMG1_TAN", 0],
        ["USP_CROSSBOW_SMG2_TAN2", 0],
        ["USP_CROSSBOW_SMG2_TAN", 0],
        ["USP_CROSSBOW_SMG3_TAN2", 0],
        ["USP_CROSSBOW_SMG3_TAN", 0],
        ["USP_GATORZ_BLK2", 0],
        ["USP_GATORZ_BLK", 0],
        ["USP_GATORZ_SMC1_BLK2", 0],
        ["USP_GATORZ_SMC1_BLK", 0],
        ["USP_GATORZ_SMC2_BLK2", 0],
        ["USP_GATORZ_SMC2_BLK", 0],
        ["USP_GATORZ_SMC3_BLK2", 0],
        ["USP_GATORZ_SMC3_BLK", 0],
        ["USP_GATORZ_SMG1_BLK2", 0],
        ["USP_GATORZ_SMG1_BLK", 0],
        ["USP_GATORZ_SMG2_BLK2", 0],
        ["USP_GATORZ_SMG2_BLK", 0],
        ["USP_GATORZ_SMG3_BLK2", 0],
        ["USP_GATORZ_SMG3_BLK", 0],
        ["USP_OAKLEY_SI2", 0],
        ["USP_OAKLEY_SI2_MC", 0],
        ["USP_OAKLEY_SI2_TAN", 0],
        ["USP_DETCORD_BLK2", 0],
        ["USP_DETCORD_BLK", 0],
        ["USP_DETCORD_SMC1_BLK2", 0],
        ["USP_DETCORD_SMC1_BLK", 0],
        ["USP_DETCORD_SMC2_BLK2", 0],
        ["USP_DETCORD_SMC2_BLK", 0],
        ["USP_DETCORD_SMC3_BLK2", 0],
        ["USP_DETCORD_SMC3_BLK", 0],
        ["USP_DETCORD_SMG1_BLK2", 0],
        ["USP_DETCORD_SMG1_BLK", 0],
        ["USP_DETCORD_SMG2_BLK2", 0],
        ["USP_DETCORD_SMG2_BLK", 0],
        ["USP_DETCORD_SMG3_BLK2", 0],
        ["USP_DETCORD_SMG3_BLK", 0],
        ["USP_DETCORD_TAN2", 0],
        ["USP_DETCORD_TAN", 0],
        ["USP_DETCORD_SMC1_TAN2", 0],
        ["USP_DETCORD_SMC1_TAN", 0],
        ["USP_DETCORD_SMC2_TAN2", 0],
        ["USP_DETCORD_SMC2_TAN", 0],
        ["USP_DETCORD_SMC3_TAN2", 0],
        ["USP_DETCORD_SMC3_TAN", 0],
        ["USP_DETCORD_SMG1_TAN2", 0],
        ["USP_DETCORD_SMG1_TAN", 0],
        ["USP_DETCORD_SMG2_TAN2", 0],
        ["USP_DETCORD_SMG2_TAN", 0],
        ["USP_DETCORD_SMG3_TAN2", 0],
        ["USP_DETCORD_SMG3_TAN", 0],
        ["USP_MFRAME_BLK2", 0],
        ["USP_MFRAME_BLK", 0],
        ["USP_MFRAME_TAN2", 0],
        ["USP_MFRAME_TAN", 0],
        ["USP_MFRAME_SMC1_BLK2", 0],
        ["USP_MFRAME_SMC1_BLK", 0],
        ["USP_MFRAME_SMC2_BLK2", 0],
        ["USP_MFRAME_SMC2_BLK", 0],
        ["USP_MFRAME_SMC3_BLK2", 0],
        ["USP_MFRAME_SMC3_BLK", 0],
        ["USP_MFRAME_SMG1_BLK2", 0],
        ["USP_MFRAME_SMG1_BLK", 0],
        ["USP_MFRAME_SMG2_BLK2", 0],
        ["USP_MFRAME_SMG2_BLK", 0],
        ["USP_MFRAME_SMG3_BLK2", 0],
        ["USP_MFRAME_SMG3_BLK", 0],
        ["USP_MFRAME_SMC1_TAN2", 0],
        ["USP_MFRAME_SMC1_TAN", 0],
        ["USP_MFRAME_SMC2_TAN2", 0],
        ["USP_MFRAME_SMC2_TAN", 0],
        ["USP_MFRAME_SMC3_TAN2", 0],
        ["USP_MFRAME_SMC3_TAN", 0],
        ["USP_MFRAME_SMG1_TAN2", 0],
        ["USP_MFRAME_SMG1_TAN", 0],
        ["USP_MFRAME_SMG2_TAN2", 0],
        ["USP_MFRAME_SMG2_TAN", 0],
        ["USP_MFRAME_SMG3_TAN2", 0],
        ["USP_MFRAME_SMG3_TAN", 0],
        ["USP_STRAIGHTJACKET_BLK2", 0],
        ["USP_STRAIGHTJACKET_BLK", 0],
        ["USP_STRAIGHTJACKET_TAN2", 0],
        ["USP_STRAIGHTJACKET_TAN", 0],
        ["USP_STRAIGHTJACKET_SMC1_BLK2", 0],
        ["USP_STRAIGHTJACKET_SMC1_BLK", 0],
        ["USP_STRAIGHTJACKET_SMC2_BLK2", 0],
        ["USP_STRAIGHTJACKET_SMC2_BLK", 0],
        ["USP_STRAIGHTJACKET_SMC3_BLK2", 0],
        ["USP_STRAIGHTJACKET_SMC3_BLK", 0],
        ["USP_STRAIGHTJACKET_SMG1_BLK2", 0],
        ["USP_STRAIGHTJACKET_SMG1_BLK", 0],
        ["USP_STRAIGHTJACKET_SMG2_BLK2", 0],
        ["USP_STRAIGHTJACKET_SMG2_BLK", 0],
        ["USP_STRAIGHTJACKET_SMG3_BLK2", 0],
        ["USP_STRAIGHTJACKET_SMG3_BLK", 0],
        ["USP_STRAIGHTJACKET_SMC1_TAN2", 0],
        ["USP_STRAIGHTJACKET_SMC1_TAN", 0],
        ["USP_STRAIGHTJACKET_SMC2_TAN2", 0],
        ["USP_STRAIGHTJACKET_SMC2_TAN", 0],
        ["USP_STRAIGHTJACKET_SMC3_TAN2", 0],
        ["USP_STRAIGHTJACKET_SMC3_TAN", 0],
        ["USP_STRAIGHTJACKET_SMG1_TAN2", 0],
        ["USP_STRAIGHTJACKET_SMG1_TAN", 0],
        ["USP_STRAIGHTJACKET_SMG2_TAN2", 0],
        ["USP_STRAIGHTJACKET_SMG2_TAN", 0],
        ["USP_STRAIGHTJACKET_SMG3_TAN2", 0],
        ["USP_STRAIGHTJACKET_SMG3_TAN", 0],
        ["G_Spectacles", 0],
        ["G_Spectacles_Tinted", 0],

        // Headgear
        ["rhsusf_patrolcap_ocp", 0],
        ["rhsusf_ach_helmet_camo_ocp", 0],
        ["H_HelmetHBK_ocp_headset_F", 0],
        ["H_HelmetB_camo", 0],

        // Uniforms
        ["USP_G3C_MC", 0],
        ["USP_G3C_KP_MC", 0],
        ["USP_G3C_KP_MX_MC", 0],
        ["USP_G3C_KP_OR_MC", 0],
        ["USP_G3C_MX_MC", 0],
        ["USP_G3C_OR_MC", 0],
        ["USP_G3C_RS_MC", 0],
        ["USP_G3C_RS_KP_MC", 0],
        ["USP_G3C_RS_KP_MX_MC", 0],
        ["USP_G3C_RS_KP_OR_MC", 0],
        ["USP_G3C_RS_MX_MC", 0],
        ["USP_G3C_RS_MX_MC", 0],
        ["USP_G3C_RS2_MC", 0],
        ["USP_G3C_RS2_KP_MC", 0],
        ["USP_G3C_RS2_KP_MX_MC", 0],
        ["USP_G3C_RS2_KP_OR_MC", 0],
        ["USP_G3C_RS2_MX_MC", 0],
        ["USP_G3C_RS2_OR_MC", 0],
        ["USP_G3F_MC", 0],
        ["USP_G3F_MX_MC", 0],
        ["USP_G3F_OR_MC", 0],
        ["USP_PCU_G3C_MX_MC", 0],
        ["USP_PCU_G3C_OR_MC", 0],
        ["USP_PCU_G3C_KP_MX_MC", 0],
        ["USP_PCU_G3C_KP_OR_MC", 0],
        ["USP_SOFTSHELL_G3C_MC", 0],
        ["USP_SOFTSHELL_G3C_KP_MC", 0],
        ["USP_SOFTSHELL_G3C_KP_MX_MC", 0],
        ["USP_SOFTSHELL_G3C_KP_OR_MC", 0],
        ["USP_SOFTSHELL_G3C_MX_MC", 0],
        ["USP_SOFTSHELL_G3C_OR_MC", 0],
        ["USP_G3F_MX_MCA", 0],
        ["USP_G3F_OR_MCA", 0],
        ["USP_G3F_G3C_KP_MX_MCA", 0],
        ["USP_G3F_G3C_KP_OR_MCA", 0],
        ["USP_OVERWHITE_G3C_KP_MX_MCA_MC", 0],
        ["USP_OVERWHITE_G3C_KP_OR_MCA_MC", 0],
        ["USP_OVERWHITE_G3C_MX_MCA_MC", 0],
        ["USP_OVERWHITE_G3C_OR_MCA_MC", 0],
        
        // Backpack
        ["B_AssaultPack_mcamo", 0],
        ["B_Kitbag_mcamo", 0],
        ["rhsusf_assault_eagleaiii_ocp", 0],
        ["USP_PACK_BREACHER_MC", 0],
        ["USP_PACK_FASTHAWK", 0],
        ["USP_PACK_POINTMAN", 0],
        ["USP_45L_RUCKSACK_MC", 0],
        ["USP_PATROL_PACK", 0],
        ["USP_PATROL_PACK_CB", 0],
        ["USP_PATROL_PACK_CB_CS", 0],
        ["USP_PATROL_PACK_CB_CS_FH", 0],
        ["USP_PATROL_PACK_CB_CS_FH", 0],
        ["USP_PATROL_PACK_CB_CS_FH_RP", 0],
        ["USP_PATROL_PACK_CB_CS_FH_ZT", 0],
        ["USP_PATROL_PACK_CB_CS_RP", 0],
        ["USP_PATROL_PACK_CB_CS_RP_ZT", 0],
        ["USP_PATROL_PACK_CB_CS_ZT", 0],
        ["USP_PATROL_PACK_CB_FH", 0],
        ["USP_PATROL_PACK_CB_FH_RP", 0],
        ["USP_PATROL_PACK_CB_FH_RP_ZT", 0],
        ["USP_PATROL_PACK_CB_FH_ZT", 0],
        ["USP_PATROL_PACK_CB_RP", 0],
        ["USP_PATROL_PACK_CB_RP_ZT", 0],
        ["USP_PATROL_PACK_CB_ZT", 0],
        ["USP_PATROL_PACK_CS", 0],
        ["USP_PATROL_PACK_CS_FH", 0],
        ["USP_PATROL_PACK_CS_FH_ZT", 0],
        ["USP_PATROL_PACK_CS_FH_ZT", 0],
        ["USP_PATROL_PACK_FH", 0],
        ["USP_PATROL_PACK_FH_ZT", 0],
        ["USP_PATROL_PACK_ZT", 0],
        ["USP_ZIPON_PANEL_MC", 0],
        ["USP_ZIPON_PANEL_MC_RF", 0],
        ["USP_ZIPON_PANEL_MC_RF2", 0],
        ["USP_ROLLFLAG2", 0],
        ["USP_PACK_HYDRATION", 0],
        ["USP_PATROL_PACK_ZT", 0],
        
        // Medical
        ["ACE_EarPlugs",250],
        ["ACE_bodyBag",12],
        ["kat_Painkiller",10],

        // Common Gear
        ["ACE_IR_Strobe_Item",20]
    ]],

    ["arsenal_company_fallback", [
        ["NDS_M_6Rnd_60mm_HE_0", 0],
        ["NDS_M_6Rnd_60mm_HE", 0],
        ["NDS_M_6Rnd_60mm_SMOKE", 0],
        ["NDS_M_6Rnd_60mm_ILLUM", 0],
        ["avm224_M_6Rnd_60mm_HE_csw", 0],
        ["avm224_M_6Rnd_60mm_HE_0_csw", 0],
        ["avm224_M_6Rnd_60mm_ILLUM_IR_csw", 0],
        ["avm224_M_6Rnd_60mm_SMOKE_csw", 0],
        ["ACE_1Rnd_82mm_Mo_HE", 0],
        ["ACE_1Rnd_82mm_Mo_Illum", 0],
        ["ACE_1Rnd_82mm_Mo_HE_LaserGuided", 0],
        ["ACE_1Rnd_82mm_Mo_Smoke", 0]
    ]],

    ["arsenal_role_officer", [
        ["ACE_microDAGR", 0],
        ["ACE_HuntIR_monitor", 0],
        ["ItemAndroid", 0],
        ["ItemcTab", 0],
        ["USP_VEST_STRANDHOGG2_MC", 0],
        ["USP_VEST_STRANDHOGG2_CBR", 0],
        ["ACE_Vector", 0],
        ["ACE_MX2A", 0],

        //Backpack
        ["USP_TACTICAL_PACK_CCT", 0],
        ["USP_TACTICAL_PACK_CCT2", 0],
        ["USP_TACTICAL_PACK_CCT3", 0],
        ["USP_TACTICAL_PACK_CCT4", 0],
        ["USP_TACTICAL_PACK_CCT5", 0],
        ["USP_TACTICAL_PACK_CCT6", 0],
        ["USP_TACTICAL_PACK_CCT7", 0],
        ["USP_TACTICAL_PACK_CCT8", 0],
        ["UK3CB_US_B_B_RIF_OCP_Radio", 0]
    ]],
    ["arsenal_role_squadleader", [
        ["ACE_microDAGR", 0],
        ["ACE_HuntIR_monitor", 0],
        ["ItemAndroid", 0],
        ["rhsusf_weap_glock17g4", 0],
        ["USP_VEST_STRANDHOGG2_MC", 0],
        ["USP_VEST_STRANDHOGG2_CBR", 0],
        ["ACE_Vector", 0],
        ["ACE_MX2A", 0],

        //Backpack
        ["USP_TACTICAL_PACK_CCT", 0],
        ["USP_TACTICAL_PACK_CCT2", 0],
        ["USP_TACTICAL_PACK_CCT3", 0],
        ["USP_TACTICAL_PACK_CCT4", 0],
        ["USP_TACTICAL_PACK_CCT5", 0],
        ["USP_TACTICAL_PACK_CCT6", 0],
        ["USP_TACTICAL_PACK_CCT7", 0],
        ["USP_TACTICAL_PACK_CCT8", 0],
        ["UK3CB_US_B_B_RIF_OCP_Radio", 0]
    ]],
    ["arsenal_role_fireteamleader", [
        ["ACE_microDAGR", 0],
        ["ACE_MX2A", 0],
        ["rhsusf_weap_glock17g4", 0],
        ["USP_VEST_STRANDHOGG2_MC", 0],
        ["USP_VEST_STRANDHOGG2_CBR", 0],
        ["ACE_HuntIR_monitor", 0],

        //Backpack
        ["USP_TACTICAL_PACK_CCT", 0],
        ["USP_TACTICAL_PACK_CCT2", 0],
        ["USP_TACTICAL_PACK_CCT3", 0],
        ["USP_TACTICAL_PACK_CCT4", 0],
        ["USP_TACTICAL_PACK_CCT5", 0],
        ["USP_TACTICAL_PACK_CCT6", 0],
        ["USP_TACTICAL_PACK_CCT7", 0],
        ["USP_TACTICAL_PACK_CCT8", 0],
        ["UK3CB_US_B_B_RIF_OCP_Radio", 0]
    ]],
    ["arsenal_role_weapons", [
        // Launchers
        ["rhs_weap_maaws", 0],
        ["launch_MRAWS_green_F", 0],
        ["launch_MRAWS_sand_F", 0],
        ["launch_MRAWS_olive_F", 0],

        // MAAWS ammo
        ["rhs_mag_maaws_HEAT", 0],
        ["rhs_mag_maaws_HEDP", 0],
        ["MAA_MAAWS_ASM509", 0],
        ["MAA_MAAWS_HEDP502", 0],
        ["MAA_MAAWS_GMM_MT", 0],
        ["MAA_MAAWS_MT756", 0],
        ["rhs_mag_maaws_HE", 0],
        ["MRAWS_HE_F", 0],

        // Backpacks
        ["B_Carryall_mcamo", 0],

        // Tools and Items
        ["ACE_Vector", 0]
    ]],
    ["arsenal_role_rotarypilot", [
        ["H_PilotHelqmetHeli_B", 0],
        ["rhsusf_hgu56p_black", 0],
        ["rhsusf_hgu56p_green", 0],
        ["rhsusf_hgu56p_pink", 0],
        ["rhsusf_hgu56p_saf", 0],
        ["rhsusf_hgu56p_tan", 0],
        ["rhsusf_hgu56p_usa", 0],
        ["rhsusf_hgu56p_visor_black", 0],
        ["rhsusf_hgu56p_visor_green", 0],
        ["rhsusf_hgu56p_visor_pink", 0],
        ["rhsusf_hgu56p_visor_saf", 0],
        ["rhsusf_hgu56p_visor_tan", 0],
        ["rhsusf_hgu56p_visor_usa", 0],
        ["rhsusf_hgu56p_visor_white", 0],
        ["rhsusf_hgu56p_visor", 0],
        ["rhsusf_hgu56p_white", 0],
        ["rhsusf_hgu56p", 0],
        ["rhsusf_ihadss", 0],

        //Backpack
        ["USP_TACTICAL_PACK_CCT", 0],
        ["USP_TACTICAL_PACK_CCT2", 0],
        ["USP_TACTICAL_PACK_CCT3", 0],
        ["USP_TACTICAL_PACK_CCT4", 0],
        ["USP_TACTICAL_PACK_CCT5", 0],
        ["USP_TACTICAL_PACK_CCT6", 0],
        ["USP_TACTICAL_PACK_CCT7", 0],
        ["USP_TACTICAL_PACK_CCT8", 0],
        ["UK3CB_US_B_B_RIF_OCP_Radio", 0]
    ]],
    ["arsenal_role_pilotcrew", [
        ["H_CrewHelmetHeli_B", 0],
        ["rhsusf_hgu56p_mask_black", 0],
        ["rhsusf_hgu56p_mask_black_skull", 0],
        ["rhsusf_hgu56p_visor_mask_black", 0],
        ["rhsusf_hgu56p_visor_mask_Empire_black", 0],
        ["rhsusf_hgu56p_visor_mask_black_skull", 0],
        ["rhsusf_hgu56p_mask_green", 0],
        ["rhsusf_hgu56p_mask_green_mo", 0],
        ["rhsusf_hgu56p_visor_mask_green", 0],
        ["rhsusf_hgu56p_visor_mask_green_mo", 0],
        ["rhsusf_hgu56p_mask", 0],
        ["rhsusf_hgu56p_mask_mo", 0],
        ["rhsusf_hgu56p_mask_skull", 0],
        ["rhsusf_hgu56p_visor_mask", 0],
        ["rhsusf_hgu56p_visor_mask_mo", 0],
        ["rhsusf_hgu56p_visor_mask_skull", 0],
        ["rhsusf_hgu56p_mask_tan", 0],
        ["rhsusf_hgu56p_visor_mask_tan", 0],
        ["rhsusf_hgu56p_mask_pink", 0],
        ["rhsusf_hgu56p_visor_mask_pink", 0],
        ["rhsusf_hgu56p_mask_saf", 0],
        ["rhsusf_hgu56p_visor_mask_saf", 0],
        ["rhsusf_hgu56p_mask_smiley", 0],
        ["rhsusf_hgu56p_visor_mask_smiley", 0],

        //Backpack
        ["USP_TACTICAL_PACK_CCT", 0],
        ["USP_TACTICAL_PACK_CCT2", 0],
        ["USP_TACTICAL_PACK_CCT3", 0],
        ["USP_TACTICAL_PACK_CCT4", 0],
        ["USP_TACTICAL_PACK_CCT5", 0],
        ["USP_TACTICAL_PACK_CCT6", 0],
        ["USP_TACTICAL_PACK_CCT7", 0],
        ["USP_TACTICAL_PACK_CCT8", 0],
        ["UK3CB_US_B_B_RIF_OCP_Radio", 0]
    ]],
    ["arsenal_role_pilotfighter", [
        ["RHS_jetpilot_usaf", 0],

        //Backpack
        ["USP_TACTICAL_PACK_MCB_CCT", 0],
        ["USP_TACTICAL_PACK_MCB_CCT2", 0],
        ["USP_TACTICAL_PACK_MCB_CCT3", 0],
        ["USP_TACTICAL_PACK_MCB_CCT4", 0],
        ["USP_TACTICAL_PACK_MCB_CCT5", 0],
        ["USP_TACTICAL_PACK_MCB_CCT6", 0],
        ["USP_TACTICAL_PACK_MCB_CCT7", 0],
        ["USP_TACTICAL_PACK_MCB_CCT8", 0],
        ["UK3CB_US_B_B_RIF_OCP_Radio", 0]
    ]],
    ["arsenal_role_pilottransport", [
        ["USP_BASEBALL_CAP_OD_C", 0],

        //Backpack
        ["USP_TACTICAL_PACK_MCB_CCT", 0],
        ["USP_TACTICAL_PACK_MCB_CCT2", 0],
        ["USP_TACTICAL_PACK_MCB_CCT3", 0],
        ["USP_TACTICAL_PACK_MCB_CCT4", 0],
        ["USP_TACTICAL_PACK_MCB_CCT5", 0],
        ["USP_TACTICAL_PACK_MCB_CCT6", 0],
        ["USP_TACTICAL_PACK_MCB_CCT7", 0],
        ["USP_TACTICAL_PACK_MCB_CCT8", 0],
        ["UK3CB_US_B_B_RIF_OCP_Radio", 0]
    ]]
];

private _return = createHashMapFromArray _dataArray;

if (!(_return isEqualType createHashMap)) exitWith {
    SHOW_CHAT_ERROR_1("LogisticsDatabase", "Fatal error creating database (database base type faulty %1)...", typeName _return);
    createHashMapFromArray [["", []]];
};

_return;
