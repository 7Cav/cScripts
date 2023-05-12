class Cav_B_B_Scout_Base_F : Cav_B_Bravo_base_F {
    scope = 0;
    role = "weapons";
};

class Cav_B_B_Scout_Officer_F : Cav_B_B_Scout_Base_F {
    displayName = "Viking Platoon Staff";
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Leadership"};
    scope = 2;
    loadout = [["rhs_weap_m4a1_blockII_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_grip2"],[],["rhsusf_weap_glock17g4","","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_FMJ",17],[],""],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["ACE_quikclot",10],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_splint",1]]],["USP_CRYE_CPC_LEAD_BELT_MC",[["ItemcTabHCam",1],["ACE_EarPlugs",1],["HandGrenade",2,1],["SmokeShellGreen",2,1],["SmokeShell",4,1],["B_IR_Grenade",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",3,30],["SmokeShellBlue",4,1],["SmokeShellYellow",2,1],["rhsusf_mag_17Rnd_9x19_FMJ",2,17],["ACE_HandFlare_Yellow",2,1],["rhs_mag_mk3a2",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",4,30]]],["USP_TACTICAL_PACK_CCT6",[["ACE_HuntIR_monitor",1],["ACE_splint",8],["ACE_tourniquet",8],["ACE_SpraypaintGreen",1],["ACE_artilleryTable",1],["ACE_CableTie",5],["ACE_EarPlugs",2],["kat_Painkiller",2,10],["B_IR_Grenade",2,1],["SmokeShellGreen",2,1],["SmokeShellYellow",2,1],["ACE_Chemlight_IR",2,1]]],"USP_OPS_FASTXP_TAN_MC_03","USP_DETCORD_SMG1_BLK2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemcTab","ItemRadioAcreFlagged","ItemCompass","ItemWatch","USP_PVS31_LOW"]];
    icon = "iconManOfficer";
    role = "officer";
};

class Cav_B_B_Scout_PlatoonLeader_F : Cav_B_B_Scout_Officer_F {
    displayName = "Viking Platoon Leader";
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Leadership"};
    scope = 2;
    loadout = [["rhs_weap_m4a1_blockII_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_grip2"],[],["rhsusf_weap_glock17g4","","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_FMJ",17],[],""],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["ACE_quikclot",10],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_splint",1]]],["USP_CRYE_CPC_LEAD_BELT_MC",[["ItemcTabHCam",1],["ACE_EarPlugs",1],["HandGrenade",2,1],["SmokeShellGreen",2,1],["SmokeShell",4,1],["B_IR_Grenade",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",3,30],["SmokeShellBlue",4,1],["SmokeShellYellow",2,1],["rhsusf_mag_17Rnd_9x19_FMJ",2,17],["ACE_HandFlare_Yellow",2,1],["rhs_mag_mk3a2",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",4,30]]],["USP_TACTICAL_PACK_CCT6",[["ACE_HuntIR_monitor",1],["ACE_splint",8],["ACE_tourniquet",8],["ACE_SpraypaintGreen",1],["ACE_artilleryTable",1],["ACE_CableTie",5],["ACE_EarPlugs",2],["kat_Painkiller",2,10],["B_IR_Grenade",2,1],["SmokeShellGreen",2,1],["SmokeShellYellow",2,1],["ACE_Chemlight_IR",2,1]]],"USP_OPS_FASTXP_TAN_MC_03","USP_DETCORD_SMG1_BLK2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemcTab","ItemRadioAcreFlagged","ItemCompass","ItemWatch","USP_PVS31_LOW"]];
};

