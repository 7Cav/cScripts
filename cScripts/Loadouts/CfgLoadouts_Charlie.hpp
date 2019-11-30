// Charlie Company Loadouts
// By SFC.Atherton.H, SSG.Geki.T                        version 1.6

// Squad

class Cav_B_C_SquadLeader_F : Cav_B_Charlie_base_F { //General SL : 26.14kg
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_headset_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_squadleader"};

    primary[] = {"rhs_weap_m4a1_mstock","rhsusf_acc_SFMB556","rhsusf_acc_tdstubby_blk","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_ACOG_RMR"};
    //secondary[] = {""};
    //launcher[] = {""};

    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",8,
        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellGreen",
        "SmokeShellBlue",4,
        "SmokeShellRed",2,
        "ACE_Chemlight_HiRed",2,
        "ACE_Chemlight_HiGreen",2,
        "ACE_HandFlare_Red",2,
        "B_IR_Grenade",2
    };

    items[] += {
        "ACE_microDAGR",
        "ACRE_PRC152",
        "ACE_Flashlight_XL50",
        "ACE_HuntIR_monitor",
        "rhsusf_ANPVS_14"
    };

    //compass[] = {"ItemCompass"};
    gps[] = {"ItemAndroid"};
    //map[] = {"ItemMap"};
    //nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
};

class Cav_B_C_FireTeamLeader_F : Cav_B_Charlie_base_F { //General FTL : 24.6kg
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_teamleader"};

    primary[] = {"rhs_weap_m4a1_mstock","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_tdstubby_blk","rhsusf_acc_acog_rmr"};
    //launcher[] = {""};

    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",8,
        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellGreen",
        "SmokeShellBlue",2,
        "SmokeShellRed",
        "ACE_Chemlight_HiRed",2,
        "ACE_Chemlight_HiGreen",2,
        "B_IR_Grenade",2
    };

    items[] += {
        "ACE_microDAGR",
        "ACRE_PRC152",
        "ACE_Flashlight_XL50",
        "ACE_EntrenchingTool",
        "rhsusf_ANPVS_14",
        "ACE_SpraypaintGreen",
        "ACE_CableTie",4
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    //nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
};

class Cav_B_C_FireTeamLeaderGrenadier_Local : Cav_B_Charlie_base_F { //General Grenadier FTL : 29.1kg
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_grenadier"};

    primary[] = {"rhs_weap_m4a1_m320","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_acog_rmr"};
    //launcher[] = {""};

    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",8,
        "rhs_mag_M433_HEDP",3,
        "ACE_HuntIR_M203",2,
        "rhs_mag_M714_White",4,
        "rhs_mag_M713_Red",4,
        "rhs_mag_m662_red",2,
        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellGreen",
        "SmokeShellBlue",2,
        "SmokeShellRed",
        "ACE_Chemlight_HiRed",2,
        "Chemlight_Blue",2,
        "B_IR_Grenade",2
    };

    items[] += {
        "ACE_microDAGR",
        "ACRE_PRC152",
        "ACE_Flashlight_XL50",
        "ACE_EntrenchingTool",
        "ACE_SpraypaintGreen",
        "rhsusf_ANPVS_14",
        "ACE_CableTie",4
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    //nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
};

class Cav_B_C_AutomaticRifleman_F : Cav_B_Charlie_base_F { //General AR : 33.8kg
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_saw"};

    primary[] = {"rhs_weap_m249_light_S","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15side_bk","rhsusf_acc_elcan_ard","rhsusf_acc_saw_lw_bipod"};
    //secondary[] = {""};
    //launcher[] = {""};

    //binoculars[] = {""};

    magazines[] = {
        "rhsusf_200rnd_556x45_mixed_soft_pouch_coyote",6,
        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellGreen"
    };

    items[] += {
        "ACE_DAGR",
        "rhsusf_ANPVS_14",
        "ACE_Flashlight_XL50",
        "ACE_EntrenchingTool"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    //nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
};

class Cav_B_C_Grenadier_F : Cav_B_Charlie_base_F { //General GRN : 31.4kg
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_grenadier"};

    primary[] = {"rhs_weap_m4a1_m320","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_compm4"};
    //secondary[] = {""};
    //launcher[] = {""};

