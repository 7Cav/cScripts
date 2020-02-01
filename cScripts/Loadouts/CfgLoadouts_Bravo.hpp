
//                B R A V O   C O M P A N Y

class Cav_B_B_PlatoonSergeant_F : Cav_B_Bravo_base_F {

    //goggles[] = {"rhsusf_shemagh_gogg_tan"};
    vest[] = {"rhsusf_iotv_ocp_Teamleader"};
    backpack[] = {"B_Carryall_mcamo"};
    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2,

        "rhs_mag_m67",2,

        "SmokeShell",6,
        "SmokeShellBlue",1,
        "SmokeShellGreen",1,
        "SmokeShellRed",1,
        "SmokeShellYellow",1
    };

    items[] = {
        // Radios
        "ACRE_PRC152",
        "ACRE_PRC152",

        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,
        "ACE_personalAidKit",

        // Standard
        
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",

        // Electronics
        "ACE_microDAGR",
        "ACE_HuntIR_monitor",
        
        // Clothing
        "rhsusf_shemagh_gogg_tan", 

        // Tools
        "ACE_SpraypaintRed",
        "ACE_EntrenchingTool"
    };

    gps[] = {"ItemcTab"};
    preLoadout = "[(_this select 0), 'bravo', 0, 1, true] call cScripts_fnc_setPreInitPlayerSettings;";
};
class Cav_B_B_PlatoonLeader_F : Cav_B_Bravo_base_F {

    //goggles[] = {"rhsusf_shemagh_gogg_tan"};
    vest[] = {"rhsusf_iotv_ocp_Teamleader"};
    backpack[] = {"B_Carryall_mcamo"};
    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2,

        "rhs_mag_m67",2,

        "SmokeShell",6,
        "SmokeShellBlue",1,
        "SmokeShellGreen",1,
        "SmokeShellRed",1,
        "SmokeShellYellow",1
    };

    items[] = {
        // Radios
        "ACRE_PRC152",
        "ACRE_PRC152",

        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,
        "ACE_personalAidKit",

        // Standard
        
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",

        // Electronics
        "ACE_microDAGR",
        "ACE_HuntIR_monitor",
        
        // Clothing
        "rhsusf_shemagh_gogg_tan", 

        // Tools
        "ACE_SpraypaintRed",
        "ACE_EntrenchingTool"
    };

    gps[] = {"ItemcTab"};
    preLoadout = "[(_this select 0), 'bravo', 0, 1, true] call cScripts_fnc_setPreInitPlayerSettings;";
};
class Cav_B_B_PlatoonMedic_F : Cav_B_Bravo_base_F {
    backpack[] = {"B_Kitbag_mcamo"};
    //goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_headset_ocp"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_mbav_medic"};
    binoculars[] = {"ACE_Vector"};

    primary[] = {"rhs_weap_m4a1_carryhandle_grip3","rhsusf_acc_anpeq16a","rhsusf_acc_eotech_xps3","rhsusf_acc_grip3"};
    secondary[] = {"rhsusf_weap_m9"};
    launcher[] = {""};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",9,

        "rhs_mag_m67",2,
        "ACE_Chemlight_HiOrange",2,
        "SmokeShell",4,
        "SmokeShellBlue",2
    };

    items[] = {
        // Radios
        "ACRE_PRC152",

        // Medical Equipment
        "ACE_personalAidKit",2,
        "ACE_surgicalKit",
        "ACE_tourniquet",10,

        "ACE_quikclot",25,
        "ACE_elasticBandage",30,

        "ACE_adenosine",6,
        "ACE_epinephrine",20,
        "ACE_morphine",20,

        "ACE_salineIV_500",12,
       
        "ACE_Splint",12,

        // Standard
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",2,

        // Electronics
        "ACE_microDAGR",
        "ACE_Flashlight_KSF1",
        "ACE_IR_Strobe_Item",
        "rhsusf_ANPVS_14",

        // Tools
        "ACE_EntrenchingTool",
        "ACE_SpraypaintBlue"
    };

    compass[] = {"ItemCompass"};
    gps[] = {"ItemAndroid"};
    map[] = {"ItemMap"};
    nvgs[] = {""};
    watch[] = {"ItemWatch"};

    insignia[] = {"Cav_Insignia_Specialized_CLS"};
    preLoadout = "[(_this select 0), 'bravo', 1, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};