class Cav_B_B_Scout_PlatoonSergeant_F : Cav_B_B_Scout_Officer_F {
    displayName = "Viking Platoon Sergeant";
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Leadership"};
    scope = 0;
    loadout = [["rhs_weap_m4a1_blockII_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_grip2"],[],["rhsusf_weap_glock17g4","","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_FMJ",17],[],""],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["ACE_quikclot",10],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_splint",1]]],["USP_CRYE_CPC_LEAD_BELT_MC",[["ItemcTabHCam",1],["ACE_EarPlugs",1],["HandGrenade",2,1],["SmokeShellGreen",2,1],["SmokeShell",4,1],["B_IR_Grenade",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",3,30],["SmokeShellBlue",4,1],["SmokeShellYellow",2,1],["rhsusf_mag_17Rnd_9x19_FMJ",2,17],["ACE_HandFlare_Yellow",2,1],["rhs_mag_mk3a2",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",4,30]]],["USP_TACTICAL_PACK_CCT6",[["ACE_HuntIR_monitor",1],["ACE_splint",8],["ACE_tourniquet",8],["ACE_SpraypaintGreen",1],["ACE_artilleryTable",1],["ACE_CableTie",5],["ACE_EarPlugs",2],["kat_Painkiller",2,10],["B_IR_Grenade",2,1],["SmokeShellGreen",2,1],["SmokeShellYellow",2,1],["ACE_Chemlight_IR",2,1]]],"USP_OPS_FASTXP_TAN_MC_03","USP_DETCORD_SMG1_BLK2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemcTab","ItemRadioAcreFlagged","ItemCompass","ItemWatch","USP_PVS31_LOW"]];
    abilityEngineer = 1;
};

class Cav_B_B_Scout_PlatoonMedic_F : Cav_B_B_Scout_Base_F {
    displayName = "Viking Platoon Medic";
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Leadership"};
    scope = 2;
    loadout = [["rhs_weap_mk18_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_T1_high",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2_wd"],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_tourniquet",10],["kat_IV_16",20],["ACE_EarPlugs",1],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["kat_Painkiller",2,10],["kat_Carbonate",2,10]]],["USP_CRYE_CPC_MEDIC_BELT_MC",[["ACE_surgicalKit",1],["ACE_Chemlight_IR",2,1],["SmokeShellGreen",1,1],["HandGrenade",2,1],["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",4,30]]],["UK3CB_BAF_B_Bergen_MTP_Medic_H_B",[["ACE_elasticBandage",20],["ACE_splint",6],["ACE_epinephrine",8],["ACE_packingBandage",20],["ACE_bloodIV_500",4],["ACE_plasmaIV_500",4],["ACE_salineIV_500",4],["ACE_quikclot",60],["ACE_morphine",8],["kat_naloxone",4],["SmokeShellBlue",2,1],["SmokeShellRed",2,1],["SmokeShellYellow",2,1],["kat_Painkiller",6,10]]],"USP_CRYE_AIRFRAME_CT3","USP_DETCORD_SMC1_MC2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemcTab","","ItemCompass","ItemWatch","USP_PVS31_LOW"]];
    insignia = "cav_insignia_specialized_cls";
    abilityMedic = 1;
    role = "medic";
    icon = "iconManMedic";
};

class Cav_B_B_Scout_SquadLeader_F : Cav_B_B_Scout_Base_F {
    displayName = "Scout Squad Leader";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Leadership"};
    loadout = [["rhs_weap_m4a1_blockII_grip2_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_grip2"],[],["rhsusf_weap_glock17g4","","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_FMJ",17],[],""],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["ACE_quikclot",10],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_splint",1]]],["USP_CRYE_CPC_COMMS_BELT_MC",[["ItemcTabHCam",1],["ACE_EarPlugs",1],["HandGrenade",2,1],["SmokeShellGreen",2,1],["SmokeShell",4,1],["B_IR_Grenade",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",3,30],["SmokeShellBlue",4,1],["SmokeShellYellow",2,1],["rhsusf_mag_17Rnd_9x19_FMJ",2,17],["ACE_HandFlare_Yellow",2,1],["rhs_mag_mk3a2",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",4,30]]],["USP_PACK_POINTMAN",[["ACE_HuntIR_monitor",1],["ACE_splint",8],["ACE_tourniquet",8],["ACE_SpraypaintGreen",1],["ACE_artilleryTable",1],["ACE_CableTie",5],["ACE_EarPlugs",2],["kat_Painkiller",2,10],["B_IR_Grenade",2,1],["SmokeShellGreen",2,1],["SmokeShellYellow",2,1],["ACE_Chemlight_IR",2,1]]],"USP_OPS_FASTXP_TAN_MC_06","USP_BALACLAVA_ESS_SMG1_RGR2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ItemWatch","USP_PVS31_HIGH"]];
    role = "squadleader";
    icon = "iconManLeader";
};

