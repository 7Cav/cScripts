
//                B R A V O   C O M P A N Y

class Cav_B_B_PlatoonSergeant_2_5_F : Cav_B_B_PlatoonSergeant_F {};
class Cav_B_B_PlatoonLeader_2_6_F : Cav_B_B_PlatoonLeader_F {};
class Cav_B_B_PlatoonMedic_2_7_F : Cav_B_B_PlatoonMedic_F {};
class Cav_B_Bravo_Scout_PlatoonSergeant_L_4_F : Cav_B_Bravo_Scout_PlatoonSergeant_F {};
class Cav_B_Bravo_Scout_PlatoonLeader_L_1_F : Cav_B_Bravo_Scout_PlatoonLeader_F {};

class Cav_B_B_SquadLeader_1_1_F : Cav_B_B_SquadLeader_F {};
class Cav_B_B_SquadLeader_1_2_F : Cav_B_B_SquadLeader_F {};
class Cav_B_B_SquadLeader_1_3_F : Cav_B_B_SquadLeader_F {};
class Cav_B_B_SquadLeader_1_4_F : Cav_B_B_SquadLeader_F {};

class Cav_B_B_SquadLeader_2_1_F : Cav_B_B_SquadLeader_F {};
class Cav_B_B_SquadLeader_2_2_F : Cav_B_B_SquadLeader_F {};
class Cav_B_B_SquadLeader_2_3_F : Cav_B_B_SquadLeader_F {};
class Cav_B_B_SquadLeader_2_4_F : Cav_B_B_SquadLeader_F {};

class Cav_B_Bravo_Scout_Dismount_3_1_F: Cav_B_Bravo_Scout_Infantry_F {};
class Cav_B_Bravo_Scout_Dismount_3_2_F: Cav_B_Bravo_Scout_Infantry_F {};
class Cav_B_Bravo_Scout_Dismount_3_3_F: Cav_B_Bravo_Scout_Infantry_F {};
class Cav_B_Bravo_Scout_Dismount_3_4_F: Cav_B_Bravo_Scout_Infantry_F {};

class Cav_B_B_Tank_Commander_Saber_1_F : Cav_B_B_Tank_Commander_F {};
class Cav_B_B_Tank_Commander_Saber_2_F : Cav_B_B_Tank_Commander_F {};
class Cav_B_B_Tank_Commander_Saber_3_F : Cav_B_B_Tank_Commander_F {};
class Cav_B_B_Tank_Commander_Saber_4_F : Cav_B_B_Tank_Commander_F {};

class Cav_B_B_Ifv_Commander_B_1_F : Cav_B_B_Ifv_Commander_F {};
class Cav_B_B_Ifv_Commander_B_2_F : Cav_B_B_Ifv_Commander_F {};
class Cav_B_B_Ifv_Commander_B_3_F : Cav_B_B_Ifv_Commander_F {};
class Cav_B_B_Ifv_Commander_B_4_F : Cav_B_B_Ifv_Commander_F {};
class Cav_B_Bravo_Scout_VicCommander_L_2_F : Cav_B_Bravo_Scout_VC_F {};
class Cav_B_Bravo_Scout_VicCommander_L_3_F : Cav_B_Bravo_Scout_VC_F {};

class Cav_B_B_TeamLeader_Mustang_1_F : Cav_B_B_TeamLeader_Mustang_F {};
class Cav_B_B_TeamLeader_Mustang_2_F : Cav_B_B_TeamLeader_Mustang_F {};

class Cav_B_B_LogisticsOpsOfficer_Apollo_6_F : Cav_B_B_LogisticsOpsOfficer_F {};
class Cav_B_B_LogisticsOpsNCO_Apollo_5_F : Cav_B_B_LogisticsOpsNCO_F {};
class Cav_B_B_LogisticTeamLeader_Apollo_1_F : Cav_B_B_LogisticTeamLeader_F {};
class Cav_B_B_LogisticTeamLeader_Apollo_2_F : Cav_B_B_LogisticTeamLeader_F {};