// CAVALRY SCOUTS
class Cav_B_B_CavScout_Crewman_Local: Cav_B_B_CavScout_base {

    headgear[] = {"rhsusf_cvc_ess"};
    vest[] = {"rhsusf_spcs_ocp"};
    backpack[] = {"B_Carryall_mcamo"};

    primary[] = {"rhs_weap_m4a1","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ACOG_RMR",""};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",7,
        "rhs_mag_an_m8hc",2,

        "SmokeShellBlue"
    };

    items[] = {
        "ACE_EarPlugs",2,
        "ACE_CableTie",2,
        "ACE_Flashlight_MX991",
        "ACE_MapTools",
        "ACE_microDAGR",
        "ACE_quikclot",20,
        "ACE_tourniquet",2,

        "ACRE_PRC152",2,

        "ACE_EntrenchingTool",
        "ACE_personalAidKit",

        "ToolKit"
    };


    preLoadout = "[(_this select 0), 'bravo', 1, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0)] call cScripts_fnc_setPostInitPlayerSettings;";
};
class Cav_B_B_CavScout_Dismount_Local: Cav_B_B_CavScout_base {

    headgear[] = {"rhsusf_ach_helmet_camo_ocp"};
    vest[] = {"rhsusf_spcs_ocp_squadleader"};
    backpack[] = {"B_Carryall_mcamo"};

    primary[] = {"rhs_weap_m4a1_m320","rhsusf_acc_SFMB556","rhsusf_acc_anpeq15side_bk","rhsusf_acc_ACOG_RMR",""};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Pull",10,

        "rhs_mag_m67",2,
        "rhs_mag_an_m8hc",2,
        "rhs_mag_M441_HE",7,
        "rhs_mag_m713_Red",2,
        "rhs_mag_m714_White",2,

        "ACE_HuntIR_M203",3,
        
        "SmokeShellBlue"
    };

    items[] = {
        "ACRE_PRC152",2,

        "ACE_EarPlugs",2,
        "ACE_CableTie",2,

        "ACE_quikclot",20,
        "ACE_tourniquet",2,
        "ACE_EntrenchingTool",
        "ACE_personalAidKit",
        "ACE_SpraypaintRed",
        
        "ACE_SpraypaintGreen",

        "ACE_microDAGR",
        "B_UavTerminal",
        "ACE_HuntIR_monitor",
        "ACE_UAVBattery",2,
        "ACE_MX2A",
        
        "ACE_Flashlight_MX991",
        "ACE_MapTools"
    };

    preLoadout = "[(_this select 0), 'bravo'] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0)] call cScripts_fnc_setPostInitPlayerSettings;";
};

// C R E W
class Cav_B_B_Tank_Commander_F : Cav_B_Bravo_Crew_base_F {

    headgear[] = {"rhsusf_cvc_green_helmet"};
    //goggles[] = {"rhsusf_shemagh_gogg_tan"};
    vest[] = {"rhsusf_iotv_ocp_Repair"};
    backpack[] = {"B_Carryall_mcamo"};
    binoculars[] = {"ACE_Vector"};

    primary[] = {"rhs_weap_m4a1_m320","rhsusf_acc_anpeq15side","rhsusf_acc_compm4"};

    secondary[] = {"rhsusf_weap_m9"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",4,
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2,
        "rhsusf_mag_15Rnd_9x19_JHP",4,

        "rhs_mag_m714_White",
        "rhs_mag_m713_Red",
        "rhs_mag_m715_Green",
        "rhs_mag_m662_red",
        "rhs_mag_m661_green",

        "rhs_mag_m67",2,

        "SmokeShell",2,
        "SmokeShellBlue",1,
        "SmokeShellYellow",1
    };

    items[] = {
        // Radios
        "ACRE_PRC152",
        "ACRE_PRC152",

        // Personal Medical Equipment
        "ACE_quikclot",6,
        "ACE_tourniquet",2,


        // Standard
        
        "ACE_MapTools",
        "ACE_CableTie",
        "ToolKit",

        // Clothing
        "rhsusf_shemagh_gogg_tan", 

        // Electronics
        "ACE_microDAGR"
    };

