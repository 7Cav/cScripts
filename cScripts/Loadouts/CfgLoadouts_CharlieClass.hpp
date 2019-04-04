
//                C H A R L I E   C O M P A N Y

class Cav_B_C_PlatoonSergeant_Bandit_5_F : Cav_B_C_PlatoonSergeant_F {};
class Cav_B_C_PlatoonLeader_Bandit_6_F : Cav_B_C_PlatoonLeader_F {};
class Cav_B_C_PlatoonMedic_Bandit_7_F : Cav_B_C_PlatoonMedic_F {};

class Cav_B_C_SquadLeader_Bandit_1_F : Cav_B_C_SquadLeader_F {};
class Cav_B_C_SquadLeader_Bandit_2_F : Cav_B_C_SquadLeader_F {};
class Cav_B_C_SquadLeader_Bandit_3_F : Cav_B_C_SquadLeader_F {};
class Cav_B_C_SquadLeader_Bandit_4_F : Cav_B_C_SquadLeader_F {};


class Cav_B_C_PlatoonSergeant_Misfit_5_F : Cav_B_C_PlatoonSergeant_F {};
class Cav_B_C_PlatoonLeader_Misfit_6_F : Cav_B_C_PlatoonLeader_F {};
class Cav_B_C_PlatoonMedic_Misfit_7_F : Cav_B_C_PlatoonMedic_F {};

class Cav_B_C_SquadLeader_Misfit_1_F : Cav_B_C_SquadLeader_F {};
class Cav_B_C_SquadLeader_Misfit_2_F : Cav_B_C_SquadLeader_F {};
class Cav_B_C_SquadLeader_Misfit_3_F : Cav_B_C_SquadLeader_F {};
class Cav_B_C_SquadLeader_Misfit_4_F : Cav_B_C_SquadLeader_F {};

class Cav_B_C_Weap_SquadLeader_Havoc_1_F : Cav_B_C_Weap_SquadLeader_F {};


//                L E G A C Y
//                Saved for backwards compability

// Old class definitions to New class definition
class CAV_Charlie_OFFCR : Cav_B_C_PlatoonSergeant_F {};
class CAV_Charlie_JFO : Cav_B_C_PlatoonSergeant_F {};

class CAV_Charlie_SL : Cav_B_Charlie_base_F {};
class CAV_Charlie_TL : Cav_B_C_Alpha_FireTeamLeader_F {};
class CAV_Charlie_AR : Cav_B_C_Alpha_AutomaticRifleman_F {};
class CAV_Charlie_GR : Cav_B_C_Alpha_Grenadier_F {};
class CAV_Charlie_RM : Cav_B_C_Alpha_Rifleman_F {};
class CAV_Charlie_CLS : Cav_B_C_Alpha_CombatLifeSaver_F {};

class CAV_Charlie_Weapons_SL : Cav_B_C_Weap_SquadLeader_F {};
class CAV_Charlie_Weapons_TL : Cav_B_C_Weap_Alpha_FireTeamLeader_F {};
class CAV_Charlie_Weapons_AR : Cav_B_C_Weap_Alpha_AutomaticRifleman_F {};
class CAV_Charlie_Weapons_GR : Cav_B_C_Weap_Alpha_Grenadier_F {};
class CAV_Charlie_Weapons_RM : Cav_B_C_Weap_Alpha_Rifleman_F {};
class CAV_Charlie_Weapons_CLS : Cav_B_C_Weap_Alpha_CombatLifeSaver_F {};


// Older class structure
class rhsusf_army_ocp_arb_riflemanl : CAV_Charlie_OFFCR {};
class rhsusf_army_ocp_jfo : CAV_Charlie_JFO {};
class rhsusf_army_ocp_arb_squadleader : CAV_Charlie_SL {};
class rhsusf_army_ocp_arb_teamleader : CAV_Charlie_TL {};
class rhsusf_army_ocp_arb_autorifleman : CAV_Charlie_AR {};
class rhsusf_army_ocp_arb_grenadier : CAV_Charlie_GR {};
class rhsusf_army_ocp_arb_rifleman : CAV_Charlie_RM {};
class rhsusf_army_ocp_arb_medic : CAV_Charlie_CLS {};

class B_T_Soldier_SL_F : CAV_Charlie_Weapons_SL {};
class B_T_Soldier_TL_F : CAV_Charlie_Weapons_TL {};
class B_T_Engineer_F : CAV_Charlie_Weapons_AR {};
class B_T_Soldier_Repair_F : CAV_Charlie_Weapons_GR {};
class B_T_soldier_mine_F : CAV_Charlie_Weapons_RM {};
class B_T_Soldier_Exp_F : CAV_Charlie_Weapons_CLS {};
