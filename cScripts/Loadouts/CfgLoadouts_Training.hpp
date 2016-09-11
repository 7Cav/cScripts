class CAV_Cadre : CommonBlufor {                            // CADRE
    uniform[] 		= {"rhs_uniform_cu_ocp_1stcav"};
	vest[] 			= {"rhsusf_iotv_ocp_Squadleader"};
    headgear[] 		= {"rhsusf_ach_helmet_headset_ocp"};
	goggles[] 		= {""};
    nvgs[] 			= {""};
	backpack[] 		= {""};
	magazines[] 	= {
        MAG_PRIMARY, 2,
        GRENADE
    };

};
    
class CAV_DrillInstructor : CommonBlufor {                  // DRILL INSTRUCTOR
    uniform[]       = {"rhs_uniform_cu_ocp_1stcav"};
    vest[]          = {"V_BandollierB_rgr"};
    headgear[]      = {"H_Booniehat_mcamo"};
	goggles[] 		= {""};
	nvgs[] 			= {""};
	magazines[] = {
        MAG_PRIMARY_TRACER, 2,
        GRENADE
    };
       
};

class CAV_Trooper : CommonBlufor {                          // Trooper
    uniform[]       = {"rhs_uniform_cu_ocp_1stcav"};
    vest[]          = {"rhsusf_iotv_ocp_Rifleman"};
    headgear[]      = {"rhsusf_ach_helmet_ocp"};
	nvgs[] 			= {""};
    backpack[]      = {"rhsusf_assault_eagleaiii_ocp"};
    magazines[] = {
        MAG_PRIMARY_TRACER, 2,        
		GRENADE, 6
    };
    
};