    gps[] = {"ItemAndroid"};
    preLoadout = "[(_this select 0), 'bravo', 0, 1] call cScripts_fnc_setPreInitPlayerSettings;";
};
class Cav_B_B_Tank_Gunner_F : Cav_B_Bravo_Crew_base_F {

    headgear[] = {"rhsusf_cvc_green_helmet"};
    //goggles[] = {"rhsusf_shemagh_gogg_tan"};
    vest[] = {"rhsusf_iotv_ocp_Repair"};
    backpack[] = {"B_AssaultPack_mcamo"};

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_anpeq15side","rhsusf_acc_compm4"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",6,

        "rhs_mag_m67",2,

        "SmokeShell",2,
        "SmokeShellBlue",1,
        "SmokeShellYellow",1
    };

    items[] = {
        // Radios
        "ACRE_PRC152",

        // Medical Equipment
        "ACE_personalAidKit",
        "ACE_quikclot",20,
        "ACE_tourniquet",6,
        "ACE_morphine",6,

        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,

        // Standard
        
        "ACE_MapTools",
        "ACE_CableTie",

        // Clothing
        "rhsusf_shemagh_gogg_tan", 

        // Electronics
        "ACE_microDAGR"
    };

    gps[] = {"ItemAndroid"};
};
class Cav_B_B_Tank_Driver_F : Cav_B_Bravo_Crew_base_F {

    headgear[] = {"rhsusf_cvc_green_helmet"};
    //goggles[] = {"rhsusf_shemagh_gogg_tan"};
    vest[] = {"rhsusf_iotv_ocp_Repair"};
    backpack[] = {"B_AssaultPack_mcamo"};

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_anpeq15side","rhsusf_acc_compm4"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",6,

        "rhs_mag_m67",2,

        "SmokeShell",2,
        "SmokeShellBlue",1,
        "SmokeShellYellow",1
    };

    items[] = {
        // Radios
        "ACRE_PRC152",

        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,

        // Standard
        
        "ACE_MapTools",
        "ACE_CableTie",
        "ToolKit",
        
        // Clothing
        "rhsusf_shemagh_gogg_tan", 

        // Electronics
        "ACE_microDAGR"
    };

    gps[] = {"ItemAndroid"};
};
class Cav_B_B_Tank_Loader_F : Cav_B_B_Tank_Driver_F {
};


class Cav_B_B_Ifv_Commander_F : Cav_B_Bravo_Crew_base_F {

    headgear[] = {"rhsusf_cvc_green_helmet"};
    //goggles[] = {"rhsusf_shemagh_gogg_tan"};
    vest[] = {"rhsusf_iotv_ocp_Repair"};
    backpack[] = {"B_Carryall_mcamo"};
    binoculars[] = {"ACE_Vector"};

    primary[] = {"rhs_weap_m4a1_m320","rhsusf_acc_anpeq15side","rhsusf_acc_compm4"};

    secondary[] = {"rhsusf_weap_m9"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",4,
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2,
        "rhsusf_mag_15Rnd_9x19_JHP",4,

        "rhs_mag_m714_White",
        "rhs_mag_m713_Red",
        "rhs_mag_m715_Green",
        "rhs_mag_m662_red",
        "rhs_mag_m661_green",

        "rhs_mag_m67",2,

        "SmokeShell",2,
        "SmokeShellBlue",1,
        "SmokeShellYellow",1
    };

    items[] = {
        // Radios
        "ACRE_PRC152",
        "ACRE_PRC152",

        // Personal Medical Equipment
        "ACE_quikclot",6,
        "ACE_tourniquet",2,


        // Standard
        
        "ACE_MapTools",
        "ACE_CableTie",
        "ToolKit",

        // Clothing
        "rhsusf_shemagh_gogg_tan", 

        // Electronics
        "ACE_microDAGR"
    };

    gps[] = {"ItemAndroid"};
    preLoadout = "[(_this select 0), 'bravo', 0, 1] call cScripts_fnc_setPreInitPlayerSettings;";
};
class Cav_B_B_Ifv_Driver_F : Cav_B_Bravo_Crew_base_F {