    //binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",10,
        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellGreen",
        "rhs_mag_M433_HEDP",17,
        "rhs_mag_M397_HET",4,
        "rhs_mag_m714_White",6,
        "rhs_mag_m662_red",2,
        "ACE_HuntIR_M203",2
    };

    items[] += {
        "ACE_DAGR",
        "rhsusf_ANPVS_14",
        "ACE_Flashlight_XL50",
        "ACE_EntrenchingTool"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    //nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
};

class Cav_B_C_RiflemanLAT_F : Cav_B_Charlie_base_F { //General Rifleman AT : 35.9kg
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_rifleman"};

    //primary[] = {};
    //secondary[] = {""};
    launcher[] = {"tf47_at4_heat"};

    //binoculars[] = {""};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",15,
        "rhs_mag_M433_HEDP",6,
        "rhs_mag_M714_White",4,
        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellGreen"
    };

    items[] += {
        "ACE_DAGR",
        "ACE_Flashlight_XL50",
        "ACE_EntrenchingTool",
        "rhsusf_ANPVS_14"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    //nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
};
class Cav_B_C_Rifleman_F : Cav_B_Charlie_base_F { //General Rifleman : 27.5kg
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_rifleman"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",15,
        "rhs_mag_M433_HEDP",6,
        "rhs_mag_M714_White",4,
        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellGreen"
    };
    items[] += {
        "ACE_DAGR",
        "ACE_Flashlight_XL50",
        "ACE_EntrenchingTool",
        "rhsusf_ANPVS_14"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    //nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
};

//class Cav_B_C_Marksman_Local : Cav_B_Charlie_base_F { //DMR : 24kg
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    //headgear[] = {"rhsusf_ach_helmet_ocp"};
    //uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    //vest[] = {"rhsusf_spcs_ocp_sniper"};

    //primary[] = {"rhs_weap_sr25_ec","rhsusf_acc_anpeq15side_bk","rhsusf_acc_su230a","rhsusf_acc_harris_bipod"};
    //secondary[] = {""};
    //launcher[] = {""};

    //binoculars[] = {""};

    //magazines[] = {
        //"rhsusf_20Rnd_762x51_SR25_m993_Mag",6,
        //"rhs_mag_m67",2,
        //"SmokeShell",4,
        //"SmokeShellGreen",
    //};

    //items[] += {
        //"ACE_DAGR",
        //"ACE_Flashlight_XL50",
        //"ACE_EntrenchingTool",
        //"rhsusf_ANPVS_14"
    //};

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    //nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
//};

class Cav_B_C_CombatLifeSaver_F : Cav_B_Charlie_base_F {
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_rifleman"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",15,
        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellGreen"
    };
    items[] += {
        "ACE_DAGR",
        "ACE_Flashlight_XL50",
        "ACE_EntrenchingTool",
        "rhsusf_ANPVS_14",

        // Medical Equipment
        "ACE_quikclot",30,
        "ACE_tourniquet",6,
        "ACE_morphine",6,
        "ACE_epinephrine",6
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    //nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
};

// MMG Team
class CAV_Charlie_Machinegunner_TeamLeader_Local : Cav_B_Charlie_base_F { //MMG FTL : 35.3kg
    backpack[] = {"B_Kitbag_cbr"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_teamleader"};

    primary[] = {"rhs_weap_m4a1_mstock","rhsusf_acc_SFMB556","rhsusf_tdstubby_blk","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_ACOG_RMR"};
    //secondary[] = {""};
    //launcher[] = {""};

    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",8,
        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellGreen",2,
        "SmokeShellBlue",2,
        "ACE_Chemlight_HiRed",4,
        "ACE_Chemlight_HiGreen",4,
        "B_IR_Grenade",
        "rhsusf_100Rnd_762x51_m62_tracer",5,
        "rhsusf_100rnd_762x51_m61_ap",2
    };

    items[] += {
        "ACE_microDAGR",
        "ACRE_PRC152",
        "rhsusf_ANPVS_14"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    //nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
};

class CAV_Charlie_Machinegunner_Local : Cav_B_Charlie_base_F { //GPMG Gunner : 36kg
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_machinegunner"};

    primary[] = {"rhs_weap_m240B","rhsusf_acc_ARDEC_M240","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ACOG_MDO"};
    //secondary[] = {""};
    //launcher[] = {""};

