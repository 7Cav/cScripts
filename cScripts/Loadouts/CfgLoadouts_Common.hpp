class CommonBlufor {
    //regiment = "";
    //company = "";
    //platoon = -1;
    //loadout = [[],[],[],[],[],[],"","",[],["","","","","",""]];
    //insignia = "";

    //abilityMedic = -1;
    //abilityEngineer = -1;
    //abilityEOD = -1;

    //preLoadout = "";
    //postLoadout = "";
};
class Cav_B_Seventh_Cavalry_Base_F : CommonBlufor {
    regiment = "7th Cavalry";
};
class Cav_B_Alpha_base_F : Cav_B_Seventh_Cavalry_Base_F {
    company = "alpha";
    loadout = [[],[],[],["rhs_uniform_cu_ocp_1stcav",[["ACE_MapTools",1],["ACE_fieldDressing",1]]],["rhsusf_iotv_ocp",[["ACRE_PRC343",1]]],[],"rhsusf_patrolcap_ocp","",[],["","","","","",""]];
    insignia= "cav_insignia_specialized_pegasus";

    preLoadout = "";
    postLoadout = "";
};

class Cav_B_Bravo_base_F : Cav_B_Seventh_Cavalry_Base_F {
    company = "bravo";
    insignia = "";
    loadout = [[],[],[],["rhs_uniform_cu_ocp_1stcav",[["ACE_MapTools",1],["ACE_fieldDressing",1]]],["rhsusf_iotv_ocp",[["ACRE_PRC343",1]]],[],"rhsusf_patrolcap_ocp","",[],["","","","","",""]];

    preLoadout = "";
    postLoadout = "";
};

class Cav_B_Charlie_base_F : Cav_B_Seventh_Cavalry_Base_F {
    company = "charlie";
    insignia = "";
    loadout = [[],[],[],["rhs_uniform_cu_ocp_1stcav",[["ACE_MapTools",1],["ACE_fieldDressing",1]]],["rhsusf_iotv_ocp",[["ACRE_PRC343",1]]],[],"rhsusf_patrolcap_ocp","",[],["","","","","",""]];

    preLoadout = "";
    postLoadout = "";
};