class Cav_B_B_Scout_WSL_F_Local : Cav_B_B_Scout_Base_F {
    displayName = "Weapons Squad Leader";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Leadership"};
        loadout = [["rhs_weap_m4a1_blockII","","rhsusf_acc_anpeq15","rhsusf_acc_ACOG_RMR",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2"],[],["rhs_weap_M320","","","",["rhs_mag_m713_Red",1],[],""],["USP_G3C_KP_OR_MC",[["ACE_quikclot",16],["ACE_EarPlugs",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_artilleryTable",1]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["ACE_Chemlight_IR",2,1],["SmokeShellGreen",1,1],["HandGrenade",2,1],["SmokeShell",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",5,30],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",2,30],["rhs_mag_m713_Red",2,1],[["ACE_MX2A","","","",[],[],""],1]]],["UK3CB_BAF_B_Bergen_MTP_SL_L_A",[["ACE_EntrenchingTool",1],["ACE_HuntIR_monitor",1],["B_IR_Grenade",4,1],["SmokeShellBlue",4,1],["SmokeShellRed",4,1],["SmokeShellYellow",4,1],["ACE_Chemlight_HiYellow",2,1],["ACE_Chemlight_HiRed",2,1],["ACE_Chemlight_HiBlue",2,1],["rhs_mag_m714_White",5,1],["rhs_mag_M664_red_cluster",4,1]]],"USP_OPS_FASTXP_TAN_MC_08","USP_MFRAME_SMG1_BLK2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemcTab","","ItemCompass","ItemWatch","USP_PVS31"]];
    icon = "iconManLeader";
};

