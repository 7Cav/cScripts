#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function crates a arsenal on the given object with items used in each company.
 * If full, none, or empty value is given the arsenal will be "full".
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Company <STRING>
 *
 * Example:
 * ["box","full"] call cScripts_fnc_addArsenal
 */

params [
    ["_object", objNull, [objNull]],
    ["_companySelector", ""]
];

// make string lower case
_companySelector = toUpper(_companySelector);

// Container Category
private _officer = ["OFFICER"];
private _alpha   = ["ALPHA", "BUFFALO", "TITAN", "RAIDER", "SPARROW", "EAGLE", "HOG"];
private _bravo   = ["BRAVO", "LANCER", "VIKING", "SABER", "BANSHEE", "APOLLO", "MUSTANG"];
private _charlie = ["CHARLIE", "BANDIT", "MISFIT"];

// If inside of the category
private _container = "";
if (_companySelector in _alpha ) then {_container = "ALPHA"};
if (_companySelector in _bravo ) then {_container = "BRAVO"};
if (_companySelector in _charlie ) then {_container = "CHARLIE"};

private _globalArsenalContainer = [
    "rhs_uniform_cu_ocp_1stcav",

    "rhs_mag_30Rnd_556x45_M855A1_Stanag",
    "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"
];

private _alphaArsenalContainer = [
    // ALPHA Loadout Weapons Export
    "rhs_weap_m4","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ACOG_RMR","rhsusf_weap_m9","rhs_weap_m4a1_m320","rhsusf_acc_anpeq15A","rhs_weap_m249_pip_L_para","rhsusf_acc_ELCAN_ard","rhs_weap_m240B",
    // ALPHA Loadout Magazines Export
    "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red","rhsusf_mag_15Rnd_9x19_JHP","B_IR_Grenade","SmokeShell","SmokeShellBlue","SmokeShellRed","SmokeShellGreen","Chemlight_green","ACE_Chemlight_HiRed","Chemlight_blue","rhs_mag_m67","SmokeShellOrange","SmokeShellYellow","ACE_HandFlare_Red","rhs_mag_M441_HE","rhs_mag_m713_Red","UGL_FlareCIR_F","rhs_mag_m662_red","ACE_HuntIR_M203","rhs_mag_30Rnd_556x45_M855A1_Stanag","SatchelCharge_Remote_Mag","rhsusf_200Rnd_556x45_box","DemoCharge_Remote_Mag","rhsusf_m112x4_mag","rhsusf_100Rnd_762x51_m62_tracer","Chemlight_red","ACE_Chemlight_HiYellow",
    // ALPHA Loadout Items Export
    "ACRE_PRC152","ACRE_PRC117F","ACE_quikclot","ACE_morphine","ACE_epinephrine","ACE_tourniquet","ACE_EntrenchingTool","ACE_MapTools","ACE_Flashlight_MX991","ACE_microDAGR","H_Cap_tan","rhsusf_shemagh_tan","ItemcTab","ACE_Altimeter","ACE_EarPlugs","ACE_IR_Strobe_Item","ACE_HuntIR_monitor","Laserbatteries","ACE_Vector","ItemcTabHCam","ACE_MX2A","rhsusf_ANPVS_15","ACRE_PRC343","ACE_Banana","ACE_Clacker","ItemAndroid","ToolKit","ACE_CableTie","H_Booniehat_mcamo","ACE_Flashlight_XL50","ACE_fieldDressing",40,"NVGogglesB_grn_F","rhsusf_hgu56p_visor_mask_Empire_black",
    // ALPHA Loadout Gear Export
    "rhsusf_ANPVS_15","rhsusf_hgu56p_visor_green","rhs_uniform_cu_ocp_1stcav","rhsusf_mbav_light","rhsusf_opscore_ut_pelt_nsw_cam","rhsusf_iotv_ocp_Grenadier","rhsusf_ach_helmet_headset_ocp","rhsusf_spcs_ocp_squadleader","NVGogglesB_grn_F","NVGogglesB_blk_F","rhsusf_hgu56p_visor_mask_Empire_black","rhsusf_mbav_mg","rhsusf_hgu56p_visor_mask_black","rhsusf_ihadss","H_PilotHelmetFighter_B","U_B_PilotCoveralls","rhsusf_hgu56p_visor","rhsusf_shemagh_od",
    // ALPHA Loadout Backpacks Export
    "B_Kitbag_mcamo","B_TacticalPack_oli","B_Carryall_mcamo","B_Carryall_cbr","B_AssaultPack_mcamo",

    // Crate Weapons Export
    
    // Crate Magazines Export
    "ACE_Chemlight_HiBlue","ACE_Chemlight_HiGreen","ACE_Chemlight_HiRed","ACE_Chemlight_HiWhite","ACE_Chemlight_HiYellow","SmokeShell","SmokeShellBlue","SmokeShellGreen","SmokeShellOrange","SmokeShellPurple","SmokeShellRed","SmokeShellYellow","ACE_Chemlight_IR","B_IR_Grenade",
    // Crate Items Export
    "ACRE_PRC343","ACRE_PRC117F","ACRE_PRC152","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_M952V","rhsusf_acc_anpeq15side_bk","ACE_quikclot","ACE_tourniquet","ACE_splint","ACE_personalAidKit","ACE_surgicalKit","ACE_Chemlight_Shield","ACE_Flashlight_XL50","ACE_SpraypaintBlack","ACE_SpraypaintBlue","ACE_SpraypaintGreen","ACE_SpraypaintRed","ACE_EarPlugs","rhs_googles_black","rhs_googles_clear","rhsusf_oakley_goggles_blk","rhsusf_oakley_goggles_clr","ACE_MapTools","ACE_Canteen","ACE_MRE_BeefStew","ACE_MRE_ChickenTikkaMasala","ACE_MRE_ChickenHerbDumplings","ACE_MRE_CreamChickenSoup","ACE_MRE_CreamTomatoSoup","ACE_MRE_LambCurry","ACE_MRE_MeatballsPasta","ACE_MRE_SteakVegetables"
    // Crate Backpacks Export
];

