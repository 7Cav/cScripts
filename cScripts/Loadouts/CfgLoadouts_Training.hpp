class Cav_B_Unarmed_Local : CommonBlufor {
    displayName = "";
    
    backpack[] = {""};
    goggles[] = {""};
    headgear[] = {""};
    uniform[] = {"rhs_uniform_cu_ocp_1stcav"};
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

//  S 3   I N S T R U C T O R S   A N D   S T U D E N T S

// SCHOOL OF INFANTRY

class CAV_SOI_INSTR : Cav_B_Charlie_base_F {

    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    headgear[] = {"DAR_Beret_blk"};
    goggles[] = {""};
    vest[] = {"V_TacVest_khk"};
    backpack[] = {"B_Carryall_mcamo"};
    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",6,

        "rhs_mag_m67",2,

        "SmokeShell",2,
        "SmokeShellBlue",1,
        "SmokeShellGreen",1,
        "SmokeShellRed",1,
        "SmokeShellYellow",1
    };

    items[] = {
        // Radios
        "ACRE_PRC343",
        "ACRE_PRC152",
        "ACRE_PRC152",

        // Standard
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",
        "H_Cap_tan_specops_US",

        // Electronics
        "ACE_microDAGR",
        "ACE_HuntIR_monitor",

        // Tools
        "ACE_SpraypaintRed",
        "ACE_EntrenchingTool"
    };

    gps[] = {"ItemAndroid"};

    insignia[] = {""};

    preLoadout = "[(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage false;";
};

class CAV_SOI_BAS_INSTR : Cav_B_Charlie_base_F {

    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    headgear[] = {"DAR_Beret_Mar"};
    goggles[] = {""};
    vest[] = {"V_TacVest_khk"};
    backpack[] = {"B_Carryall_mcamo"};
    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",6,

        "rhs_mag_m67",2,

        "SmokeShell",2,
        "SmokeShellBlue",1,
        "SmokeShellGreen",1,
        "SmokeShellRed",1,
        "SmokeShellYellow",1
    };

    items[] = {
        // Radios
        "ACRE_PRC343",
        "ACRE_PRC152",
        "ACRE_PRC152",

        // Standard
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",
        "H_Cap_tan_specops_US",

        // Electronics
        "ACE_microDAGR",
        "ACE_HuntIR_monitor",

        // Tools
        "ACE_SpraypaintRed",
        "ACE_EntrenchingTool"
    };

    gps[] = {"ItemAndroid"};

    insignia[] = {""};

    preLoadout = "[(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage false;";
};

class CAV_SOI_C1_INSTR : Cav_B_Charlie_base_F {

    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    headgear[] = {"DAR_Beret_Mar"};
    goggles[] = {""};
    vest[] = {"V_TacVest_khk"};
    backpack[] = {"B_Carryall_mcamo"};
    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",6,

        "rhs_mag_m67",2,

        "SmokeShell",2,
        "SmokeShellBlue",1,
        "SmokeShellGreen",1,
        "SmokeShellRed",1,
        "SmokeShellYellow",1
    };

    items[] = {
        // Radios
        "ACRE_PRC343",
        "ACRE_PRC152",
        "ACRE_PRC152",

        // Standard
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",
        "H_Cap_tan_specops_US",

        // Electronics
        "ACE_microDAGR",
        "ACE_HuntIR_monitor",

        // Tools
        "ACE_SpraypaintRed",
        "ACE_EntrenchingTool"
    };

    gps[] = {"ItemAndroid"};

    insignia[] = {""};

    preLoadout = "[(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage false;";
};

class CAV_SOI_C2_INSTR : Cav_B_Charlie_base_F {

    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    headgear[] = {"DAR_Beret_blk"};
    goggles[] = {""};
    vest[] = {"V_TacVest_khk"};
    backpack[] = {"B_Carryall_mcamo"};
    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",6,

        "rhs_mag_m67",2,