    //binoculars[] = {""};

    magazines[] = {
        "SmokeShell",2,
        "rhsusf_100Rnd_762x51_m62_tracer",5,
        "rhsusf_100Rnd_762x51_m61_ap",2
    };

    items[] += {
        "ACE_DAGR",
        "ACE_Flashlight_XL50",
        "rhsusf_ANPVS_14"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    //nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
};

class CAV_Charlie_Machinegunner_Assistant_Local : Cav_B_Charlie_base_F { //MMG Ammo Handler : 36.2kg
    backpack[] = {"B_Kitbag_cbr"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_teamleader"};

    //primary[] = {"rhs_weap_m4a1_mstock","rhsusf_acc_SFMB556","rhsusf_tdstubby_blk","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_ACOG_RMR"};
    //secondary[] = {""};
    //launcher[] = {""};

    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",8,
        "rhs_mag_m67",2,
        "SmokeShell",4,
        "rhsusf_100Rnd_762x51_m62_tracer",5,
        "rhsusf_100rnd_762x51_m61_ap",2
    };

    items[] += {
        "ACE_DAGR",
        "ACE_SpareBarrel",
        "rhsusf_ANPVS_14",
        "ACE_EntrenchingTool"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    //nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
};

// MAAWS Team
class Cav_B_C_MAAWS_TeamLeader_Local : Cav_B_Charlie_base_F { //MAAWS Team Leader : 36.5kg
    backpack[] = {"B_Kitbag_cbr"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_rifleman"};

    //primary[] = {};
    //secondary[] = {""};
    //launcher[] = {""};

    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",8,
        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellGreen",2,
        "SmokeShellRed",
        "ACE_Chemlight_HiRed",1,
        "Chemlight_HiGreen",1,
        "B_IR_Grenade",
        "Cav_m3maaws_HEAT_CS",
        "tf47_m3maaws_HE",3
    };

    items[] += {
        "ACE_microDAGR",
        "ACE_Flashlight_XL50",
        "rhsusf_ANPVS_14",
        "ACRE_PRC152"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    //nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
};

class Cav_B_C_MAAWS_Local : Cav_B_Charlie_base_F { //MAAWS Specialist : 35.8kg
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_rifleman"};

    //primary[] = {};
    //secondary[] = {""};
    launcher[] = {"tf47_m3maaws","tf47_optic_m3maaws"};

    //binoculars[] = {""};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",8,
        "rhs_mag_m67",1,
        "SmokeShell",2,
        "tf47_m3maaws_HE",1,
        "Cav_m3maaws_HEAT_CS",1
    };

    items[] += {
        "ACE_DAGR",
        "rhsusf_ANPVS_14",
        "ACE_Flashlight_XL50"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    //nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
};

class Cav_B_C_MAAWS_AH_Local : Cav_B_Charlie_base_F { //MAAWS Ammo Handler : 35.7kg
    backpack[] = {"B_Kitbag_cbr"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_rifleman"};

    //primary[] = {};
    //secondary[] = {""};
    //launcher[] = {"tf47_m3maaws","tf47_optic_m3maaws"};

    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",8,
        "rhs_mag_m67",2,
        "SmokeShell",4,
        "tf47_m3maaws_HE",3,
        "Cav_m3maaws_HEAT_CS",
    };

    items[] += {
        "ACE_DAGR",
        "ACE_EntrenchingTool",
        "rhsusf_ANPVS_14",
        "ACE_Flashlight_XL50"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    //nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
};

// CCM Team
class Cav_B_C_Javelin_TeamLeader_Local : Cav_B_Charlie_base_F { //CCM FTL : 38.3kg
    backpack[] = {"B_Carryall_cbr"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_teamleader"};

    primary[] = {"rhs_weap_m4a1_mstock","rhsusf_acc_SFMB556","rhsusf_acc_tdstubby_blk","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_ACOG_RMR"};
    //secondary[] = {""};
    //launcher[] = {""};

    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",8,
        "rhs_fgm148_magazine_AT",
        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellGreen",2,
        "ACE_Chemlight_HiRed",2,
        "ACE_Chemlight_HiGreen",2,
        "B_IR_Grenade",
        "SmokeShellRed",1,
        "SmokeShellBlue",2
    };