private _bravoArsenalContainer = [
    // BRAVO Loadout Weapons Export
    "rhs_weap_m4a1_grip","rhsusf_acc_anpeq15side","rhsusf_acc_ACOG_RMR","rhsusf_acc_grip1","rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_grip3","rhsusf_weap_m9","rhs_weap_m4a1_m320","rhs_weap_m249_pip_S","rhs_weap_M136_hp","rhs_weap_m4a1_carryhandle",
    // BRAVO Loadout Magazines Export
    "rhs_mag_30Rnd_556x45_M855A1_Stanag","rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red","rhs_mag_m67","SmokeShell","SmokeShellBlue","SmokeShellGreen","SmokeShellRed","SmokeShellYellow","rhsusf_mag_15Rnd_9x19_JHP","rhs_mag_M441_HE","rhs_mag_M433_HEDP","rhs_mag_m714_White","ACE_HuntIR_M203","rhsusf_200rnd_556x45_mixed_box","rhs_mag_m713_Red","rhs_mag_m715_Green","rhs_mag_m662_red","rhs_mag_m661_green",
    // BRAVO Loadout Items Export
    "ACE_quikclot","ACE_tourniquet","ACE_EarPlugs","ACE_MapTools","ACE_CableTie","ACE_microDAGR","ACE_EntrenchingTool","ItemMap","ItemWatch","ACE_Flashlight_MX991","ACRE_PRC343","ItemcTab","ItemAndroid","ACRE_PRC152","ACE_personalAidKit","ACE_HuntIR_monitor","rhsusf_shemagh_gogg_tan","ACE_SpraypaintRed","ACE_surgicalKit",35,"ACE_salineIV","ACE_morphine","ACE_epinephrine","ACE_MicroDAGR","ToolKit",
    // BRAVO Loadout Gear Export
    "rhsusf_ANPVS_14","rhsusf_ach_helmet_headset_ocp","rhs_uniform_cu_ocp_1stcav","rhsusf_iotv_ocp_Squadleader","ACE_NVG_Wide","rhsusf_shemagh_tan","rhs_uniform_cu_ocp","rhsusf_ach_bare_headset","LOP_U_ISTS_Fatigue_19","rhsusf_spcs_ocp_saw","rhsusf_iotv_ocp_Teamleader","rhsusf_mbav_medic","rhsusf_iotv_ocp_SAW","rhsusf_iotv_ocp_Rifleman","H_Cap_usblack","rhsusf_shemagh_od","rhsusf_iotv_ocp_Repair","rhsusf_cvc_green_helmet","rhsusf_shemagh_gogg_tan",
    // BRAVO Loadout Backpacks Export
    "B_Carryall_mcamo","B_AssaultPack_mcamo",

    // Crate Weapons Export
    "rhs_weap_maaws","rhs_weap_m240B","rhs_weap_fim92","rhs_weap_M136_hp","rhs_weap_m72a7",
    // Crate Magazines Export
    "ACE_Chemlight_HiBlue","ACE_Chemlight_HiGreen","ACE_Chemlight_HiRed","ACE_Chemlight_HiWhite","ACE_Chemlight_HiYellow","SmokeShell","SmokeShellBlue","SmokeShellGreen","SmokeShellOrange","SmokeShellPurple","SmokeShellRed","SmokeShellYellow","ACE_Chemlight_IR","B_IR_Grenade","rhs_mag_30Rnd_556x45_M855A1_Stanag","rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red","rhsusf_200Rnd_556x45_box","rhsusf_200rnd_556x45_mixed_box","rhsusf_100Rnd_762x51_m61_ap","rhs_mag_maaws_HEAT","rhs_mag_maaws_HE","rhs_mag_maaws_HE","rhs_mag_maaws_HEAT","rhs_fim92_mag","rhs_fgm148_magazine_AT","HandGrenade","ACE_M84","rhs_mag_M441_HE","rhs_mag_M433_HEDP","rhs_mag_M397_HET","rhs_mag_M585_white","rhs_mag_m661_green","rhs_mag_m662_red","rhs_mag_m713_Red","rhs_mag_m714_White","rhs_mag_m715_Green","rhs_mag_m716_yellow","1Rnd_SmokeBlue_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeOrange_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","1Rnd_SmokeRed_Grenade_shell","1Rnd_Smoke_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","ACE_HuntIR_M203","rhsusf_m112_mag","rhsusf_m112x4_mag","ClaymoreDirectionalMine_Remote_Mag",
    // Crate Items Export
    "ACRE_PRC343","ACRE_PRC117F","ACRE_PRC152","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_M952V","rhsusf_acc_anpeq15side_bk","ACE_quikclot","ACE_tourniquet","ACE_splint","ACE_personalAidKit","ACE_surgicalKit","ACE_Chemlight_Shield","ACE_Flashlight_XL50","ACE_SpraypaintBlack","ACE_SpraypaintBlue","ACE_SpraypaintGreen","ACE_SpraypaintRed","ACE_EarPlugs","rhs_googles_black","rhs_googles_clear","rhsusf_oakley_goggles_blk","rhsusf_oakley_goggles_clr","ACE_MapTools","ACE_Canteen","ACE_MRE_BeefStew","ACE_MRE_ChickenTikkaMasala","ACE_MRE_ChickenHerbDumplings","ACE_MRE_CreamChickenSoup","ACE_MRE_CreamTomatoSoup","ACE_MRE_LambCurry","ACE_MRE_MeatballsPasta","ACE_MRE_SteakVegetables","rhs_optic_maaws","ACE_wirecutter","ACE_EntrenchingTool","ACE_CableTie","ToolKit","ACE_fieldDressing","ACE_elasticBandage","ACE_packingBandage","ACE_adenosine","ACE_epinephrine","ACE_morphine","ACE_bloodIV","ACE_bloodIV_500","ACE_bloodIV_250","ACE_plasmaIV","ACE_plasmaIV_500","ACE_plasmaIV_250","ACE_salineIV","ACE_salineIV_500","ACE_salineIV_250","ACE_bodyBag","ACE_M26_Clacker","ACE_DefusalKit","ACE_Fortify"
    // Crate Backpacks Export
];

