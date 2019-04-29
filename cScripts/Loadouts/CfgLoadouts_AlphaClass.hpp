
//                A L P H A   C O M P A N Y

class Cav_B_A_AirController_Pegasus_1_F : Cav_B_A_AirController_F {};
class Cav_B_A_AirController_Pegasus_2_F : Cav_B_A_AirController_F {};

class Cav_B_A_JFO_Infidel_1_F  : Cav_B_A_JFO_F {};
class Cav_B_A_JFO_Infidel_2_F : Cav_B_A_JFO_F {};


class Cav_B_A_Helicopter_Tra_Pilot_B1_F : Cav_B_A_Helicopter_Tra_Pilot_F {};
class Cav_B_A_Helicopter_Tra_Pilot_B2_F : Cav_B_A_Helicopter_Tra_Pilot_F {};
class Cav_B_A_Helicopter_Tra_Pilot_B3_F : Cav_B_A_Helicopter_Tra_Pilot_F {};
class Cav_B_A_Helicopter_Tra_Pilot_B4_F : Cav_B_A_Helicopter_Tra_Pilot_F {};
class Cav_B_A_Helicopter_Tra_Pilot_B5_F : Cav_B_A_Helicopter_Tra_Pilot_F {};
class Cav_B_A_Helicopter_Tra_Pilot_B6_F : Cav_B_A_Helicopter_Tra_Pilot_F {};

class Cav_B_A_Helicopter_Att_Pilot_Raider_1_F : Cav_B_A_Helicopter_Att_Pilot_F {};
class Cav_B_A_Helicopter_Att_Pilot_Raider_2_F : Cav_B_A_Helicopter_Att_Pilot_F {};
class Cav_B_A_Helicopter_Att_Pilot_Raider_3_F : Cav_B_A_Helicopter_Att_Pilot_F {};
class Cav_B_A_Helicopter_Att_Pilot_Raider_4_F : Cav_B_A_Helicopter_Att_Pilot_F {};
class Cav_B_A_Helicopter_Att_Pilot_Raven_1_F : Cav_B_A_Helicopter_Att_Pilot_F {};
class Cav_B_A_Helicopter_Att_Pilot_Raven_2_F : Cav_B_A_Helicopter_Att_Pilot_F {};
class Cav_B_A_Helicopter_Att_Pilot_Raven_3_F : Cav_B_A_Helicopter_Att_Pilot_F {};
class Cav_B_A_Helicopter_Att_Pilot_Raven_4_F : Cav_B_A_Helicopter_Att_Pilot_F {};

class Cav_B_A_Plane_Fighter_Pilot_Hog_1_F : Cav_B_A_Plane_Transport_Pilot_F {};
class Cav_B_A_Plane_Fighter_Pilot_Hog_2_F : Cav_B_A_Plane_Transport_Pilot_F {};
class Cav_B_A_Plane_Fighter_Pilot_Hog_3_F : Cav_B_A_Plane_Transport_Pilot_F {};
class Cav_B_A_Plane_Fighter_Pilot_Hog_4_F : Cav_B_A_Plane_Transport_Pilot_F {};
class Cav_B_A_Plane_Fighter_Pilot_Hog_5_F : Cav_B_A_Plane_Transport_Pilot_F {};
class Cav_B_A_Plane_Fighter_Pilot_Hog_6_F : Cav_B_A_Plane_Transport_Pilot_F {};
class Cav_B_A_Plane_Fighter_Pilot_Hog_7_F : Cav_B_A_Plane_Transport_Pilot_F {};
class Cav_B_A_Plane_Fighter_Pilot_Hog_8_F : Cav_B_A_Plane_Transport_Pilot_F {};
class Cav_B_A_Plane_Fighter_Pilot_Hog_9_F : Cav_B_A_Plane_Transport_Pilot_F {};

class Cav_B_A_Plane_Transport_Pilot_Titan_1_F : Cav_B_A_Plane_Transport_Pilot_F {};
class Cav_B_A_Plane_Transport_Pilot_Titan_2_F : Cav_B_A_Plane_Transport_Pilot_F {};
class Cav_B_A_Plane_Transport_Pilot_Titan_3_F : Cav_B_A_Plane_Transport_Pilot_F {};
class Cav_B_A_Plane_Transport_Pilot_Titan_4_F : Cav_B_A_Plane_Transport_Pilot_F {};


//                L E G A C Y
//                Saved for backwards compability

// Old class definitions to New class definition
class CAV_Alpha_Helo_PILOT : Cav_B_A_Helicopter_Tra_Pilot_F {};
class CAV_Alpha_Helo_COPILOT : Cav_B_A_Helicopter_Tra_coPilot_F {};
class CAV_Alpha_Helo_CHIEF : Cav_B_A_Helicopter_Tra_CrewChief_F {};
class CAV_Alpha_Helo_GNR : Cav_B_A_Helicopter_Tra_DoorGunner_F {};
class CAV_Alpha_Helo_PILOT_ATT : Cav_B_A_Helicopter_Att_Pilot_F {};
class CAV_Alpha_Fixed_PILOT : Cav_B_A_Plane_Fighter_Pilot_F {};


// Older class structure
class B_Helipilot_F : CAV_Alpha_Helo_PILOT {};
class rhsusf_army_ocp_helipilot : CAV_Alpha_Helo_COPILOT {};
class B_T_Helicrew_F : CAV_Alpha_Helo_CHIEF {};
class B_Helicrew_F : CAV_Alpha_Helo_GNR {};
class rhsusf_army_ocp_helicrew : Cav_B_A_Helicopter_Tra_CrewChiefM240_Local {};

class B_T_Helipilot_F : CAV_Alpha_Helo_PILOT_ATT {};

class B_Fighter_Pilot_F : CAV_Alpha_Fixed_PILOT {};