        "SmokeShell",2,
        "SmokeShellBlue",1,
        "SmokeShellGreen",1,
        "SmokeShellRed",1,
        "SmokeShellYellow",1
    };

    items[] = {
        // Radios
        "ACRE_PRC343",
        "ACRE_PRC152",
        "ACRE_PRC152",

        // Standard
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",
        "H_Cap_tan_specops_US",

        // Electronics
        "ACE_microDAGR",
        "ACE_HuntIR_monitor",

        // Tools
        "ACE_SpraypaintRed",
        "ACE_EntrenchingTool"
    };

    gps[] = {"ItemAndroid"};

    insignia[] = {""};

    preLoadout = "[(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage false;";
};

class CAV_JM_INSTR : Cav_B_Charlie_base_F {

    uniform[] = {"LOP_U_ISTS_Fatigue_19"};
    headgear[] = {"DAR_JMCap_Blk"};
    goggles[] = {""};
    vest[] = {"V_TacVest_khk"};
    backpack[] = {"B_Carryall_mcamo"};
    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",6,

        "rhs_mag_m67",2,

        "SmokeShell",2,
        "SmokeShellBlue",1,
        "SmokeShellGreen",1,
        "SmokeShellRed",1,
        "SmokeShellYellow",1
    };

    items[] = {
        // Radios
        "ACRE_PRC343",
        "ACRE_PRC152",

        // Standard
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",
        "H_Cap_tan_specops_US",

        // Electronics
        "ACE_microDAGR",
        "ACE_HuntIR_monitor",

        // Tools
        "ACE_SpraypaintRed",
        "ACE_EntrenchingTool"
    };

    gps[] = {"ItemAndroid"};

    insignia[] = {""};
    preLoadout = "[(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage false;";
};

class CAV_SOI_STUD : Cav_B_Charlie_base_F {
    
    vest[] = {"rhsusf_iotv_ocp_Rifleman"};
    backpack[] = {"B_Carryall_mcamo"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",10,

        "rhs_mag_m67",2,

        "SmokeShell",6,

        "rhsusf_200Rnd_556x45_soft_pouch",2
    };
    
    items[] = {
        "ACRE_PRC343",
        "ACE_MapTools",
        "ACE_quikclot",12,
        "ACE_tourniquet",2,
        "ACE_EntrenchingTool"
    };

    preLoadout = "[(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage true;";
};

class CAV_SOI_BAS_STUD : Cav_B_Charlie_base_F {
    company = "charlie";
    primary[] = {"rhs_weap_m4a1"};
    vest[] = {"rhsusf_iotv_ocp_Rifleman"};
    backpack[] = {"B_Carryall_mcamo"};

    magazines[] = {""};
    
    items[] = {
        "ACRE_PRC343",
        "ACE_MapTools",
        "ACE_quikclot",12,
        "ACE_tourniquet",2
    };
        

    preLoadout = "[(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage true;";
};

class CAV_SOI_C1_STUD : Cav_B_Charlie_base_F {
    company = "charlie";
    primary[] = {"rhs_weap_m4a1"};
    vest[] = {"rhsusf_iotv_ocp_Rifleman"};
    backpack[] = {"B_Carryall_mcamo"};

    magazines[] = {""};
    
    items[] = {
        "ACRE_PRC343",
        "ACE_MapTools",
        "ACE_quikclot",12,
        "ACE_tourniquet",2
    };
        

    preLoadout = "[(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage true;";
};

class CAV_SOI_C2_STUD : Cav_B_Charlie_base_F {
    primary[] = {"rhs_weap_m4a1"};
    vest[] = {"rhsusf_iotv_ocp_Rifleman"};
    backpack[] = {"B_Carryall_mcamo"};

    magazines[] = {""};
    
    items[] = {
        "ACRE_PRC343",
        "ACE_MapTools",
        "ACE_quikclot",12,
        "ACE_tourniquet",2
    };
        

    preLoadout = "[(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage true;";
};

// THE ARMOR SCHOOL

class CAV_TAS_INSTR : Cav_B_Bravo_base_F {

    headgear[] = {"H_Cap_usblack"};
    goggles[] = {"rhsusf_shemagh_od"};
    vest[] = {"rhsusf_iotv_ocp_Repair"};
    backpack[] = {"B_Carryall_mcamo"};
    binoculars[] = {"ACE_Vector"};

    primary[] = {"rhs_weap_m4a1_m320","rhsusf_acc_anpeq15side","rhsusf_acc_compm4"};