class Cav_B_B_Scout_TeamLeader_F : Cav_B_B_Scout_Base_F {
    displayName = "Scout Team Leader";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_m4a1_blockII_grip2_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_g33_xps3",["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",30],[],"rhsusf_acc_grip2"],[],["rhs_weap_M320","","","",[],[],""],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["ACE_quikclot",10],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_splint",1]]],["USP_CRYE_JPC_TLB",[["HandGrenade",2,1],["SmokeShellGreen",1,1],["SmokeShell",4,1],["B_IR_Grenade",1,1],["ACE_Chemlight_IR",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",4,30],["SmokeShellBlue",4,1],["SmokeShellYellow",2,1],["rhs_mag_M664_red_cluster",2,1],["rhs_mag_M663_green_cluster",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",4,30],["ACE_HuntIR_M203",2,1],["rhs_mag_m713_Red",4,1],["rhs_mag_mk3a2",1,1]]],["USP_PATROL_PACK_CB_FH_RP_ZT",[["ACE_HuntIR_monitor",1],["ACE_EntrenchingTool",1],["ACE_SpraypaintGreen",1],["ACE_tourniquet",8],["ACE_bodyBag",1],["ACE_CableTie",5],["ACE_splint",8],["ACE_40mm_Flare_red",2,1],["rhs_mag_M664_red_cluster",2,1],["rhs_mag_M663_green_cluster",2,1],["ACE_HuntIR_M203",2,1],["ACE_40mm_Flare_ir",2,1],["rhs_mag_m713_Red",4,1]]],"UK3CB_BAF_H_Mk7_Scrim_C","USP_GATORZ_SMG1_BLK2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ItemWatch","USP_PVS31_HIGH"]];
    role = "fireteamleader";
    icon = "iconManLeader";
};
class Cav_B_B_Scout_AutomaticRifleman_F : Cav_B_B_Scout_Base_F {
    displayName = "Scout Automatic Rifleman";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_m249_light_S","rhsusf_acc_SFMB556","rhsusf_acc_anpeq16a","optic_MRCO",["rhsusf_200Rnd_556x45_mixed_soft_pouch",200],[],"rhsusf_acc_grip4_bipod"],[],["rhsusf_weap_glock17g4","","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_FMJ",17],[],""],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["ACE_quikclot",10],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_splint",1]]],["USP_CRYE_JPC_MGB",[["HandGrenade",1,1],["SmokeShell",2,1],["ACE_Chemlight_IR",2,1],["rhsusf_200Rnd_556x45_mixed_soft_pouch",4,200],["SmokeShellGreen",1,1],["rhsusf_mag_17Rnd_9x19_FMJ",1,17]]],["USP_TACTICAL_PACK",[["ACE_WaterBottle",1],["rhsusf_100Rnd_556x45_M995_soft_pouch",2,100]]],"UK3CB_BAF_H_Mk7_Scrim_C","USP_MFRAME_SMC1_TAN2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ItemWatch","USP_PVS31_HIGH"]];
    icon = "iconManMG";
};
class Cav_B_B_Scout_MachineGunner_F_Local : Cav_B_B_Scout_Base_F {
    displayName = "Scout M240 Machinegunner";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_m240B","rhsusf_acc_ARDEC_M240","rhsusf_acc_anpeq16a","rhsusf_acc_su230a_mrds",["rhsusf_100Rnd_762x51_m62_tracer",100],[],""],[],["rhsusf_weap_glock17g4","","acc_flashlight_pistol","",["rhsusf_mag_17Rnd_9x19_FMJ",17],[],""],["USP_G3C_KP_OR_MC",[["ACE_quikclot",16],["ACE_EarPlugs",1],["ACE_splint",2],["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1]]],["rhsusf_spcs_ocp_machinegunner",[["SmokeShellGreen",1,1],["HandGrenade",1,1],["SmokeShell",2,1],["rhsusf_mag_17Rnd_9x19_FMJ",2,17],["rhsusf_100Rnd_762x51_m62_tracer",3,100]]],["UK3CB_B_Backpack_Pocket",[["rhsusf_acc_anpas13gv1",1],["rhsusf_acc_ACOG_MDO",1],["rhsusf_100Rnd_762x51_m62_tracer",3,100]]],"USP_OPS_FASTXP_TAN_MC_04","USP_BALACLAVA_OAK_SMG1_CBR2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","","ItemCompass","ItemWatch","USP_PVS15"]];
    icon = "iconManMG";
};
class Cav_B_B_Scout_Grenadier_F : Cav_B_B_Scout_Base_F {
    displayName = "Scout Grenadier";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_mk18_m320","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_T1_high",["rhs_mag_30Rnd_556x45_Mk262_PMAG",30],[],""],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["ACE_quikclot",10],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_splint",1]]],["USP_CRYE_CPC_WEAPON_BELT_MC",[["HandGrenade",2,1],["SmokeShellGreen",1,1],["SmokeShell",4,1],["B_IR_Grenade",1,1],["ACE_Chemlight_IR",2,1],["rhs_mag_M433_HEDP",7,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",9,30],["rhs_mag_M397_HET",7,1],["rhs_mag_mk3a2",1,1]]],["USP_ZIPON_PANEL_MC_RF2",[["ACE_EntrenchingTool",1],["rhs_mag_M397_HET",4,1],["rhs_mag_m4009",5,1],["rhs_mag_m713_Red",2,1],["ACE_HuntIR_M203",1,1],["rhs_mag_M433_HEDP",2,1]]],"USP_OPS_FASTXP_TAN_MC_04","USP_BALACLAVA_OAK_SMG1_CBR2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ItemWatch","USP_PVS31"]];
};
class Cav_B_B_Scout_Rifleman_F : Cav_B_B_Scout_Base_F {
    displayName = "Scout Rifleman";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_m4a1_blockII_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_su230_mrds",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2"],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["ACE_quikclot",10],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_splint",1]]],["USP_CRYE_JPC_ASLTB",[["HandGrenade",4,1],["SmokeShellGreen",1,1],["SmokeShell",4,1],["B_IR_Grenade",1,1],["ACE_Chemlight_IR",2,1],["rhs_mag_mk3a2",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",9,30],["ACE_CTS9",1,1],[["ACE_MX2A","","","",[],[],""],1]]],["USP_PACK_BREACHER_MC",[["ACE_wirecutter",1],["ACE_EntrenchingTool",1],["ACE_bodyBag",1],["SmokeShellGreen",1,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",4,30],["rhs_mag_mk3a2",1,1]]],"USP_OPS_FASTXP_TAN_MC_03","USP_MFRAME_SMC1_TAN2",["ACE_Vector","","","",[],[],""],["ItemMap","B_UavTerminal","ItemRadioAcreFlagged","ItemCompass","ItemWatch","USP_PVS15"]];
};
class Cav_B_B_Scout_RiflemanAT_F : Cav_B_B_Scout_Base_F {
    displayName = "Drone Operator";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_m4a1_blockII_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_su230_mrds",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2"],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["ACE_quikclot",10],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_splint",1]]],["USP_VEST_STRANDHOGG2_MC",[["HandGrenade",4,1],["SmokeShellGreen",1,1],["SmokeShell",4,1],["B_IR_Grenade",1,1],["ACE_Chemlight_IR",2,1],["rhs_mag_mk3a2",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",8,30],[["ACE_MX2A","","","",[],[],""],1]]],["USP_45L_RUCKSACK_MC",[["ACE_EntrenchingTool",1],["Rev_darter_item",1],["ACE_UAVBattery",1],["rhs_mag_100Rnd_556x45_M855A1_cmag_mixed",2,100]]],"USP_OPS_FASTXP_TAN_MC_03","USP_MFRAME_SMC1_TAN2",["ACE_Vector","","","",[],[],""],["ItemMap","B_UavTerminal","ItemRadioAcreFlagged","ItemCompass","ItemWatch","USP_PVS15"]];
};
class Cav_B_B_Scout_CombatLifeSaver_F : Cav_B_B_Scout_Base_F {
    displayName = "Scout Combat Lifesaver";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_m4a1_blockII_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_su230_mrds",["rhs_mag_30Rnd_556x45_M855A1_PMAG",30],[],"rhsusf_acc_grip2"],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["ACE_quikclot",10],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_splint",1]]],["USP_CRYE_JPC_ASLTB",[["HandGrenade",4,1],["SmokeShellGreen",1,1],["SmokeShell",4,1],["B_IR_Grenade",1,1],["ACE_Chemlight_IR",2,1],["rhs_mag_mk3a2",4,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",8,30],[["ACE_MX2A","","","",[],[],""],1]]],["USP_45L_RUCKSACK_MC",[["ACE_EntrenchingTool",1],["ACE_packingBandage",40],["ACE_quikclot",40],["ACE_tourniquet",16],["ACE_splint",8],["ACE_EarPlugs",2],["kat_phenylephrine_inject",4],["ACE_epinephrine",4],["kat_Painkiller",3,10]]],"USP_OPS_FASTXP_TAN_MC_08","USP_MFRAME_SMC1_TAN2",["ACE_Vector","","","",[],[],""],["ItemMap","B_UavTerminal","ItemRadioAcreFlagged","ItemCompass","ItemWatch","USP_PVS15"]];
    insignia = "cav_insignia_specialized_cls";
    abilityMedic = 0;
    icon = "iconManMedic";
};

//Stryker Crew
class Cav_B_B_Crew_F : Cav_B_B_Scout_Base_F {
    displayName = "Crew";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    abilityEngineer = 1;
};
class Cav_B_B_Ifv_Driver_F : Cav_B_B_Scout_Base_F {
    displayName = "Stryker Driver";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_mk18_grip2_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_T1_high",["rhs_mag_30Rnd_556x45_Mk262_PMAG",30],[],"rhsusf_acc_grip2"],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["ACE_quikclot",10],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_splint",1]]],["rhsusf_iotv_ocp_Repair",[["HandGrenade",2,1],["SmokeShellGreen",1,1],["SmokeShell",4,1],["B_IR_Grenade",2,1],["ACE_Chemlight_IR",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",4,30]]],["USP_TACTICAL_PACK",[["ToolKit",1],["ACE_tourniquet",8],["ACE_quikclot",10],["ACE_packingBandage",10]]],"rhsusf_cvc_green_helmet","USP_BALACLAVA_ADV_SMC1_RGR2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ItemWatch","USP_PVS15"]];
    abilityEngineer = 1;
};
class Cav_B_B_Ifv_Commander_F : Cav_B_B_Scout_Base_F {
    displayName = "Stryker Vehicle Commander";
    scope = 2;
    category[] += {"cScripts_Loadout_Cat_Bravo_Viking_Squad"};
    loadout = [["rhs_weap_mk18_grip2_KAC","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15","rhsusf_acc_T1_high",["rhs_mag_30Rnd_556x45_Mk262_PMAG",30],[],"rhsusf_acc_grip2"],[],[],["USP_G3C_RS_KP_OR_MC",[["ACE_packingBandage",10],["ACE_quikclot",10],["ACE_tourniquet",4],["ACE_microDAGR",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_splint",1]]],["USP_CRYE_CPC_MEDIC_MC",[["HandGrenade",2,1],["SmokeShellGreen",1,1],["SmokeShell",4,1],["B_IR_Grenade",2,1],["ACE_Chemlight_IR",2,1],["rhs_mag_30Rnd_556x45_M855A1_PMAG",4,30]]],["USP_TACTICAL_PACK",[["ToolKit",1],["ACE_tourniquet",8],["ACE_quikclot",10],["ACE_packingBandage",10]]],"rhsusf_cvc_green_helmet","USP_BALACLAVA_ADV_SMC1_RGR2",["ACE_Vector","","","",[],[],""],["ItemMap","ItemAndroid","ItemRadioAcreFlagged","ItemCompass","ItemWatch","USP_PVS15"]];
    abilityEngineer = 1;
};

// Named
class Cav_B_B_Scout_SquadLeader_2_1_F : Cav_B_B_Scout_SquadLeader_F {
    scope = 1;
    insignia = "cav_insignia_charlie_1_1";
};
class Cav_B_B_Scout_SquadLeader_2_2_F : Cav_B_B_Scout_SquadLeader_F {
    scope = 1;
    insignia = "cav_insignia_charlie_1_2";
};
class Cav_B_B_Scout_SquadLeader_2_3_F : Cav_B_B_Scout_SquadLeader_F {
    scope = 1;
    //insignia = "cav_insignia_charlie_1_3";
};
class Cav_B_B_Scout_SquadLeader_2_4_F : Cav_B_B_Scout_SquadLeader_F {
    scope = 1;
    //insignia = "cav_insignia_charlie_1_4";
};

// Teams
class Cav_B_B_Scout_PlatoonLead_2_5_F : Cav_B_B_Scout_PlatoonLeader_F {
    scope = 1;
    insignia = "cav_insignia_bravo_2";
};
class Cav_B_B_Scout_PlatoonLead_2_6_F : Cav_B_B_Scout_PlatoonLeader_F {
    scope = 1;
    insignia = "cav_insignia_bravo_2";
};
class Cav_B_B_Scout_PlatoonMedic_2_7_F : Cav_B_B_Scout_PlatoonMedic_F { scope = 1; };

class Cav_B_B_Scout_Alpha_TeamLeader_F : Cav_B_B_Scout_TeamLeader_F { scope = 1; };
class Cav_B_B_Scout_Alpha_AutomaticRifleman_F : Cav_B_B_Scout_AutomaticRifleman_F { scope = 1; };
class Cav_B_B_Scout_Alpha_Grenadier_F : Cav_B_B_Scout_Grenadier_F { scope = 1; };
class Cav_B_B_Scout_Alpha_Rifleman_F : Cav_B_B_Scout_Rifleman_F { scope = 1; };
class Cav_B_B_Scout_Alpha_RiflemanAT_F : Cav_B_B_Scout_RiflemanAT_F { scope = 1; };
class Cav_B_B_Scout_Alpha_CombatLifeSaver_F : Cav_B_B_Scout_CombatLifeSaver_F { scope = 1; };

class Cav_B_B_Scout_Bravo_TeamLeader_F : Cav_B_B_Scout_TeamLeader_F { scope = 1; };
class Cav_B_B_Scout_Bravo_AutomaticRifleman_F  : Cav_B_B_Scout_AutomaticRifleman_F { scope = 1; };
class Cav_B_B_Scout_Bravo_Grenadier_F  : Cav_B_B_Scout_Grenadier_F { scope = 1; };
class Cav_B_B_Scout_Bravo_Rifleman_F  : Cav_B_B_Scout_Rifleman_F { scope = 1; };
class Cav_B_B_Scout_Bravo_RiflemanAT_F : Cav_B_B_Scout_RiflemanAT_F { scope = 1; };
class Cav_B_B_Scout_Bravo_CombatLifeSaver_F  : Cav_B_B_Scout_CombatLifeSaver_F { scope = 1; };

// Depricated (Will be removed eventually)
class Cav_B_B_Scout_Bravo_TeamLead_F : Cav_B_B_Scout_Bravo_TeamLeader_F {};
class Cav_B_B_Scout_Alpha_TeamLead_F : Cav_B_B_Scout_Alpha_TeamLeader_F {};
