/*
GearVersionDate: 160911
*/
class CAV_TankCommander : CommonBlufor {            // Tank Commander
    backpack[] = {"tf_rt1523g_big_rhs"};
    goggles[] = {"G_Lowprofile"};
    headgear[] = {"rhsusf_cvc_green_helmet"};
    vest[] = {"rhsusf_iotv_ocp_Repair"};

    primary[] = {"rhs_weap_m4a1_m320","rhsusf_acc_anpeq15side","rhsusf_acc_ACOG3"};

    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",6,

        "rhs_mag_m67",2,

        "rhs_mag_an_m8hc",2,
        "rhs_mag_m18_green",2,
        "rhs_mag_m18_red",2,

        "UGL_FlareCIR_F",2,

        "Chemlight_green",2,
        "ACE_Chemlight_HiRed",2
    };
    items[] = {
        // Medical Equipment
        "ACE_quikclot",10,
        "ACE_morphine",5,

        // Standard
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        "ACE_Flashlight_MX991",        

        // Electronics
        "ACE_microDAGR",
        "ACE_IR_Strobe_Item"
    };

    gps[] = {"itemCTab"};
    nvgs[] = {"rhsusf_ANPVS_15"};
};
class CAV_TankGunner : CommonBlufor {               // Tank Gunner
    backpack[] = {"B_AssaultPack_cbr"};
    goggles[] = {"G_Lowprofile"};
    headgear[] = {"rhsusf_cvc_green_helmet"};
    headgear[] = {"H_HelmetCrew_I"};
    vest[] = {"rhsusf_iotv_ocp_Repair"};

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_anpeq15side","rhsusf_acc_ACOG3"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",6,

        "rhs_mag_m67",2,

        "rhs_mag_an_m8hc",2,
        "rhs_mag_m18_green",2,
        "rhs_mag_m18_red",2,

        "UGL_FlareCIR_F",

        "Chemlight_green",2,
        "ACE_Chemlight_HiRed",2
    };
    items[] = {
        // Medical Equipment
        "ACE_quikclot",60,
        "ACE_morphine",35,
        "ACE_personalAidKit",2,

        // Standard
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        "ACE_Flashlight_MX991",        

        // Electronics
        "ACE_IR_Strobe_Item",

        //Tools
        "ToolKit"
    };
    
    gps[] = {"itemAndroid"};
    nvgs[] = {"rhsusf_ANPVS_15"};
};
class CAV_TankDriver : CommonBlufor {               // Tank Driver
    backpack[] = {"B_AssaultPack_cbr"};
    goggles[] = {"G_Lowprofile"};
    headgear[] = {"rhsusf_cvc_green_helmet"};
    headgear[] = {"H_HelmetCrew_I"};
    vest[] = {"rhsusf_iotv_ocp_Repair"};

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_anpeq15side","rhsusf_acc_ACOG3"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",6,

        "rhs_mag_m67",2,

        "rhs_mag_an_m8hc",2,
        "rhs_mag_m18_green",2,
        "rhs_mag_m18_red",2,

        "UGL_FlareCIR_F",

        "Chemlight_green",2,
        "ACE_Chemlight_HiRed",2
    };
    items[] = {
        // Medical Equipment
        "ACE_quikclot",35,
        "ACE_morphine",10,

        // Standard
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        "ACE_Flashlight_MX991",      

        // Electronics
        "ACE_IR_Strobe_Item",

        //Tools
        "ToolKit"
    };
    
    gps[] = {"itemAndroid"};
    nvgs[] = {"rhsusf_ANPVS_15"};
};
class CAV_TankLoader : CommonBlufor {               // Tank Loader
    backpack[] = {"B_AssaultPack_cbr"};
    goggles[] = {"G_Lowprofile"};
    headgear[] = {"rhsusf_cvc_green_helmet"};
    headgear[] = {"H_HelmetCrew_I"};
    vest[] = {"rhsusf_iotv_ocp_Repair"};

    primary[] = {"rhs_weap_m4a1_carryhandle","rhsusf_acc_anpeq15side","rhsusf_acc_ACOG3"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",6,

        "rhs_mag_m67",2,

        "rhs_mag_an_m8hc",2,
        "rhs_mag_m18_green",2,
        "rhs_mag_m18_red",2,

        "UGL_FlareCIR_F",
        
        "Chemlight_green",2,
        "ACE_Chemlight_HiRed",2
    };
    items[] = {
        // Medical Equipment
        "ACE_quikclot",30,
        "ACE_morphine",15,
        "ACE_personalAidKit",2,
        
        // Standard
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        "ACE_Flashlight_MX991",        

        // Electronics
        "ACE_IR_Strobe_Item",
    };
    
    gps[] = {"itemAndroid"};
    nvgs[] = {"rhsusf_ANPVS_15"};
};

class CAV_HeloPilot : CommonBlufor {                // Helo Pilot
    headgear[] = {"H_PilotHelmetHeli_B"};
    vest[] = {"rhsusf_iotv_ocp_Rifleman"};

    primary[] = {"rhs_weap_m4a1_carryhandle","RH_ta31rmr"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",6,

        "rhs_mag_m67",2,

        "rhs_mag_an_m8hc",7,
        "rhs_mag_m18_red",2,
        "rhs_mag_m18_green",2,
        "rhs_mag_m18_yellow",2,

        "Chemlight_red",2,
        "Chemlight_blue",2
    };
    items[] = {
        // Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",
        
        // Standard
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        "ACE_CableTie",2,
        
        // Electronics
        "ACE_microDAGR",
        "ACE_IR_Strobe_Item"
    };
    
    gps[] = {"ItemAndroid"};
    nvgs[] = {"rhsusf_ANPVS_15"};
};

class CAV_FixedPilot : CommonBlufor {				// Fixed Wing Pilot
    backpack[] = {""}; 						// must have access to tf_rt1523g
    uniform[] = {"U_B_PilotCoveralls"};
    headgear[] = {"RHS_jetpilot_usaf"};
    vest[] = {"V_TacVest_blk"};
	
    primary[] = {"rhs_weap_mk18_bk"};
	
    binoculars[] = {"ACE_Vector"};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",2,

        "rhs_mag_m18_purple",2,
        "rhs_mag_m18_green",2,
        "rhs_mag_m18_yellow",2
    };
    items[] = {
        // Medical Equipment
        "ACE_epinephrine",2,
        "ACE_morphine",2,
        "ACE_quikclot",10,
        "ACE_tourniquet",
        
        // Standard
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        
        // Electronics
        "ItemWatch",
        "ACE_IR_Strobe_Item",
        "ACE_Flashlight_MX991"
    };
    
    gps[] = {"ItemAndroid"};
    nvgs[] = {""};
};