    headgear[] = {"rhsusf_cvc_green_helmet"};
    //goggles[] = {"rhsusf_shemagh_gogg_tan"};
    vest[] = {"rhsusf_iotv_ocp_Repair"};
    backpack[] = {"B_AssaultPack_mcamo"};

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_anpeq15side","rhsusf_acc_compm4"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",6,

        "rhs_mag_m67",2,

        "SmokeShell",2,
        "SmokeShellBlue",1,
        "SmokeShellYellow",1
    };

    items[] = {
        // Radios
        "ACRE_PRC152",

        // Medical Equipment
        "ACE_personalAidKit",
        "ACE_quikclot",20,
        "ACE_tourniquet",6,
        "ACE_morphine",6,

        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,

        // Standard
        
        "ACE_MapTools",
        "ACE_CableTie",

        // Clothing
        "rhsusf_shemagh_gogg_tan", 

        // Electronics
        "ACE_microDAGR"
    };

    insignia[] = {"Cav_Insignia_Specialized_CLS"};
    gps[] = {"ItemAndroid"};

};
class Cav_B_B_Ifv_Gunner_F : Cav_B_Bravo_Crew_base_F {

    headgear[] = {"rhsusf_cvc_green_helmet"};
    //goggles[] = {"rhsusf_shemagh_gogg_tan"};
    vest[] = {"rhsusf_iotv_ocp_Repair"};
    backpack[] = {"B_AssaultPack_mcamo"};

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_anpeq15side","rhsusf_acc_compm4"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",6,

        "rhs_mag_m67",2,

        "SmokeShell",2,
        "SmokeShellBlue",1,
        "SmokeShellYellow",1
    };

    items[] = {
        // Radios
        "ACRE_PRC152",

        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,

        // Standard
        
        "ACE_MapTools",
        "ACE_CableTie",
        "ToolKit",
        
        // Clothing
        "rhsusf_shemagh_gogg_tan", 

        // Electronics
        "ACE_microDAGR"
    };

    gps[] = {"ItemAndroid"};
    preLoadout = "[(_this select 0), 'bravo', 0, 0] call cScripts_fnc_setPreInitPlayerSettings;";
};


// S Q U A D
class Cav_B_B_SquadLeader_F : Cav_B_Bravo_base_F {

    backpack[] = {"B_Carryall_mcamo"};
    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2,

        "rhs_mag_m67",4,

        "SmokeShell",6,
        "SmokeShellGreen",1,
        "SmokeShellRed",1,
        "SmokeShellYellow",1,
        "SmokeShellBlue",1
    };

    items[] = {
        // Radios
        "ACRE_PRC152",
        "ACRE_PRC152",

        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,
        "ACE_personalAidKit",

        // Standard
        
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",

        // Electronics
        "ACE_microDAGR",
        "ACE_HuntIR_monitor",

        // Tools
        "ACE_SpraypaintRed",
        "ACE_EntrenchingTool"
    };

    gps[] = {"ItemAndroid"};
};

class Cav_B_B_FireTeamLeader_F : Cav_B_Bravo_base_F {
    backpack[] = {"B_Carryall_mcamo"};
    binoculars[] = {"ACE_Vector"};

    primary[] = {"rhs_weap_m4a1_m320","rhsusf_acc_anpeq15side","rhsusf_acc_ACOG_RMR"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",8,
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2,

        "rhs_mag_m67",4,

        "SmokeShell",6,
        "SmokeShellGreen",1,
        "SmokeShellRed",1,
        "SmokeShellYellow",1,
        "SmokeShellBlue",1,

        "rhs_mag_M441_HE",10,
        "rhs_mag_M433_HEDP",2,
        "rhs_mag_m714_White",2,
        "ACE_HuntIR_M203",2
    };

    items[] = {
        // Radios
        "ACRE_PRC152",
        "ACRE_PRC152",

        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,
        "ACE_personalAidKit",

        // Standard
        
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",

        // Electronics
        "ACE_microDAGR",
        "ACE_HuntIR_monitor",

        // Tools
        "ACE_SpraypaintRed",
        "ACE_EntrenchingTool"
    };
    gps[] = {"ItemAndroid"};
};
class Cav_B_B_AutomaticRifleman_F : Cav_B_Bravo_base_F {
    vest[] = {"rhsusf_iotv_ocp_SAW"};

