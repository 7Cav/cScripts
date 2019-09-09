/* This file is for mission makers to set up Custom Loadouts for players.
   If you need help setting up the loadout vissit the link provided:
   https://github.com/BaerMitUmlaut/Poppy#creating-basic-loadouts

    Here is a copy paste friendly empty template:
    
class My_Soldier_Classname_or_VariableName : CommonBlufor {
    backpack[] = {""};
    goggles[] = {""};
    headgear[] = {""};
    uniform[] = {""};
    vest[] = {""};

    primary[] = {""};
    secondary[] = {""};
    launcher[] = {""};

    binoculars[] = {""};

    magazines[] = {""};
    items[] = {""};

    compass[] = {"ItemCompass"};
    gps[] = {""};
    map[] = {"ItemMap"};
    nvgs[] = {""};
    watch[] = {"itemWatch"};

    insignia[] = {""};
    preLoadout = "";
    postLoadout = "";
};


class Cav_B_B_CavScout_base {
	uniform[] = {"rhs_uniform_cu_ocp"};
	vest[] = {""};
	backpack[] = {""};
	primary[] = {"","","","",""};
	secondary[] = {"","","","",""};
	launcher[] = {"","","","",""};
	magazines[] = {};
	items[] = {"ACE_EarPlugs","ACE_CableTie",2,"ACE_Flashlight_MX991","ACE_MapTools","ACE_microDAGR","ACE_quikclot",20,"ACE_tourniquet",2,"ACRE_PRC343","ItemcTab"};
	binoculars[] = {"ACE_Vector"};
	compass[] = {"ItemCompass"};
	goggles[] = {"rhsusf_shemagh_tan"};
	gps[] = {"ItemcTab"};
	headgear[] = {""};
	map[] = {"ItemMap"};
	nvgs[] = {"ACE_NVG_Wide"};
	watch[] = {"ItemWatch"};
	insignia[] = {"Cav_Insignia_Bravo_2"};
	lrRadios[] = {};
};
class Cav_B_B_CavScout_crewman: Cav_B_B_CavScout_base {
	vest[] = {"rhsusf_spcs_ocp"};
	backpack[] = {"B_Carryall_mcamo"};
	primary[] = {"rhs_weap_m4a1","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ACOG_RMR",""};
	magazines[] = {"rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",7,"rhs_mag_an_m8hc",2,"SmokeShellBlue","rhs_mag_30Rnd_556x45_M855A1_Stanag",3};
	items[] = {"ACE_EarPlugs",2,"ACE_CableTie",2,"ACE_Flashlight_MX991","ACE_MapTools","ACE_microDAGR","ACE_quikclot",20,"ACE_tourniquet",2,"ACRE_PRC343","ACRE_PRC152",2,"ACE_EntrenchingTool","ACE_personalAidKit","ToolKit"};
	headgear[] = {"rhsusf_cvc_ess"};
};
class Cav_B_B_CavScout_dismount: Cav_B_B_CavScout_base {
	vest[] = {"rhsusf_spcs_ocp_squadleader"};
	backpack[] = {"B_Carryall_mcamo"};
	primary[] = {"rhs_weap_m4a1_m320","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ACOG_RMR",""};
	magazines[] = {"rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",10,"rhs_mag_an_m8hc",2,"SmokeShellBlue","rhs_mag_M441_HE",7,"rhs_mag_m713_Red",2,"rhs_mag_m714_White",2,"rhs_mag_m67",2,"ACE_HuntIR_M203",3};
	items[] = {"ACE_EarPlugs","ACE_CableTie",2,"ACE_Flashlight_MX991","ACE_MapTools","ACE_microDAGR","ACE_quikclot",20,"ACE_tourniquet",2,"ACRE_PRC343","ACRE_PRC152",2,"B_UavTerminal","ACE_EntrenchingTool","ACE_SpraypaintGreen","ACE_personalAidKit","ACE_SpraypaintRed","ACE_HuntIR_monitor","ACE_MX2A","ACE_UAVBattery",2,};
	headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
};*/