    secondary[] = {"rhsusf_weap_m9"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag",6,
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
        "ACRE_PRC343",

        // Personal Medical Equipment
        "ACE_quikclot",12,
        "ACE_tourniquet",2,

        // Standard
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",
        "ToolKit",

        // Electronics
        "ACE_microDAGR"
    };

    gps[] = {"ItemAndroid"};

    preLoadout = "[(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage false;";
};

class CAV_TAS_STUD : Cav_B_Bravo_base_F {
    headgear[] = {"rhsusf_cvc_green_helmet"};
    goggles[] = {"rhsusf_shemagh_gogg_tan"};
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
        "ACRE_PRC343",

        // Personal Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,

        // Standard
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",
        "ToolKit",

        // Electronics
        "ACE_microDAGR"
    };

    gps[] = {"ItemAndroid"};

    preLoadout = " \
        [(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage false;";
};

// AVIATION CENTER OF EXCELLENCE

class CAV_ACE_ROTARY_INSTR : Cav_B_Alpha_base_F {

    goggles[] = {"rhsusf_shemagh_od"};
    backpack[] = {"B_Carryall_mcamo"};
    headgear[] = {"rhsusf_hgu56p_visor"};

    gps[] = {"ItemcTab"};

    preLoadout = " \
        [(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage false;";
};

class CAV_ACE_ROTARY_STUD : Cav_B_Alpha_base_F {

    backpack[] = {"B_Carryall_mcamo"};
    headgear[] = {"rhsusf_hgu56p_visor_green"};

    gps[] = {"ItemcTab"};

    preLoadout = " \
        [(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage false;";
};

class CAV_ACE_FIXED_INSTR : Cav_B_Alpha_base_F {

    nvgs[] = {""};
    backpack[] = {""};
    headgear[] = {"H_PilotHelmetFighter_B"};  // This has been tested by CPT.Blackburn.J
    uniform[] = {"U_B_PilotCoveralls"};
    vest[] = {""};

    primary[] = {""};
    secondary[] = {"rhsusf_weap_m9"};
    launcher[] = {""};

    binoculars[] = {""};

    magazines[] = {

        "rhsusf_mag_15Rnd_9x19_JHP",3,

        "Chemlight_green",
        "ACE_Chemlight_HiRed",
        "ACE_Chemlight_HiYellow",
        "SmokeShell",
        "SmokeShellGreen",
        "SmokeShellRed",
        "B_IR_Grenade",2
    };

    items[] = {
        // Radios
        "ACRE_PRC152",
        "ACRE_PRC343",

        // Personal Medical Equipment
        "ACE_quikclot",5,
        "ACE_tourniquet",2,

        // Standard
        "ACE_MapTools",
        "ACE_IR_Strobe_Item",
        "ACE_Flashlight_MX991",

        // Electronics
        "ACE_microDAGR"
    };

    preLoadout = " \
        [(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage false;";
};

class CAV_ACE_FIXED_STUD : Cav_B_Alpha_base_F {

    nvgs[] = {""};
    backpack[] = {""};
    headgear[] = {"H_PilotHelmetFighter_B"};  // This has been tested by CPT.Blackburn.J
    uniform[] = {"U_B_PilotCoveralls"};
    vest[] = {""};

    primary[] = {""};
    secondary[] = {"rhsusf_weap_m9"};
    launcher[] = {""};

    binoculars[] = {""};

    magazines[] = {

        "rhsusf_mag_15Rnd_9x19_JHP",3,

        "Chemlight_green",
        "ACE_Chemlight_HiRed",
        "ACE_Chemlight_HiYellow",
        "SmokeShell",
        "SmokeShellGreen",
        "SmokeShellRed",
        "B_IR_Grenade",2
    };

    items[] = {
        // Radios
        "ACRE_PRC152",
        "ACRE_PRC343",

        // Personal Medical Equipment
        "ACE_quikclot",5,
        "ACE_tourniquet",2,

        // Standard
        "ACE_MapTools",
        "ACE_IR_Strobe_Item",
        "ACE_Flashlight_MX991",

        // Electronics
        "ACE_microDAGR"
    };

    preLoadout = " \
        [(_this select 0), 'training', 2, 2] call cScripts_fnc_setPreInitPlayerSettings; \
        (_this select 0) allowDamage false;";
};
