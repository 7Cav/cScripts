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
_companySelector = toLower(_companySelector);

private _default_arsenal = [
    // CAV Uniforms
    "rhs_uniform_cu_ocp_1stcav",
    // CAV headgear
    "DAR_Beret_Blk","DAR_Beret_Mar","rhsusf_patrolcap_ocp",
    // CAV binoculars
    "ACE_Vector", "Binocular", "rhsusf_bino_m24",
    // CAV medical
    "ACE_quikclot","ACE_morphine","ACE_tourniquet",
    // CAV items
    "ACE_CableTie", "ACE_EarPlugs", "ACE_Chemlight_Shield","ACE_MapTools","ACE_EntrenchingTool","ACE_IR_Strobe_Item","ACE_wirecutter",
    // CAV radio
    "ACRE_PRC343",
    // CAV googles
    "rhs_googles_black", "rhs_googles_yellow", "rhs_googles_clear", "rhs_googles_orange", "rhs_ess_black", "rhsusf_oakley_goggles_blk", "rhsusf_oakley_goggles_clr", "rhsusf_oakley_goggles_ylw",
    // CAV default
    "ACE_MapTools", "ItemMap", "ItemAndroid", "ItemCompass", "ItemWatch",

    // Supply Crate Weapons Export
    "rhs_weap_M136_hp",
    // Supply Crate Magazines Export
    "rhs_mag_30Rnd_556x45_M855A1_Stanag","rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red","rhs_200rnd_556x45_M_SAW","rhsusf_mag_15Rnd_9x19_JHP","rhs_fgm148_magazine_AT","rhs_fim92_mag","rhs_mag_m67","SmokeShell","SmokeShellRed","SmokeShellBlue","SmokeShellGreen","SmokeShellOrange","SmokeShellYellow","SmokeShellPurple","B_IR_Grenade","ACE_M84","rhs_mag_M441_HE","rhs_mag_M433_HEDP","rhs_mag_m714_White","rhs_mag_m715_Green","rhs_mag_m716_yellow","rhs_mag_m713_Red","ACE_HuntIR_M203","rhs_mag_M585_white","Chemlight_green","Chemlight_red","Chemlight_yellow","SatchelCharge_Remote_Mag","DemoCharge_Remote_Mag",
    // Supply Crate Items Export
    "ACE_WaterBottle","ACE_MRE_BeefStew","ACE_MRE_ChickenTikkaMasala","ACE_MRE_ChickenHerbDumplings","ACE_MRE_CreamChickenSoup","ACE_MRE_CreamTomatoSoup","ACE_MRE_LambCurry","ACE_MRE_MeatballsPasta","ACE_MRE_SteakVegetables","ACE_Chemlight_Shield","ACE_EarPlugs","ACE_quikclot","ACE_tourniquet","ACE_personalAidKit"
    // Supply Crate Backpacks Export
];