private _charlieArsenalContainer = [
    // BRAVO Loadout Weapons Export
    "rhs_weap_m4a1_grip","rhsusf_acc_anpeq15side","rhsusf_acc_ACOG_RMR","rhsusf_acc_grip1","rhs_weap_m4a1","rhsusf_acc_compm4","rhsusf_acc_grip3","rhsusf_weap_m9","rhs_weap_m4a1_m320","rhs_weap_m249_pip_S","rhs_weap_M136_hp","rhs_weap_m4a1_carryhandle",
    // BRAVO Loadout Magazines Export
    "rhs_mag_30Rnd_556x45_M855A1_Stanag","rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red","rhs_mag_m67","SmokeShell","SmokeShellBlue","SmokeShellGreen","SmokeShellRed","SmokeShellYellow","rhsusf_mag_15Rnd_9x19_JHP","rhs_mag_M441_HE","rhs_mag_M433_HEDP","rhs_mag_m714_White","ACE_HuntIR_M203","rhsusf_200rnd_556x45_mixed_box","rhs_mag_m713_Red","rhs_mag_m715_Green","rhs_mag_m662_red","rhs_mag_m661_green",
    // BRAVO Loadout Items Export
    "ACE_quikclot","ACE_tourniquet","ACE_EarPlugs","ACE_MapTools","ACE_CableTie","ACE_microDAGR","ACE_EntrenchingTool","ItemMap","ItemWatch","ACE_Flashlight_MX991","ACRE_PRC343","ItemcTab","ItemAndroid","ACRE_PRC152","ACE_personalAidKit","ACE_HuntIR_monitor","rhsusf_shemagh_gogg_tan","ACE_SpraypaintRed","ACE_surgicalKit",35,"ACE_salineIV","ACE_morphine","ACE_epinephrine","ACE_MicroDAGR","ToolKit",
    // BRAVO Loadout Gear Export
    "rhsusf_ANPVS_14","rhsusf_ach_helmet_headset_ocp","rhs_uniform_cu_ocp_1stcav","rhsusf_iotv_ocp_Squadleader","ACE_NVG_Wide","rhsusf_shemagh_tan","rhs_uniform_cu_ocp","rhsusf_ach_bare_headset","LOP_U_ISTS_Fatigue_19","rhsusf_spcs_ocp_saw","rhsusf_iotv_ocp_Teamleader","rhsusf_mbav_medic","rhsusf_iotv_ocp_SAW","rhsusf_iotv_ocp_Rifleman","H_Cap_usblack","rhsusf_shemagh_od","rhsusf_iotv_ocp_Repair","rhsusf_cvc_green_helmet","rhsusf_shemagh_gogg_tan",
    // BRAVO Loadout Backpacks Export
    "B_Carryall_mcamo","B_AssaultPack_mcamo",

    // Crate Weapons Export
    "rhs_weap_maaws","rhs_weap_m240B","rhs_weap_fim92","rhs_weap_M136_hp","rhs_weap_m72a7",
    // Crate Magazines Export
    "ACE_Chemlight_HiBlue","ACE_Chemlight_HiGreen","ACE_Chemlight_HiRed","ACE_Chemlight_HiWhite","ACE_Chemlight_HiYellow","SmokeShell","SmokeShellBlue","SmokeShellGreen","SmokeShellOrange","SmokeShellPurple","SmokeShellRed","SmokeShellYellow","ACE_Chemlight_IR","B_IR_Grenade","rhs_mag_30Rnd_556x45_M855A1_PMAG","rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red","rhsusf_200Rnd_556x45_box","rhsusf_200rnd_556x45_mixed_box","rhsusf_100Rnd_762x51_m61_ap","rhsusf_50Rnd_762x51_m61_ap","rhs_mag_maaws_HEAT","rhs_mag_maaws_HE","rhs_mag_maaws_HE","rhs_mag_maaws_HEAT","rhs_fim92_mag","rhs_fgm148_magazine_AT","HandGrenade","ACE_M84","rhs_mag_M441_HE","rhs_mag_M433_HEDP","rhs_mag_M397_HET","rhs_mag_M585_white","rhs_mag_m661_green","rhs_mag_m662_red","rhs_mag_m713_Red","rhs_mag_m714_White","rhs_mag_m715_Green","rhs_mag_m716_yellow","1Rnd_SmokeBlue_Grenade_shell","1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeOrange_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","1Rnd_SmokeRed_Grenade_shell","1Rnd_Smoke_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","ACE_HuntIR_M203","rhsusf_m112_mag","rhsusf_m112x4_mag","ClaymoreDirectionalMine_Remote_Mag",
    // Crate Items Export
    "ACRE_PRC343","ACRE_PRC117F","ACRE_PRC152","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_M952V","rhsusf_acc_anpeq15side_bk","ACE_quikclot","ACE_tourniquet","ACE_splint","ACE_personalAidKit","ACE_surgicalKit","ACE_Chemlight_Shield","ACE_Flashlight_XL50","ACE_SpraypaintBlack","ACE_SpraypaintBlue","ACE_SpraypaintGreen","ACE_SpraypaintRed","ACE_EarPlugs","rhs_googles_black","rhs_googles_clear","rhsusf_oakley_goggles_blk","rhsusf_oakley_goggles_clr","ACE_MapTools","ACE_Canteen","ACE_MRE_BeefStew","ACE_MRE_ChickenTikkaMasala","ACE_MRE_ChickenHerbDumplings","ACE_MRE_CreamChickenSoup","ACE_MRE_CreamTomatoSoup","ACE_MRE_LambCurry","ACE_MRE_MeatballsPasta","ACE_MRE_SteakVegetables","rhs_optic_maaws","rhsusf_acc_ELCAN_ard","rhsusf_acc_ACOG_MDO","rhsusf_acc_T1_high","rhsusf_acc_ACOG_RMR","rhsusf_acc_ACOG2","rhsusf_acc_compm4","rhsusf_acc_RX01","rhsusf_acc_eotech_xps3","rhsusf_acc_eotech_552","ACE_M26_Clacker","DAR_Beret_Mar","rhsusf_ach_helmet_ocp","rhsusf_ach_helmet_ESS_ocp","rhsusf_ach_helmet_headset_ocp","rhsusf_ach_helmet_headset_ess_ocp","rhsusf_ach_helmet_camo_ocp","rhsusf_ach_helmet_ocp_norotos","ACE_wirecutter","ACE_EntrenchingTool","ACE_CableTie"
    // Crate Backpacks Export
];