//                L E G A C Y
//                Saved for backwards compability

// Old class definitions to New class definition
class CAV_Bravo_OFFCR : Cav_B_B_PlatoonSergeant_F {};
class CAV_Bravo_Crew_CDR : Cav_B_B_Tank_Driver_F {};
class CAV_Bravo_Crew_GNR : Cav_B_B_Tank_Gunner_F {};
class CAV_Bravo_Crew_CREW : Cav_B_B_Ifv_Driver_F {};

class CAV_Bravo_SL : Cav_B_B_SquadLeader_F {};
class CAV_Bravo_TL : Cav_B_B_Alpha_FireTeamLeader_F {};
class CAV_Bravo_AR : Cav_B_B_Alpha_AutomaticRifleman_F {};
class CAV_Bravo_GR : Cav_B_B_Alpha_Grenadier_F {};
class CAV_Bravo_RM : Cav_B_B_Alpha_Rifleman_F {};
class CAV_Bravo_CLS : Cav_B_B_Alpha_CombatLifeSaver_F {};

class CAV_Bravo_Weapons_TL : Cav_B_C_Weap_Alpha_FireTeamLeader_F {};
class CAV_Bravo_Weapons_MG : Cav_B_C_Weap_Alpha_AutomaticRifleman_F {};
class CAV_Bravo_Weapons_GNR : Cav_B_C_Weap_Alpha_Rifleman_F {};

class CAV_Medical_OFFCR : Cav_B_B_TeamLeader_Mustang_F {};
class CAV_Medical_BONESAW : Cav_B_B_Mustang_CombatMedic_F {};
class CAV_Medical_PLMEDIC : Cav_B_B_PlatoonMedic_F {};

// Older class structure
class CAV_LOGI_OFFCR : Cav_B_B_LogisticsOpsOfficer_F {};
class CAV_LOGI_TL : Cav_B_B_LogisticTeamLeader_F {};
class CAV_LOGI_GR : Cav_B_B_LogisticsTeamMember_F {};
class CAV_LOGI_MG : CAV_LOGI_GR {};

class rhsusf_army_ocp_officer : CAV_Bravo_OFFCR {};
class rhsusf_army_ocp_combatcrewman : CAV_Bravo_Crew_CDR {};
class rhsusf_army_ocp_crewman : CAV_Bravo_Crew_GNR {};
class rhsusf_army_ocp_driver : CAV_Bravo_Crew_CREW {};

class rhsusf_army_ocp_squadleader : CAV_Bravo_SL {};
class rhsusf_army_ocp_teamleader : CAV_Bravo_TL {};
class rhsusf_army_ocp_autorifleman : CAV_Bravo_AR {};
class rhsusf_army_ocp_grenadier : CAV_Bravo_GR {};
class rhsusf_army_ocp_rifleman : CAV_Bravo_RM {};
class rhsusf_army_ocp_medic : CAV_Bravo_CLS {};

class rhsusf_army_ocp_machinegunnera : CAV_Bravo_Weapons_TL {};
class rhsusf_army_ocp_machinegunner : CAV_Bravo_Weapons_MG {};
class rhsusf_army_ocp_javelin : CAV_Bravo_Weapons_GNR {};

class rhsusf_usmc_marpat_wd_engineer : CAV_LOGI_OFFCR {};
class rhsusf_usmc_marpat_wd_rifleman_m590 : CAV_LOGI_TL {};
class rhsusf_usmc_marpat_wd_grenadier : CAV_LOGI_GR {};
class rhsusf_usmc_marpat_wd_machinegunner : CAV_LOGI_MG {};

class B_medic_F : CAV_Medical_OFFCR {};
class rhsusf_navy_marpat_wd_medic : CAV_Medical_BONESAW {};
class rhsusf_navy_marpat_d_medic : CAV_Medical_PLMEDIC {};