private _alpha_arsenal = [
    // Alpha Approved Headgear
    // Alpha Approved Uniforms
    // Alpha Approved vest
    // Alpha Approved Backpack
    // Alpha Approved Weapons
    "rhs_weap_m4a1_carryhandle", "rhs_weap_m4a1_carryhandle_m203", "rhs_weap_m4a1_carryhandle_m203S", "rhs_weap_m4a1", "rhs_weap_m4a1_m203", "rhs_weap_m4a1_m203s", "rhs_weap_m4a1_m320",
    "rhs_weap_m249_pip_L_para", "rhs_weap_m249_pip_S_para",
    // Alpha Approved Acc
    // Alpha Approved Misc

    // alpha Loadout Weapons Export
    "rhs_weap_m4","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ACOG_RMR","rhsusf_weap_m9","rhs_weap_m249_pip_L_para","rhsusf_acc_ELCAN_ard",
    // alpha Loadout Magazines Export
    "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red","rhsusf_mag_15Rnd_9x19_JHP","B_IR_Grenade","SmokeShell","SmokeShellBlue","SmokeShellRed","SmokeShellGreen","Chemlight_green","ACE_Chemlight_HiRed","Chemlight_blue","DemoCharge_Remote_Mag","rhsusf_200Rnd_556x45_box","Chemlight_red","ACE_Chemlight_HiYellow",
    // alpha Loadout Items Export
    "ACRE_PRC152","ACRE_PRC117F","ACE_quikclot","ACE_morphine","ACE_epinephrine","ACE_tourniquet","ACE_Canteen","ACE_EntrenchingTool","ACE_MapTools","ACE_Flashlight_MX991","ACE_microDAGR","H_Cap_tan","rhsusf_shemagh_tan","ItemcTab","ItemMap","ACE_Altimeter","ACE_Flashlight_XL50","ACE_Clacker","ItemAndroid","ACE_CableTie","ToolKit",40,"ACE_fieldDressing","ACRE_PRC343","ACE_IR_Strobe_Item",
    // alpha Loadout Gear Export
    "NVGogglesB_grn_F","rhsusf_hgu56p_visor_green","rhs_uniform_cu_ocp_1stcav","rhsusf_mbav_light","rhsusf_hgu56p_visor_mask_black","rhsusf_mbav_mg","rhsusf_ihadss","H_PilotHelmetFighter_B","U_B_PilotCoveralls",
    // alpha Loadout Backpacks Export
    "B_Kitbag_mcamo","B_Carryall_cbr","B_AssaultPack_mcamo",

    // Crate Weapons Export
    "rhs_weap_m4a1_m320","rhs_weap_m249_pip_L","rhs_weap_M136_hp",
    // Crate Magazines Export
    "rhs_mag_30Rnd_556x45_M855A1_Stanag","rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red","rhs_200rnd_556x45_M_SAW","rhsusf_mag_15Rnd_9x19_JHP","rhs_mag_m67","SmokeShell","SmokeShellRed","SmokeShellBlue","SmokeShellGreen","SmokeShellOrange","SmokeShellYellow","SmokeShellPurple","B_IR_Grenade","ACE_M84","rhs_mag_M441_HE","rhs_mag_M433_HEDP","rhs_mag_m714_White","rhs_mag_m715_Green","rhs_mag_m716_yellow","rhs_mag_m713_Red","ACE_HuntIR_M203","rhs_mag_M585_white","Chemlight_green","Chemlight_red","Chemlight_yellow",
    // Crate Items Export
    "ACRE_PRC152","ACRE_PRC117F","ACRE_PRC343","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_ELCAN","ToolKit","ACE_Flashlight_MX991","ItemcTabHCam","ACE_CableTie","ACE_Chemlight_Shield","ACE_EarPlugs","ACE_quikclot","ACE_tourniquet","ACE_surgicalKit","ACE_morphine","rhsusf_ihadss","rhsusf_hgu56p_visor","rhsusf_hgu56p_visor_green","rhsusf_hgu56p_visor_mask_black","H_PilotHelmetFighter_B","DAR_Beret_Mar","rhsusf_patrolcap_ocp"
    // Crate Backpacks Export
];
private _bravo_arsenal = [
    // Bravo Approved Headgear
    "rhsusf_ach_helmet_ocp","rhsusf_ach_helmet_headset_ocp","rhsusf_ach_helmet_headset_ess_ocp",
    // Bravo Approved Uniforms
    // Bravo Approved vest
    "rhsusf_iotv_ocp_Grenadier", "rhsusf_iotv_ocp_Medic","rhsusf_iotv_ocp","rhsusf_iotv_ocp_Repair","rhsusf_iotv_ocp_Rifleman","rhsusf_iotv_ocp_SAW","rhsusf_iotv_ocp_Squadleader","rhsusf_iotv_ocp_Teamleader",
    // Bravo Approved Backpack
    // Bravo Approved Weapons
    "rhs_weap_m4a1_carryhandle", "rhs_weap_m4a1_carryhandle_m203", "rhs_weap_m4a1_carryhandle_m203S", "rhs_weap_m4a1", "rhs_weap_m4a1_m203", "rhs_weap_m4a1_m203s", "rhs_weap_m4a1_m320",
    "rhs_weap_m249_pip_L_para", "rhs_weap_m249_pip_S_para",
    // Bravo Approved Acc
    // Bravo Approved Misc

    // bravo Loadout Weapons Export
    "rhs_weap_m4a1_grip","rhsusf_acc_anpeq15side","rhsusf_acc_ACOG_RMR","rhsusf_acc_grip1","rhs_weap_m4a1_m320","rhsusf_acc_compm4","rhsusf_weap_m9","rhs_weap_m4a1_carryhandle","rhs_weap_m249_pip_S","rhs_weap_m240B","rhsusf_acc_ACOG_MDO",
    // bravo Loadout Magazines Export
    "rhs_mag_30Rnd_556x45_M855A1_Stanag","rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red","rhs_mag_m67","SmokeShell","SmokeShellBlue","SmokeShellGreen","SmokeShellRed","SmokeShellYellow","rhsusf_mag_15Rnd_9x19_JHP","rhs_mag_m714_White","rhs_mag_m713_Red","rhs_mag_m715_Green","rhs_mag_m662_red","rhs_mag_m661_green","rhs_mag_M441_HE","rhs_mag_M433_HEDP","ACE_HuntIR_M203","rhs_200rnd_556x45_M_SAW","rhsusf_100Rnd_762x51_m80a1epr","rhsusf_100Rnd_762x51_m62_tracer",
    // bravo Loadout Items Export
    "ACRE_PRC152","ACE_quikclot","ACE_tourniquet","ACE_personalAidKit","ACE_Canteen","ACE_EarPlugs","ACE_MapTools","ACE_CableTie","ACE_microDAGR","ACE_HuntIR_monitor","rhsusf_shemagh_gogg_tan","ACE_SpraypaintRed","ACE_EntrenchingTool","ItemcTab","ItemMap","ItemWatch","ToolKit","ItemAndroid","ACE_morphine",
    // bravo Loadout Gear Export
    "rhsusf_ANPVS_14","rhsusf_ach_helmet_headset_ocp","rhs_uniform_cu_ocp_1stcav","rhsusf_iotv_ocp_Teamleader","rhsusf_cvc_green_helmet","rhsusf_iotv_ocp_Repair","rhsusf_iotv_ocp_Squadleader","rhsusf_iotv_ocp_SAW","rhsusf_iotv_ocp_Rifleman",
    // bravo Loadout Backpacks Export
    "B_Carryall_mcamo","B_AssaultPack_mcamo",

    // Crate Weapons Export
    "rhs_weap_m240B","rhs_dweap_maaws","rhs_weap_M136_hp",
    // Crate Magazines Export
    "rhs_mag_30Rnd_556x45_M855A1_Stanag","rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red","rhs_200rnd_556x45_M_SAW","rhsusf_100Rnd_762x51_m61_ap","rhsusf_mag_15Rnd_9x19_JHP","rhs_mag_maaws_HEAT","rhs_mag_maaws_HE","rhs_mag_maaws_HEDP","rhs_mag_m67","SmokeShell","SmokeShellRed","SmokeShellBlue","SmokeShellGreen","SmokeShellOrange","SmokeShellYellow","SmokeShellPurple","B_IR_Grenade","ACE_M84","rhs_mag_M441_HE","rhs_mag_M433_HEDP","rhs_mag_m714_White","rhs_mag_m715_Green","rhs_mag_m716_yellow","rhs_mag_m713_Red","ACE_HuntIR_M203","rhs_mag_M585_white","Chemlight_blue","Chemlight_red",
    // Crate Items Export
    "ACRE_PRC152","ACRE_PRC117F","ACRE_PRC343","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_ELCAN","rhsusf_acc_eotech_552","rhs_optic_maaws","rhsusf_ANPVS_14","ToolKit","ACE_Flashlight_MX991","ACE_CableTie","ACE_wirecutter","ACE_EntrenchingTool","ACE_IR_Strobe_Item","ACE_Chemlight_Shield","ACE_EarPlugs","ACE_quikclot","ACE_tourniquet","ACE_surgicalKit","ACE_morphine","rhsusf_cvc_green_helmet","rhsusf_ach_helmet_headset_ocp","rhsusf_patrolcap_ocp",
    // Crate Backpacks Export
    "B_Carryall_mcamo"

];
private _charlie_arsenal = [
    // Charlie Approved Headgear
    "rhsusf_ach_helmet_ocp","rhsusf_ach_helmet_headset_ocp","rhsusf_ach_helmet_camo_ocp",
    // Charlie Approved Uniforms
    // Charlie Approved vest
    "rhsusf_spcs_ocp","rhsusf_spcs_ocp_crewman","rhsusf_spcs_ocp_grenadier","rhsusf_spcs_ocp_machinegunner","rhsusf_spcs_ocp_medic", "rhsusf_spcs_ocp_rifleman_alt", "rhsusf_spcs_ocp_rifleman", "rhsusf_spcs_ocp_saw", "rhsusf_spcs_ocp_sniper", "rhsusf_spcs_ocp_squadleader", "rhsusf_spcs_ocp_teamleader_alt", "rhsusf_spcs_ocp_teamleader",
    // Charlie Approved Backpack
    "B_Carryall_mcamo", "B_Kitbag_cbr", "B_Kitbag_mcamo",
    // Charlie Approved Weapons
    "rhs_weap_m4a1_carryhandle", "rhs_weap_m4a1_carryhandle_m203", "rhs_weap_m4a1_carryhandle_m203S", "rhs_weap_m4a1", "rhs_weap_m4a1_m203", "rhs_weap_m4a1_m203s", "rhs_weap_m4a1_m320",
    "rhs_weap_m249_pip_L_para", "rhs_weap_m249_pip_S_para",
    // Charlie Approved Acc
    "rhsusf_acc_acog_rmr", "rhsusf_acc_anpeq15a", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_anpeq15_bk_light","rhsusf_acc_anpeq15side_bk","rhsusf_acc_anpeq15_bk_top", "rhsusf_acc_m952v",
    // Charlie Approved Misc
    "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_grip3",

    // charlie Loadout Weapons Export
    "rhs_weap_m4a1_carryhandle","rhsusf_acc_anpeq15A","rhsusf_acc_ACOG_RMR","rhs_weap_m4a1_m320","rhs_weap_m249_pip_L_para","rhs_weap_M136_hp",
    // charlie Loadout Magazines Export
    "rhs_mag_30Rnd_556x45_M855A1_Stanag","rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red","rhs_mag_m67","SmokeShell","SmokeShellGreen","SmokeShellRed","SmokeShellYellow","B_IR_Grenade","SmokeShellOrange","rhs_mag_M441_HE","rhs_mag_m713_Red","UGL_FlareCIR_F","rhs_mag_m662_red","ACE_HuntIR_M203","rhs_mag_M397_HET","rhs_mag_m714_White","rhs_200rnd_556x45_M_SAW",
    // charlie Loadout Items Export
    "ACRE_PRC152","ACE_quikclot","ACE_tourniquet","ACE_personalAidKit","ACE_Canteen","ACE_EarPlugs","ACE_MapTools","ACE_CableTie","ACE_microDAGR","ACE_HuntIR_monitor","ACE_SpraypaintRed","ACE_EntrenchingTool","ItemcTab","ItemMap","ItemWatch","ACE_Flashlight_MX991","ACE_IR_Strobe_Item","Laserbatteries","ACE_Vector","ACE_MX2A","rhsusf_ANPVS_15","ItemAndroid","ACE_morphine","ACE_RangeTable_82mm","ACE_M26_Clacker","ACE_DefusalKit","Flagstack_Red","ACE_Fortify","Ace_M26_Clacker",
    // charlie Loadout Gear Export
    "rhsusf_ach_helmet_headset_ocp","LOP_U_ISTS_Fatigue_19","rhsusf_spcs_ocp_squadleader","rhsusf_ach_helmet_headset_ess_ocp","rhsusf_spcs_ocp_teamleader_alt","rhsusf_spcs_ocp_grenadier","rhsusf_ach_helmet_camo_ocp","rhsusf_spcs_ocp_saw","rhsusf_ach_helmet_ocp_norotos","rhsusf_spcs_ocp_rifleman_alt","rhsusf_ach_helmet_ESS_ocp","rhsusf_spcs_ocp_medic","rhsusf_ach_helmet_ocp","rhsusf_spcs_ocp",
    // charlie Loadout Backpacks Export
    "B_Carryall_mcamo","B_Kitbag_cbr",

    // Crate Weapons Export
    "rhs_weap_maaws","rhs_weap_M136_hp","rhs_weap_m72a7",
    // Crate Magazines Export
    "rhs_mag_30Rnd_556x45_M855A1_Stanag","rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red","rhs_200rnd_556x45_M_SAW","rhs_mag_maaws_HEAT","rhs_mag_maaws_HE","rhs_mag_m67","SmokeShell","SmokeShellRed","SmokeShellBlue","SmokeShellGreen","SmokeShellOrange","SmokeShellYellow","SmokeShellPurple","B_IR_Grenade","ACE_M84","rhs_mag_M441_HE","rhs_mag_M433_HEDP","rhs_mag_m714_White","rhs_mag_m715_Green","rhs_mag_m716_yellow","rhs_mag_m713_Red","ACE_HuntIR_M203","rhs_mag_M585_white","Chemlight_blue","Chemlight_red","SatchelCharge_Remote_Mag","DemoCharge_Remote_Mag",
    // Crate Items Export
    "ACRE_PRC152","ACRE_PRC117F","ACRE_PRC343","rhsusf_acc_eotech_552","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_ELCAN","rhs_optic_maaws","ACE_M26_Clacker","rhsusf_ANPVS_14","ACE_Flashlight_MX991","ACE_CableTie","ACE_wirecutter","ACE_EntrenchingTool","ACE_IR_Strobe_Item","ACE_Chemlight_Shield","ACE_EarPlugs","ACE_quikclot","ACE_tourniquet","ACE_surgicalKit","ACE_morphine","DAR_Beret_Mar","rhsusf_patrolcap_ocp",
    // Crate Backpacks Export
    "B_Carryall_mcamo"
];
private _heavyweapons_arsenal = [
    // heavyweapons Loadout Weapons Export
    "rhs_weap_m4a1_grip","rhsusf_acc_anpeq15side","rhsusf_acc_ACOG_RMR","rhsusf_acc_grip1","rhs_weap_m240B","rhsusf_acc_ACOG_MDO","rhs_weap_m4a1_m320","rhsusf_acc_anpeq15A","rhs_weap_M136_hp","rhs_weap_m249_pip_L_para","rhs_weap_m4a1_carryhandle",
    // heavyweapons Loadout Magazines Export
    "rhs_mag_30Rnd_556x45_M855A1_Stanag","rhs_mag_m67","SmokeShell","rhsusf_100Rnd_762x51_m80a1epr","rhsusf_100Rnd_762x51_m62_tracer","rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red","SmokeShellGreen","SmokeShellRed","SmokeShellYellow","rhs_mag_M441_HE","rhs_mag_M397_HET","ACE_HuntIR_M203","rhs_mag_m714_White","rhs_200rnd_556x45_M_SAW",
    // heavyweapons Loadout Items Export
    "ACRE_PRC152","ACE_quikclot","ACE_tourniquet","ACE_personalAidKit","ACE_Canteen","ACE_EarPlugs","ACE_MapTools","ACE_CableTie","ACE_microDAGR","ACE_SpraypaintRed","ACE_EntrenchingTool","ItemAndroid","ItemMap","ItemWatch","ACE_RangeTable_82mm","ACE_M26_Clacker","ACE_DefusalKit","ACE_HuntIR_monitor","Flagstack_Red","ACE_Fortify","Ace_M26_Clacker","ACE_morphine",
    // heavyweapons Loadout Gear Export
    "rhsusf_ANPVS_14","rhsusf_ach_helmet_headset_ocp","rhs_uniform_cu_ocp_1stcav","rhsusf_iotv_ocp_SAW","rhsusf_ach_helmet_ocp","LOP_U_ISTS_Fatigue_19","rhsusf_spcs_ocp",
    // heavyweapons Loadout Backpacks Export
    "B_Carryall_mcamo","B_Kitbag_cbr",

    // Crate Weapons Export
    "rhs_weap_m240B","rhs_weap_fim92","rhs_weap_fgm148","rhs_weap_maaws","rhs_weap_M136_hp","ACE_VMH3","ACE_VMM3",
    // Crate Magazines Export
    "rhs_mag_30Rnd_556x45_M855A1_Stanag","rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red","rhs_200rnd_556x45_M_SAW","rhsusf_100Rnd_762x51_m61_ap","rhsusf_mag_15Rnd_9x19_JHP","rhs_fgm148_magazine_AT","rhs_fim92_mag","rhs_mag_maaws_HEDP","rhs_mag_maaws_HEAT","rhs_mag_maaws_HE","rhs_mag_m67","SmokeShell","SmokeShellRed","SmokeShellBlue","SmokeShellGreen","SmokeShellOrange","SmokeShellYellow","SmokeShellPurple","B_IR_Grenade","ACE_M84","rhs_mag_M441_HE","rhs_mag_M433_HEDP","rhs_mag_m714_White","rhs_mag_m715_Green","rhs_mag_m716_yellow","rhs_mag_m713_Red","ACE_HuntIR_M203","rhs_mag_M585_white","Chemlight_blue","Chemlight_red","SatchelCharge_Remote_Mag","DemoCharge_Remote_Mag","ClaymoreDirectionalMine_Remote_Mag","APERSMine_Range_Mag","APERSBoundingMine_Range_Mag","ACE_FlareTripMine_Mag","SLAMDirectionalMine_Wire_Mag","rhs_mine_M19_mag",
    // Crate Items Export
    "ACRE_PRC152","ACRE_PRC117F","ACRE_PRC343","rhsusf_acc_eotech_552","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_ELCAN","rhs_optic_maaws","rhsusf_ANPVS_14","ToolKit","ACE_M26_Clacker","ACE_DefusalKit","ACE_Flashlight_MX991","ACE_CableTie","ACE_wirecutter","ACE_EntrenchingTool","ACE_RangeTable_82mm","ACE_IR_Strobe_Item","Flagstack_Red","Signpack_Mines","ACE_Fortify","ACE_EarPlugs","ACE_quikclot","ACE_tourniquet","ACE_surgicalKit","ACE_morphine","DAR_Beret_Mar","rhsusf_patrolcap_ocp",
    // Crate Backpacks Export
    "B_Carryall_mcamo"

];
private _medical_arsenal = [
    
    // medical Loadout Weapons Export
    "rhs_weap_m4a1_grip","rhsusf_acc_anpeq15side","rhsusf_acc_compm4","rhsusf_acc_grip3","rhsusf_weap_m9",
    // medical Loadout Magazines Export
    "rhs_mag_30Rnd_556x45_M855A1_Stanag","rhsusf_mag_15Rnd_9x19_JHP","rhs_mag_m67","ACE_Chemlight_HiOrange","SmokeShell","SmokeShellBlue","SmokeShellOrange","SmokeShellGreen","SmokeShellRed","SmokeShellYellow",
    // medical Loadout Items Export
    "ACRE_PRC152","ACE_personalAidKit","ACE_surgicalKit","ACE_tourniquet","ACE_quikclot","ACE_elasticBandage","ACE_adenosine","ACE_epinephrine","ACE_morphine","ACE_salineIV","ACE_Canteen","ACE_EarPlugs","ACE_MapTools","ACE_CableTie","ACE_microDAGR","ACE_EntrenchingTool","ItemAndroid","ItemMap","ItemWatch",35,"ACE_MicroDAGR",
    // medical Loadout Gear Export
    "rhsusf_ach_bare_tan_headset","LOP_U_ISTS_Fatigue_19","rhsusf_mbav_medic","rhsusf_ach_helmet_headset_ocp",
    // medical Loadout Backpacks Export
    "B_Carryall_mcamo",

    // Crate Weapons Export
    // Crate Magazines Export
    "rhs_mag_30Rnd_556x45_M855A1_Stanag","rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red","rhs_mag_m67","SmokeShell","SmokeShellRed","SmokeShellBlue","SmokeShellGreen","SmokeShellOrange","SmokeShellYellow","SmokeShellPurple","B_IR_Grenade","ACE_M84","rhs_mag_M585_white","Chemlight_blue","Chemlight_red",
    // Crate Items Export
    "ACRE_PRC152","ACRE_PRC117F","ACRE_PRC343","rhsusf_acc_eotech_552","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_ELCAN","rhsusf_ANPVS_14","ACE_Flashlight_MX991","ACE_CableTie","ACE_wirecutter","ACE_EntrenchingTool","ACE_IR_Strobe_Item","ACE_Chemlight_Shield","ACE_EarPlugs","ACE_fieldDressing","ACE_packingBandage","ACE_elasticBandage","ACE_quikclot","ACE_tourniquet","ACE_personalAidKit","ACE_surgicalKit","ACE_bloodIV","ACE_bloodIV_500","ACE_salineIV","ACE_salineIV_500","ACE_morphine","ACE_epinephrine","ACE_adenosine","ACE_bodyBag","DAR_Beret_Mar","rhsusf_patrolcap_ocp",
    // Crate Backpacks Export
    "B_Carryall_mcamo"

];
private _ranger_arsenal = [];
private _sniper_arsenal = [];