    primary[] = {"rhs_weap_m249_pip_S","rhsusf_acc_anpeq15side","rhsusf_acc_ACOG_RMR"};

    magazines[] = {
        "rhsusf_200rnd_556x45_mixed_box",4,

        "rhs_mag_m67",4,

        "SmokeShell",4
    };
};
class Cav_B_B_Grenadier_F : Cav_B_Bravo_base_F {

    primary[] = {"rhs_weap_m4a1_m320","rhsusf_acc_anpeq15side","rhsusf_acc_ACOG_RMR"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",10,

        "rhs_mag_M441_HE",10,
        "rhs_mag_M433_HEDP",4,
        "rhs_mag_m714_White",4,
        "ACE_HuntIR_M203",2,

        "rhs_mag_m67",6,

        "SmokeShell",6
    };

    items[] = {
        // Radios
        "ACRE_PRC152",

        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,

        // Standard
        
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",

        // Electronics
        "ACE_microDAGR",

        // Tools
        "ACE_EntrenchingTool"
    };

};
class Cav_B_B_Rifleman_F : Cav_B_Bravo_base_F {

    backpack[] = {"B_Carryall_mcamo"};
    vest[] = {"rhsusf_iotv_ocp_Rifleman"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",10,

        "rhs_mag_m67",6,

        "SmokeShell",6,

        "rhsusf_200rnd_556x45_mixed_box",2
    };
};
class Cav_B_B_RiflemanAT_F : Cav_B_Bravo_base_F {

    backpack[] = {"B_Carryall_mcamo"};
    vest[] = {"rhsusf_iotv_ocp_Rifleman"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",10,

        "rhs_mag_m67",6,

        "SmokeShell",6,

        "rhsusf_200rnd_556x45_mixed_box",2
    };
};
class Cav_B_B_RiflemanLAT_F : Cav_B_Bravo_base_F {

    backpack[] = {"B_Carryall_mcamo"};
    vest[] = {"rhsusf_iotv_ocp_Rifleman"};

    launcher[] = {"rhs_weap_M136_hp"};
    
    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",10,

        "rhs_mag_m67",6,

        "SmokeShell",6,

        "rhsusf_200rnd_556x45_mixed_box",2
    };
};
class Cav_B_B_CombatLifeSaver_F : Cav_B_Bravo_base_F {

    backpack[] = {"B_Carryall_mcamo"};
    vest[] = {"rhsusf_iotv_ocp_Rifleman"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",10,

        "rhs_mag_m67",6,

        "SmokeShell",6,
        "SmokeShellGreen",
        "SmokeShellRed",
        "SmokeShellYellow",

        "rhsusf_200rnd_556x45_mixed_box"
    };

    items[] = {
        // Medical Equipment
        "ACE_personalAidKit",
        "ACE_quikclot",20,
        "ACE_tourniquet",6,
        "ACE_morphine",6,

        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,

        // Standard
        
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",

        "ACE_microDAGR",

        // Tools
        "ACE_EntrenchingTool"
    };

    insignia[] = {"Cav_Insignia_Specialized_CLS"};
};

// MEDICAL TEAM
class Cav_B_B_TeamLeader_Mustang_F : Cav_B_Bravo_Logi_base_F {
    backpack[] = {"B_Carryall_mcamo"};

    headgear[] = {"rhsusf_ach_bare_tan_headset"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_mbav_medic"};
    binoculars[] = {"ACE_Vector"};

    primary[] = {"rhs_weap_m4a1_m320","rhsusf_acc_anpeq16a","rhsusf_acc_ACOG_RMR","rhsusf_acc_rvg_blk"};
    secondary[] = {""};
    launcher[] = {""};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",9,

        "rhs_mag_m67",
        "MiniGrenade",2,

        "ACE_Chemlight_HiOrange",2,
        "SmokeShell",4,
        "SmokeShellBlue",2,
       
        "1Rnd_Smoke_Grenade_shell",3,
        "ACE_40mm_Flare_ir",2,
        "ACE_HuntIR_M203",4
    };

