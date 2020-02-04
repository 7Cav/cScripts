class Cav_B_Charlie_Trooper_Local : Cav_B_Charlie_base_F {
    headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    uniform[] = {"rhs_uniform_acu_oefcp"};
    backpack[] = {"B_AssaultPack_mcamo"};

    magazines[] = {
		"rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",4,

		"rhs_mag_m67",2,
		"SmokeShell",2
	};
    items[] = {
		// Radio
		"acre_prc343",

		// Tools
		"ACE_MapTools",
		"ACE_Flashlight_XL50",

		// Medical Equipment
		"ACE_quikclot",6,
		"ACE_tourniquet",2,

		// Gear
		"rhsusf_ANPVS_14",
		"rhsusf_oakley_goggles_clr"
	};

    watch[] = {"ACE_Altimeter"};

    preLoadout = "[(_this select 0), 'charlie', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0)] call cScripts_fnc_setPostInitPlayerSettings;";
};

class Cav_B_C_SquadLeader_F : Cav_B_Charlie_Trooper_Local {
	displayName = "Squad Leader";

    // nvgs[] = {""};
    // headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    // uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_squadleader"};
    // backpack[] = {"B_AssaultPack_mcamo"};

    primary[] += {"rhsusf_acc_acog_rmr", "rhsusf_acc_anpeq15", "rhsusf_acc_sfmb556", "rhsusf_acc_tdstubby_blk"};
    // secondary[] = {""};
    // launcher[] = {""};
    binoculars[] = {"ACE_Vector"};

    magazines[] += {
		"rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",2,

		"SmokeShell",2,
		"SmokeShellYellow",2,
		"ACE_Chemlight_HiYellow",2,
		
		"B_IR_Grenade",2,
		"rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",4
	};

    items[] += {
		// Radio
		"ACRE_PRC152",

		// Electronics
		"ACE_microDAGR",
		"ACE_HuntIR_monitor",
		"ACE_MX2A",
		
		// Medical Equipment
		"ACE_personalAidKit",
		"ACE_quikclot",10,
		"ACE_tourniquet",2,

		// Tools
		"rhs_weap_rsp30_green",2,
		"ACE_SpraypaintBlack"
	};

    // compass[] = {"ItemCompass"};
    gps[] = {"ItemAndroid"};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    // insignia[] = {""};
    // preLoadout = "";
    // postLoadout = "";
};

class Cav_B_C_FireTeamLeader_F : Cav_B_Charlie_Trooper_Local {
	displayName = "Fire Team Leader";

    // nvgs[] = {""};
    headgear[] = {"rhsusf_ach_helmet_headset_ocp"};
    //uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_teamleader"};
    // backpack[] = {"B_AssaultPack_mcamo"};

    primary[] += {"rhsusf_acc_acog_rmr", "rhsusf_acc_anpeq15", "rhsusf_acc_sfmb556", "rhsusf_acc_tdstubby_blk"};
    // secondary[] = {""};
    // launcher[] = {""};
    // binoculars[] = {""};

    magazines[] += {
		"rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",6,

		"rhs_mag_m67",2,
		"SmokeShell",2,
		"SmokeShellBlue",2,
		"B_IR_Grenade",2,

		"ACE_Chemlight_HiBlue",

		"rhsusf_200Rnd_556x45_soft_pouch"
	};
    items[] += {
		// Radio
		"ACRE_PRC152",

		// Electronics
		"ACE_microDAGR",
		"ACE_HuntIR_monitor",
		
		// Medical Equipment
		"ACE_personalAidKit",
		"ACE_quikclot",10,
		"ACE_tourniquet",2,

		// Tools
		"ACE_SpraypaintRed",
		"ACE_EntrenchingTool"
	};

    // compass[] = {"ItemCompass"};
    // gps[] = {""};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    // insignia[] = {""};
    // preLoadout = "";
    // postLoadout = "";
};

class Cav_B_C_AutomaticRifleman_F : Cav_B_Charlie_Trooper_Local {
    // nvgs[] = {""};
    headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    // goggles[] = {"rhs_googles_clear"};
    // uniform[] = {"rhs_uniform_acu_oefcp"};
    vest[] = {"rhsusf_spcs_ocp_saw"};
    // backpack[] = {"B_AssaultPack_mcamo"};

    primary[] = {"rhs_weap_m249_light_S","rhsusf_acc_elcan","rhsusf_acc_anpeq15side_bk","rhsusf_acc_sfmb556","rhsusf_acc_grip4_bipod"};
    // secondary[] = {""};
    // launcher[] = {""};
    // binoculars[] = {""};

    magazines[] = {
		"rhsusf_200Rnd_556x45_soft_pouch",5,

		"rhs_mag_m67",2,
		"SmokeShell",4,
	};
    items[] += {
		// Electronics
		"ACE_DAGR",

		// Medical Equipment
		"ACE_personalAidKit",
		"ACE_quikclot",10,
		"ACE_tourniquet",2
	};

    // compass[] = {"ItemCompass"};
    // gps[] = {""};
    // map[] = {"ItemMap"};
    // watch[] = {"ACE_Altimeter"};

    // insignia[] = {""};
    // preLoadout = "";
    // postLoadout = "";
}