    items[] += {
        "ACE_microDAGR",
        "ACRE_PRC152",
        "rhsusf_ANPVS_14",
        "ACE_Flashlight_XL50"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    //nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
};
class Cav_B_C_Javelin_Gunner_Local : Cav_B_Charlie_base_F { //CCM Specialist : 39.7kg
    backpack[] = {""};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_rifleman"};

    //primary[] = {};
    //secondary[] = {""};
    launcher[] = {"rhs_weap_fgm148"};

    //binoculars[] = {""};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",8,
        "rhs_fgm148_magazine_AT",
        "SmokeShell",2
    };

    items[] += {
        "ACE_DAGR",
        "rhsusf_ANPVS_14",
        "ACE_Flashlight_XL50"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    //nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
};
class Cav_B_C_Javelin_Assistant_Local : Cav_B_Charlie_base_F { //CCM Ammo Handler : 37.1kg
    backpack[] = {"B_Carryall_cbr"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_rifleman"};

    //primary[] = {};
    //secondary[] = {""};
    //launcher[] = {""};

    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",8,
        "rhs_fgm148_magazine_AT",
        "rhs_mag_m67",2,
        "SmokeShell",4
    };

    items[] += {
        "ACE_DAGR",
        "ACE_EntrenchingTool",
        "rhsusf_ANPVS_14",
        "ACE_Flashlight_XL50"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    //nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
};

// Mortar Team
class Cav_B_C_Support_Mortar_AutomaticRifleman_Local : Cav_B_Charlie_base_F { //Mortar AR : 35kg
    backpack[] = {"B_Mortar_01_support_F"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_saw"};

    primary[] = {"rhs_weap_m249_pip_S_para","rhsusf_acc_SFMB556","rhsusf_acc_ELCAN"};
    //secondary[] = {""};
    //launcher[] = {""};

    //binoculars[] = {""};

    magazines[] = {
        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellGreen",
        "ACE_Chemlight_HiRed",2,
        "Chemlight_Blue",2,
        "B_IR_Grenade",2,
        "rhsusf_200rnd_556x45_mixed_box",5
    };

    items[] += {
        "ACE_DAGR",
        "ACE_Flashlight_XL50"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
};
class Cav_B_C_Support_Mortar_TeamLeader_Local : Cav_B_Charlie_base_F { //Mortar FTL : 30kg
    backpack[] = {"B_Mortar_01_support_F"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_teamleader_alt"};

    primary[] = {"rhs_weap_m4a1_mstock","rhsusf_acc_SFMB556","rhsusf_acc_tdstubby_blk","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_ACOG_RMR"};
    //secondary[] = {""};
    //launcher[] = {""};

    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",8,
        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellGreen",
        "SmokeShellRed",
        "SmokeShellBlue",2,
        "ACE_Chemlight_HiRed",2,
        "Chemlight_Blue",2,
        "B_IR_Grenade",2
    };

    items[] += {
        "ACE_microDAGR",
        "ACRE_PRC152",
        "ACE_RangeTable_82mm",
        "ACE_EntrenchingTool",
        
        // Personal Medical Equipment
        "ACE_personalAidKit",2
    };

    //compass[] = {"ItemCompass"};
    gps[] = {"ItemAndroid"};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
};
class Cav_B_C_Support_Mortar_Gunner_Local : Cav_B_Charlie_base_F { //Mortar Gunner : 38kg
    backpack[] = {"B_Mortar_01_weapon_F"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_rifleman_alt"};

    //primary[] = {};
    //secondary[] = {""};
    //launcher[] = {""};

    //binoculars[] = {""};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",8,
        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellGreen",
        "ACE_Chemlight_HiRed",2,
        "Chemlight_Blue",2,
        "B_IR_Grenade",2
    };

    items[] += {
        "ACE_DAGR",
        "ACE_RangeTable_82mm"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
};
class Cav_B_C_Support_Mortar_SquadLeader_Local : Cav_B_Charlie_base_F { //Mortar SL : 24kg
    backpack[] = {"B_Mortar_01_weapon_F"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_squadleader"};

    primary[] = {"rhs_weap_m4a1_mstock","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_tdstubby_blk","rhsusf_acc_ACOG_RMR"};
    //secondary[] = {""};
    //launcher[] = {""};

    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",8,
        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellGreen",
        "ACE_Chemlight_HiRed",2,
        "Chemlight_Blue",2,
        "B_IR_Grenade",2,
        "SmokeShellRed",
        "SmokeShellBlue",2
    };

    items[] = {
        "ACE_microDAGR",
        "ACRE_PRC152",2,
        "ACE_IR_Strobe_Item",
        "ACE_RangeTable_82mm",
        "ACE_EntrenchingTool",
        "ACE_HuntIR_monitor",
        
        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,

        // Standard
        "ACE_MapTools"
    };

    //compass[] = {"ItemCompass"};
    gps[] = {"ItemAndroid"};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
};

// AA Team
class Cav_B_C_AATL_Local : Cav_B_Charlie_base_F { //Stinger Assist : 34.7kg
    backpack[] = {"B_Kitbag_cbr"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_teamleader"};

    //primary[] = {};
    //secondary[] = {""};
    //launcher[] = {""};

    //binoculars[] = {""};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",8,
        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellGreen",
        "ACE_Chemlight_HiRed",2,
        "ACE_Chemlight_HiGreen",2,
        "B_IR_Grenade",
        "SmokeShellRed",1,
        "SmokeShellBlue",2,
        "rhs_fim92_mag",2
    };

    items[] += {
        "ACE_microDAGR",
        "ACRE_PRC152",
        "rhsusf_ANPVS_14",
        "ACE_EntrenchingTool"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    //nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
};

class Cav_B_C_AAA_Local : Cav_B_Charlie_base_F { //Stinger Assist : 34.7kg
    backpack[] = {"B_Kitbag_cbr"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_rifleman"};

    //primary[] = {};
    //secondary[] = {""};
    //launcher[] = {""};

    //binoculars[] = {""};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",8,
        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellGreen",
        "rhs_fim92_mag",2
    };

    items[] += {
        "ACE_DAGR",
        "rhsusf_ANPVS_14",
        "ACE_EntrenchingTool"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    //nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
};

class Cav_B_C_AA_Local : Cav_B_Charlie_base_F { //Stinger Gunner : 38kg
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_rifleman"};

    //primary[] = {};
    //secondary[] = {""};
    launcher[] = {"rhs_weap_fim92"};

    //binoculars[] = {""};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",9,
        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellGreen",
        "ACE_Chemlight_HiRed",2,
        "Chemlight_Blue",2,
        "B_IR_Grenade",2,
        "rhs_fim92_mag",2
    };

    items[] += {
        "ACE_DAGR",
        "ACE_EntrenchingTool"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
};

// TOW Team
class CAV_Charlie_TOWSFTL : Cav_B_Charlie_base_F { //TOWS FTL : 27kg
    backpack[] = {"rhs_TOW_Tripod_Bag"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_teamleader"};

    primary[] = {"rhs_weap_m4a1_mstock","rhsusf_acc_tdstubby_blk","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_ACOG_RMR"};
    //secondary[] = {""};
    //launcher[] = {""};

    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",8,
        "rhs_mag_m67",2,
        "SmokeShell",4
    };

    items[] += {
        "ACE_microDAGR",
        "ACRE_PRC152",
        "ACE_IR_Strobe_Item",
        "ACE_EntrenchingTool"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
};
class CAV_Charlie_TOWSGUN : Cav_B_Charlie_base_F { //TOWS Gunner : 35kg
    backpack[] = {"rhs_Tow_Gun_Bag"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_rifleman"};

    //primary[] = {};
    //secondary[] = {""};
    //launcher[] = {""};

    //binoculars[] = {""};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",8,
        "rhs_mag_m67",4,
        "SmokeShell",6
    };

    items[] += {
        "ACE_DAGR",
        "ACE_IR_Strobe_Item",
        "Flagstack_Red",
        "ACE_EntrenchingTool"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
};
class CAV_Charlie_TOWSTRI : Cav_B_Charlie_base_F { //TOWS Tripod : 28kg
    backpack[] = {"rhs_TOW_Tripod_Bag"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_rifleman"};

    //primary[] = {};
    //secondary[] = {""};
    //launcher[] = {""};

    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG",8,
        "rhs_mag_m67",4,
        "SmokeShell",6
    };

    items[] += {
        "ACE_DAGR",
        "ACE_IR_Strobe_Item",
        "Flagstack_Red",
        "ACE_EntrenchingTool"
    };

    //compass[] = {"ItemCompass"};
    //gps[] = {""};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
};

// Staff
class Cav_B_C_Officer_F : Cav_B_Charlie_base_F { //Platoon Staff : 27kg
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_headset_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_squadleader"};

    primary[] = {"rhs_weap_m4a1_mstock","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_tdstubby_blk","rhsusf_acc_ACOG_RMR"};
    //secondary[] = {""};
    //launcher[] = {""};

    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",8,
        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellRed",3,
        "SmokeShellGreen",3,
        "SmokeShellBlue",3,
        "SmokeShellYellow",3,
        "SmokeShellPurple",3,
        "ACE_Chemlight_HiRed",2,
        "Chemlight_Blue",2,
        "B_IR_Grenade",3
    };

    items[] += {
        "ACE_microDAGR",
        "ACRE_PRC152",2,
        "ACE_IR_Strobe_Item",
        "ACE_EntrenchingTool",
        
        "ACE_SpraypaintGreen",

        // Personal Medical Equipment
        "ACE_personalAidKit"

    };

    //compass[] = {"ItemCompass"};
    gps[] = {"ItemAndroid"};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
};
class Cav_B_C_PlatoonMedic_F : Cav_B_Charlie_base_F { //Platoon Medic : 34kg
    backpack[] = {"B_Kitbag_cbr"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_medic"};

    //primary[] = {};
    //secondary[] = {""};
    //launcher[] = {""};

    //binoculars[] = {""};

    magazines[] = {
    "rhs_mag_30Rnd_556x45_M855A1_PMAG",8,
    "rhs_mag_m67",2,
    "SmokeShell",4,
    "SmokeShellGreen",2,
    "SmokeShellBlue",2,
    "SmokeShellPurple",2,
    "ACE_Chemlight_HiRed",2,
    "ACE_Chemlight_HiGreen",2,
    "B_IR_Grenade",2
    };

    items[] += {
        "ACE_microDAGR",
        "ACRE_PRC152",2,
        "ACE_EntrenchingTool",
        "rhsusf_ANPVS_14",

        "ACE_SpraypaintRed",
        "ACE_SpraypaintBlack",

        // Medical Equipment
        "ACE_surgicalKit",
        "ACE_salineIV",10,
        "ACE_morphine",15,
        "ACE_elasticBandage",40,
        "ACE_quikclot",40,
        "ACE_personalAidKit",7,
        "ACE_epinephrine",15,
        "ACE_tourniquet",10
    };

    //compass[] = {"ItemCompass"};
    gps[] = {"ItemAndroid"};
    //map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
    preLoadout = "[(_this select 0), 'charlie', 1, 0] call cScripts_fnc_setPreInitPlayerSettings;";
};
class CAV_Charlie_CompanyStaff_F : Cav_B_Charlie_base_F { //Company Staff : 27kg
    //backpack[] = {"B_AssaultPack_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_headset_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_spcs_ocp_squadleader"};

    primary[] = {"rhs_weap_m4a1_mstock","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_tdstubby_blk","rhsusf_acc_ACOG_RMR"};
    //secondary[] = {""};
    //launcher[] = {""};

    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",8,
        "rhs_mag_m67",2,
        "SmokeShell",4,
        "SmokeShellRed",3,
        "SmokeShellGreen",3,
        "SmokeShellBlue",3,
        "SmokeShellYellow",3,
        "SmokeShellPurple",3,
        "ACE_Chemlight_HiRed",2,
        "Chemlight_Blue",2,
        "B_IR_Grenade",3
    };

    items[] += {
        "ACE_microDAGR",
        "ACRE_PRC152",2,
        "ACE_EntrenchingTool",
        "rhsusf_ANPVS_14",
        "ItemAndroid",
        "ACE_SpraypaintGreen"
    };

    //compass[] = {"ItemCompass"};
    gps[] = {"ItemcTab"};
    //map[] = {"ItemMap"};
    //nvgs[] = {"rhsusf_ANPVS_14"};
    //watch[] = {"ItemWatch"};

    //insignia[] = {""};
};