    items[] = {
        // Radios
        "ACRE_PRC152",
        "ACRE_PRC152",

        // Medical Equipment
        "ACE_personalAidKit",5,
        "ACE_surgicalKit",
        "ACE_tourniquet",9,

        "ACE_quikclot",30,
        "ACE_elasticBandage",30,

        "ACE_adenosine",6,
        "ACE_epinephrine",20,
        "ACE_morphine",20,

        "ACE_salineIV",6,
       
        "ACE_splint",8,

        // Standard
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",4,

        // Electronics
        "ACE_microDAGR",
        "ACE_Flashlight_KSF1",
        "ACE_IR_Strobe_Item",2,
        "rhsusf_ANPVS_14",
        "ACE_HuntIR_monitor",
       

        // Tools
        "ACE_EntrenchingTool",
        "ACE_SpraypaintBlue"
    };

    compass[] = {"ItemCompass"};
    gps[] = {"ItemAndroid"};
    map[] = {"ItemMap"};
    nvgs[] = {""};
    watch[] = {"ItemWatch"};

    insignia[] = {"Cav_Insignia_Specialized_CLS"};
    preLoadout = "[(_this select 0), 'mustang', 2, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};
class Cav_B_B_Mustang_CombatMedic_F : Cav_B_Bravo_Logi_base_F {
    backpack[] = {"B_Carryall_mcamo"};

    headgear[] = {"rhsusf_ach_bare_tan_headset"};
    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    vest[] = {"rhsusf_mbav_medic"};
    binoculars[] = {"ACE_Vector"};

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_anpeq16a","rhsusf_acc_eotech_xps3","rhsusf_acc_rvg_blk"};
    secondary[] = {""};
    launcher[] = {""};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",7,

        "rhs_mag_m67",       
        "MiniGrenade",

        "ACE_Chemlight_HiOrange",2,
        "SmokeShell",4,
        "SmokeShellBlue",2
    };

    items[] = {
        // Radios
        "ACRE_PRC152",

        // Medical Equipment
        "ACE_personalAidKit",8,
        "ACE_surgicalKit",
        "ACE_tourniquet",10,

        "ACE_quikclot",30,
        "ACE_elasticBandage",41,

        "ACE_adenosine",6,
        "ACE_epinephrine",20,
        "ACE_morphine",20,

        "ACE_salineIV",11,
       
        "ACE_Splint",10,

        // Standard
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",2,

        // Electronics
        "ACE_microDAGR",
        "ACE_Flashlight_KSF1",
        "ACE_IR_Strobe_Item",
        "rhsusf_ANPVS_14",

        // Tools
        "ACE_EntrenchingTool"
    };

    compass[] = {"ItemCompass"};
    gps[] = {"ItemAndroid"};
    map[] = {"ItemMap"};
    nvgs[] = {""};
    watch[] = {"ItemWatch"};

    insignia[] = {"Cav_Insignia_Specialized_CLS"};
    preLoadout = "[(_this select 0), 'mustang', 2, 0] call cScripts_fnc_setPreInitPlayerSettings;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};


class Cav_B_B_LogisticsOpsOfficer_F : Cav_B_Bravo_Logi_base_F {

    //goggles[] = {"rhsusf_shemagh_gogg_tan"};
    backpack[] = {"B_Carryall_mcamo"};
    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",5,
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2,

        "rhs_mag_m67",2,

        "SmokeShell",8,
        "SmokeShellBlue",4,
        "SmokeShellGreen",4,
        "SmokeShellRed",2,
        "SmokeShellYellow",2,
        "ACE_Chemlight_UltraHiOrange",6,
        "B_IR_Grenade",6,
        "ACE_HandFlare_Red",4,
        "ACE_HandFlare_Yellow",4
        
    };

    items[] = {
        // Radios
        "ACRE_PRC152",
        "ACRE_PRC152",
        "ACRE_PRC152",

        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,
        "ACE_morphine",5,
        "ACE_personalAidKit",2,

        // Standard
        
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        "ACE_IR_Strobe_Item",6,
        "ACE_CableTie",2,

        // Electronics
        "ACE_microDAGR",

        // Tools
        "ACE_SpraypaintRed",
        "ACE_SpraypaintBlue",
        "ACE_SpraypaintGreen",
        "ACE_Fortify",
        "ACE_EntrenchingTool"
    };