switch (_companySelector) do {
    case "alpha": {
        _alpha_arsenal append _default_arsenal;
        _alpha_arsenal arrayIntersect _alpha_arsenal;
        [_object, _alpha_arsenal] call ace_arsenal_fnc_initBox;
    };
    case "bravo": {
        _bravo_arsenal append _default_arsenal;
        _bravo_arsenal arrayIntersect _bravo_arsenal;
        [_object, _bravo_arsenal] call ace_arsenal_fnc_initBox;
    };
    case "charlie": {
        _charlie_arsenal append _default_arsenal;
        _charlie_arsenal arrayIntersect _charlie_arsenal;
        [_object, _charlie_arsenal] call ace_arsenal_fnc_initBox;
    };
    case "heavyweapons": {
        _heavyweapons_arsenal append _default_arsenal;
        _heavyweapons_arsenal append _bravo_arsenal;
        _heavyweapons_arsenal append _charlie_arsenal;
        _heavyweapons_arsenal arrayIntersect _heavyweapons_arsenal;
        [_object, _heavyweapons_arsenal] call ace_arsenal_fnc_initBox;
    };
    case "medical": {
        _medical_arsenal append _default_arsenal;
        _medical_arsenal arrayIntersect _medical_arsenal;
        [_object, _medical_arsenal] call ace_arsenal_fnc_initBox;
    };
    case "ranger": {
        [_object, true] call ace_arsenal_fnc_initBox;
        // _ranger_arsenal append _default_arsenal;
        // _ranger_arsenal arrayIntersect _ranger_arsenal;
        // [_object, _ranger_arsenal] call ace_arsenal_fnc_initBox;
    };
    case "sniper": {
        [_object, true] call ace_arsenal_fnc_initBox;
        // _sniper_arsenal append _default_arsenal;
        // _sniper_arsenal arrayIntersect _sniper_arsenal;
        // [_object, _sniper_arsenal] call ace_arsenal_fnc_initBox;
    };
    default {
        [_object, true] call ace_arsenal_fnc_initBox;
    };
};