private _privateBlacklist = [
    "launch_I_Titan_F",
    "launch_O_Titan_ghex_F",
    "launch_O_Titan_F",
    "launch_B_Titan_tna_F",
    "launch_B_Titan_F",
    "launch_O_Titan_short_F",
    "launch_O_Titan_short_ghex_F",
    "launch_I_Titan_short_F",
    "launch_B_Titan_short_F",
    "launch_B_Titan_short_tna_F",
    "launch_B_Titan_olive_F",
    "launch_I_Titan_eaf_F",
    "rhsusf_5Rnd_HE",
    "rhsusf_5Rnd_FRAG",
    "rhsusf_8Rnd_HE",
    "rhsusf_8Rnd_FRAG",
    "H_HelmetO_ViperSP_ghex_F",
    "H_HelmetO_ViperSP_hex_F",
    "arifle_ARX_hex_F",
    "arifle_ARX_ghex_F",
    "arifle_ARX_blk_F",
    "U_O_V_Soldier_Viper_hex_F",
    "U_O_V_Soldier_Viper_F",
    "U_B_Protagonist_VR",
    "U_O_Protagonist_VR",
    "U_C_Protagonist_VR",
    "U_I_Protagonist_VR",
    "kka3_ace_extension_Campfire_burning_F",
    "ACRE_SEM52SL",
    "ACRE_SEM70",
    "B_Respawn_Sleeping_bag_blue_F",
    "B_Respawn_Sleeping_bag_brown_F",
    "B_Respawn_TentDome_F",
    "B_Patrol_Respawn_bag_F",
    "B_Respawn_Sleeping_bag_F",
    "B_Respawn_TentA_F",
    "I_AA_01_weapon_F",
    "O_AA_01_weapon_F",
    "O_AT_01_weapon_F",
    "I_AT_01_weapon_F",
    "B_AT_01_weapon_F",
    "B_AA_01_weapon_F",
    "I_E_AT_01_weapon_F",
    "I_E_AA_01_weapon_F",
    "ace_csw_staticATCarry",
    "ace_csw_staticAACarry",
    "I_E_UavTerminal",
    "O_UavTerminal",
    "I_UavTerminal",
    "ALIVE_Terminal",
    "ACE_CTS9",
    "rhsusf_acc_tacsac_blk",
    "rhsusf_acc_tacsac_blue",
    "rhsusf_acc_tacsac_tan",
    "ALIVE_Tablet"
];

switch (_container) do {
    case "ALPHA": {
        _alphaArsenalContainer append _globalArsenalContainer;
        _alphaArsenalContainer arrayIntersect _alphaArsenalContainer;
        [_object, _alphaArsenalContainer] call ace_arsenal_fnc_initBox;
    };
    case "BRAVO": {
        _bravoArsenalContainer append _globalArsenalContainer;
        _bravoArsenalContainer arrayIntersect _bravoArsenalContainer;
        [_object, _bravoArsenalContainer] call ace_arsenal_fnc_initBox;
    };
    case "CHARLIE": {
        _charlieArsenalContainer append _globalArsenalContainer;
        _charlieArsenalContainer arrayIntersect _charlieArsenalContainer;
        [_object, _charlieArsenalContainer] call ace_arsenal_fnc_initBox;
    };
    case "PUBLIC": {
        [_object, true] call ace_arsenal_fnc_initBox;
        [_object, _privateBlacklist, true] call ace_arsenal_fnc_removeVirtualItems
    };
    default {
        [_object, true] call ace_arsenal_fnc_initBox;
    };
};