    gps[] = {"ItemcTab"};
};
class Cav_B_B_LogisticsOpsNCO_F : Cav_B_Bravo_Logi_base_F {

    //goggles[] = {"rhsusf_shemagh_gogg_tan"};
    backpack[] = {"B_Carryall_mcamo"};
    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",5,
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2,

        "rhs_mag_m67",2,

        "SmokeShell",8,
        "SmokeShellBlue",4,
        "SmokeShellGreen",4,
        "SmokeShellRed",2,
        "SmokeShellYellow",2,
        "ACE_Chemlight_UltraHiOrange",6,
        "B_IR_Grenade",6,
        "ACE_HandFlare_Red",4,
        "ACE_HandFlare_Yellow",4
        
    };

    items[] = {
        // Radios
        "ACRE_PRC152",
        "ACRE_PRC152",
        "ACRE_PRC152",

        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,
        "ACE_morphine",5,
        "ACE_personalAidKit",2,

        // Standard
        
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        "ACE_IR_Strobe_Item",6,
        "ACE_CableTie",2,

        // Electronics
        "ACE_microDAGR",

        // Tools
        "ACE_SpraypaintRed",
        "ACE_SpraypaintBlue",
        "ACE_SpraypaintGreen",
        "ACE_Fortify",
        "ACE_EntrenchingTool"
    };

    gps[] = {"ItemcTab"};
};

class Cav_B_B_LogisticTeamLeader_F : Cav_B_Bravo_Logi_base_F {

    //goggles[] = {"rhsusf_shemagh_gogg_tan"};
    backpack[] = {"B_Carryall_mcamo"};
    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",5,
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2,

        "rhs_mag_m67",2,

        "SmokeShell",8,
        "SmokeShellBlue",4,
        "SmokeShellGreen",4,
        "SmokeShellRed",2,
        "SmokeShellYellow",2,
        "ACE_Chemlight_UltraHiOrange",6,
        "B_IR_Grenade",6,
        "ACE_HandFlare_Red",4,
        "ACE_HandFlare_Yellow",4
        
    };

    items[] = {
        // Radios
        "ACRE_PRC152",
        "ACRE_PRC152",
        "ACRE_PRC152",

        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,
        "ACE_morphine",5,
        "ACE_personalAidKit",2,

        // Standard
        
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        "ACE_IR_Strobe_Item",6,
        "ACE_CableTie",2,

        // Electronics
        "ACE_microDAGR",

        // Tools
        "ACE_SpraypaintRed",
        "ACE_SpraypaintBlue",
        "ACE_SpraypaintGreen",
        "ACE_Fortify",
        "ACE_EntrenchingTool"
    };
};
class Cav_B_B_LogisticsTeamMember_F : Cav_B_Bravo_Logi_base_F {

    //goggles[] = {"rhsusf_shemagh_gogg_tan"};
    backpack[] = {"B_Carryall_mcamo"};
    binoculars[] = {"ACE_Vector"};

    primary[] = {"rhs_weap_m4a1_m320","rhsusf_acc_anpeq15side","rhsusf_acc_acog3"};
    
    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",5,
        "rhs_mag_M441_HE",6,
        "rhs_mag_M716_yellow",4,
        "rhs_mag_M662_red",4,

        "rhs_mag_m67",2,

        "SmokeShell",4,
        "SmokeShellBlue",4,
        "SmokeShellGreen",4,
        "SmokeShellRed",2,
        "SmokeShellYellow",2,
        "ACE_Chemlight_UltraHiOrange",6,
        "B_IR_Grenade",6,
        "ACE_HandFlare_Red",4,
        "ACE_HandFlare_Yellow",4
        
    };

    items[] = {
        // Radios
        "ACRE_PRC152",
        "ACRE_PRC152",
        "ACRE_PRC152",

        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",4,
        "ACE_morphine",5,
        "ACE_personalAidKit",2,

        // Standard
        
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        "ACE_IR_Strobe_Item",6,
        "ACE_CableTie",2,

        // Electronics
        "ACE_microDAGR",

        // Tools
        "ACE_SpraypaintRed",
        "ACE_SpraypaintBlue",
        "ACE_SpraypaintGreen",
        "ACE_Fortify",
        "ACE_EntrenchingTool"
    };
};
