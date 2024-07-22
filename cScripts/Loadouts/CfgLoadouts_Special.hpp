class Cav_B_MissionController_F: Cav_B_Seventh_Cavalry_Base_F {
    scope = 2;
    category[] = {};
    loadout = [["rhs_weap_m4a1_blockII_grip_bk","rhsusf_acc_SF3P556","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ACOG_RMR_3d",["ACE_30Rnd_556x45_Stanag_M995_AP_mag",30],[],"rhsusf_acc_rvg_blk"],[],[],["USP_G3C_RS2_MC",[["ACE_tourniquet",4],["ACE_MapTools",1],["ACE_microDAGR",1],["ACE_splint",4],["ACE_Flashlight_XL50",1],["ACE_packingBandage",20],["kat_Painkiller",2,10],["SmokeShellPurple",2,1]]],["rhsusf_plateframe_grenadier",[["ACE_IR_Strobe_Item",2],["ACE_30Rnd_556x45_Stanag_M995_AP_mag",6,30],["SmokeShellBlue",2,1],["SmokeShellRed",2,1]]],["USP_TACTICAL_PACK",[["ACE_EntrenchingTool",1],["USP_PVS15",1],["Laserbatteries",1,1],[["ACE_Vector","","","",[],[],""],1]]],"rhsusf_opscore_mc_cover_pelt_cam","",["Laserdesignator","","","",["Laserbatteries",1],[],""],["ItemMap","ItemcTab","","ItemCompass","ACE_Altimeter",""]];
    equipmentTags[] += {};

    company = "S3";
    platoon = -1;
    squad = -1;
    
    insignia = "cav_insignia_specialized_s3";
    preLoadout = "";
    postLoadout = "";
};

class Cav_B_MissionController_1_F: Cav_B_MissionController_F { scope = 1; };
class Cav_B_MissionController_2_F: Cav_B_MissionController_F { scope = 1; };