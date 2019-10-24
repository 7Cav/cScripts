#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function contain quick selection buttons and categorys via the arsenal menu.
 * The crates can be filterd via squad, platoon or just ignore filters and write "all".
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Selection type <SIZE> ["none","all","officer","alpha","bravo","charlie","ranger" and Squad Names etc...]
 * 2: Require correct company to select loadout. <BOOL> (default: true)
 *
 * Example:
 * [this] call cScripts_fnc_initQuickSelections;
 * [this,"full",true] call cScripts_fnc_initQuickSelections;
 */
params [
    ["_object", objNull, [objNull]],
    ["_companySelectorType", "NONE"],
    ["_allowOnlyForCompany", true]
];

// Set upper case
_companySelector = toUpper(_companySelectorType);

if (_companySelector == "" OR _companySelector == "NONE") exitWith {};

#ifdef DEBUG_MODE
    [format["Setting up %1 loadouts selecton list on %2...", _companySelector, _object]] call FUNC(logInfo);
#endif

// Define the icon to be used
private _icon = "cScripts\Data\Icon\icon_01.paa";

// Create the main selection menu
[_object,"cScriptQuickSelectionMenu","Quick Selection",_icon,["ACE_MainActions"]] call FUNC(addAceCategory);


// Create categories
private _officer = ["OFFICER"];
private _alpha   = ["ALPHA", "BUFFALO", "TITAN", "RAIDER", "SPARROW"];
private _bravo   = ["BRAVO", "LANCER", "VIKING", "SABER", "BANSHEE", "APOLLO", "MUSTANG"];
private _charlie = ["CHARLIE", "BANDIT", "MISFIT"];
private _ranger  = ["RANGER", "SNIPER"];

// Full selector handler
private _alwaysAvalible = if (_companySelector == 'FULL' or _companySelector == 'ALL') then {true} else {false};

// Loadouts

//          O F F I C E R   L O A D O U T S
if (_companySelector in _officer or _alwaysAvalible) then {
    [_object,"cScriptQuickSelection_Officer", "Officers", _icon, ["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
    private _officerCoCat = ['ACE_MainActions', 'cScriptQuickSelectionMenu', 'cScriptQuickSelection_Officer'];
    
    [_object,"Air Controller", "Cav_B_A_AirController_F", "", _officerCoCat, "Officer", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Officer", "Cav_B_A_Officer_F", "", _officerCoCat, "Officer", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Joint Fires Observer", "Cav_B_A_JFO_F", "", _officerCoCat, "Officer", _allowOnlyForCompany] call FUNC(addQuickSelection);
};

//          A L P H A   C O M P A N Y   L O A D O U T S
if (_companySelector in _alpha or _alwaysAvalible) then {
    [_object,"cScriptQuickSelection_Alpha", "Alpha", _icon, ["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
    private _alphaCoCat = ['ACE_MainActions', 'cScriptQuickSelectionMenu', 'cScriptQuickSelection_Alpha'];
    
    // Loadouts
    [_object,"Rotary Pilot", "Cav_B_A_Helicopter_Tra_Pilot_F", "", _alphaCoCat, "Alpha", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Rotary CoPilot", "Cav_B_A_Helicopter_Tra_coPilot_F", "", _alphaCoCat, "Alpha", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Rotary Crew Chief", "Cav_B_A_Helicopter_Tra_CrewChief_F", "", _alphaCoCat, "Alpha", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Crew Chief M240", "Cav_B_A_Helicopter_Tra_CrewChiefM240_Local", "", _alphaCoCat, "Alpha", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Rotary Door Gunner", "Cav_B_A_Helicopter_Tra_DoorGunner_F", "", _alphaCoCat, "Alpha", _allowOnlyForCompany] call FUNC(addQuickSelection);

    [_object,"Attack Rotary Pilot", "Cav_B_A_Helicopter_Tra_DoorGunner_F", "", _alphaCoCat, "Alpha", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Attack Rotary CoPilot", "Cav_B_A_Helicopter_Att_coPilot_F", "", _alphaCoCat, "Alpha", _allowOnlyForCompany] call FUNC(addQuickSelection);

    [_object,"Fighter Pilot", "Cav_B_A_Plane_Fighter_Pilot_F", "", _alphaCoCat, "Alpha", _allowOnlyForCompany] call FUNC(addQuickSelection);

    [_object,"Fixed Wing Pilot", "Cav_B_A_Plane_Transport_Pilot_F", "", _alphaCoCat, "Alpha", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Fixed Wing CoPilot", "Cav_B_A_Plane_Transport_coPilot_F", "", _alphaCoCat, "Alpha", _allowOnlyForCompany] call FUNC(addQuickSelection);
};

//          B R A V O   C O M P A N Y   L O A D O U T S
if (_companySelector in _bravo or _alwaysAvalible) then {
    [_object,"cScriptQuickSelection_Bravo","Bravo",_icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
    private _bravoCoCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'];
    
    // Loadouts Lancer
    if (_companySelector in ['BRAVO', 'LANCER'] or _alwaysAvalible) then {
        [_object,"cScriptQuickSelection_Bravo_Lancer","Lancer",_icon,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Bravo"]] call FUNC(addAceCategory);
        private _bravoLancerCoCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo','cScriptQuickSelection_Bravo_Lancer'];

        [_object,"Platoon Sergeant", "Cav_B_B_PlatoonSergeant_F", "", _bravoLancerCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Platoon Leader", "Cav_B_B_PlatoonLeader_F", "", _bravoLancerCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Platoon Medic", "Cav_B_B_PlatoonMedic_F", "", _bravoLancerCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);

        [_object,"Squad Leader", "Cav_B_B_SquadLeader_F", "", _bravoLancerCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Fire Team Leader", "Cav_B_B_Alpha_FireTeamLeader_F", "", _bravoLancerCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Automatic Rifleman", "Cav_B_B_Alpha_AutomaticRifleman_F", "", _bravoLancerCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Grenadier", "Cav_B_B_Alpha_Grenadier_F", "", _bravoLancerCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Rifleman", "Cav_B_B_Alpha_Rifleman_F", "", _bravoLancerCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        //[_object,"Rifleman (AT)", "Cav_B_B_Alpha_RiflemanAT_F", "", _bravoLancerCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Rifleman (LAT)", "Cav_B_B_Alpha_RiflemanLAT_F", "", _bravoLancerCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Combat Life Saver", "Cav_B_B_Alpha_CombatLifeSaver_F", "", _bravoLancerCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
    };

    // Loadouts Mustang
    if (_companySelector in ['BRAVO', 'MUSTANG'] or _alwaysAvalible) then {
        [_object,"cScriptQuickSelection_Bravo_Mustang","Mustang",_icon,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Bravo"]] call FUNC(addAceCategory);
        private _bravoMustCoCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo','cScriptQuickSelection_Bravo_Mustang'];
        
        [_object,"Team Leader", "Cav_B_B_TeamLeader_Mustang_F", "", _bravoMustCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Combat Medic", "Cav_B_B_Mustang_CombatMedic_F", "", _bravoMustCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
    };

    // Loadouts Apollo
    if (_companySelector in ['BRAVO', 'APOLLO'] or _alwaysAvalible) then {
        [_object,"cScriptQuickSelection_Bravo_Apollo","Apollo",_icon,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Bravo"]] call FUNC(addAceCategory);
        private _bravoApoCoCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo','cScriptQuickSelection_Bravo_Apollo'];

        [_object,"Ops Officer", "Cav_B_B_LogisticsOpsOfficer_F", "", _bravoApoCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Ops NCO", "Cav_B_B_LogisticsOpsNCO_F", "", _bravoApoCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Team Leader", "Cav_B_B_LogisticTeamLeader_F", "", _bravoApoCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Team Member", "Cav_B_B_LogisticsTeamMember_F", "", _bravoApoCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
    };

    // Loadouts Sabre
    if (_companySelector in ['BRAVO', 'SABER'] or _alwaysAvalible) then {
        [_object,"cScriptQuickSelection_Bravo_Saber","Saber",_icon,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Bravo"]] call FUNC(addAceCategory);
        private _bravoApoCoCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo','cScriptQuickSelection_Bravo_Saber'];

        [_object,"Commander", "Cav_B_B_Tank_Commander_F", "", _bravoApoCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Driver", "Cav_B_B_Tank_Driver_F", "", _bravoApoCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Gunner", "Cav_B_B_Tank_Gunner_F", "", _bravoApoCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Loader", "Cav_B_B_Tank_Loader_F", "", _bravoApoCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
    };

    // Loadouts Banshee
    if (_companySelector in ['BRAVO', 'BANSHEE'] or _alwaysAvalible) then {
        [_object,"cScriptQuickSelection_Bravo_Banshee","Banshee",_icon,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Bravo"]] call FUNC(addAceCategory);
        private _bravoBansheeCoCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo','cScriptQuickSelection_Bravo_Banshee'];

        [_object,"Commander", "Cav_B_B_Ifv_Commander_F", "", _bravoBansheeCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Driver", "Cav_B_B_Ifv_Driver_F", "", _bravoBansheeCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Gunner", "Cav_B_B_Ifv_Gunner_F", "", _bravoBansheeCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
    };

    // Loadouts Viking
    if (_companySelector in ['BRAVO', 'VIKING'] or _alwaysAvalible) then {
        [_object,"cScriptQuickSelection_Bravo_Viking","Viking",_icon,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Bravo"]] call FUNC(addAceCategory);
        private _bravoVikingCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo','cScriptQuickSelection_Bravo_Viking'];

        [_object,"Crew", "Cav_B_B_CavScout_Crewman_Local", "", _bravoVikingCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Scout", "Cav_B_B_CavScout_Dismount_Local", "", _bravoVikingCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
    };
};

//          C H A R L I E   C O M P A N Y   L O A D O U T S
if (_companySelector in _charlie or _alwaysAvalible) then {
    [_object,"cScriptQuickSelection_Charlie","Charlie",_icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
    private _charlieCoCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'];

    // Loadouts Bandit & Misfit
    [_object,"cScriptQuickSelection_Charlie_Squad","Squad",_icon,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Charlie"]] call FUNC(addAceCategory);
    private _charlieSquadCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie','cScriptQuickSelection_Charlie_Squad'];

    [_object,"Fire Team Leader", "Cav_B_C_FireTeamLeader_F", "", _charlieSquadCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Automatic Rifleman", "Cav_B_C_AutomaticRifleman_F", "", _charlieSquadCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Grenadier", "Cav_B_C_Grenadier_F", "", _charlieSquadCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Rifleman (LAT)", "Cav_B_C_RiflemanLAT_F", "", _charlieSquadCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Designated Marksman", "Cav_B_C_Marksman_Local", "", _charlieSquadCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);

    // Squad Extra
    [_object,"Rifleman", "Cav_B_C_Rifleman_F", "", _charlieSquadCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Combat Life Saver", "Cav_B_C_Alpha_CombatLifeSaver_F", "", _charlieSquadCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);


    // Leadership
    [_object,"cScriptQuickSelection_Charlie_Lead","Leadership",_icon,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Charlie"]] call FUNC(addAceCategory);
    private _charlieLeadCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie','cScriptQuickSelection_Charlie_Lead'];

    [_object,"Company Staff", "CAV_Charlie_CompanyStaff_F", "", _charlieLeadCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);

    [_object,"Platoon Sergeant", "Cav_B_C_PlatoonSergeant_F", "", _charlieLeadCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Platoon Leader", "Cav_B_C_PlatoonLeader_F", "", _charlieLeadCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Platoon Medic", "Cav_B_C_PlatoonMedic_F", "", _charlieLeadCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);

    [_object,"Squad Leader", "Cav_B_C_SquadLeader_F", "", _charlieLeadCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);

    // MMG Team
    [_object,"cScriptQuickSelection_Charlie_MMGTeam","Stinger Team",_icon,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Charlie"]] call FUNC(addAceCategory);
    private _charlieMMGTeamCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie','cScriptQuickSelection_Charlie_MMGTeam'];
    [_object,"MMG FTL", "CAV_Charlie_Machinegunner_TeamLeader_Local", "", _charlieMMGTeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"MMG Gunner", "CAV_Charlie_Machinegunner_Local", "", _charlieMMGTeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);

    // MAAWS Team
    [_object,"cScriptQuickSelection_Charlie_ATTeam","MAAWS Team",_icon,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Charlie"]] call FUNC(addAceCategory);
    private _charlieATTeamCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie','cScriptQuickSelection_Charlie_ATTeam'];
    [_object,"MAAWS Gunner", "Cav_B_C_AT_Local", "", _charlieATTeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"MAAWS Assistant", "Cav_B_C_AAT_Local", "", _charlieATTeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);

    // AA Team
    [_object,"cScriptQuickSelection_Charlie_AATeam","Stinger Team",_icon,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Charlie"]] call FUNC(addAceCategory);
    private _charlieAATeamCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie','cScriptQuickSelection_Charlie_AATeam'];
    [_object,"Stinger Gunner", "Cav_B_C_AA_Local", "", _charlieAATeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Stinger Assistant", "Cav_B_C_AAA_Local", "", _charlieAATeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);

    // MK19 Team
    [_object,"cScriptQuickSelection_Charlie_MK19Team","MK19 Team",_icon,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Charlie"]] call FUNC(addAceCategory);
    private _charlieMK19TeamCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie','cScriptQuickSelection_Charlie_MK19Team'];
    [_object,"Mk.19 FTL", "Cav_B_C_Support_MK19_TeamLeader_Local", "", _charlieMK19TeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Mk.19 Gun", "Cav_B_C_Support_MK19_Gunner_Local", "", _charlieMK19TeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Mk.19 Tri", "Cav_B_C_Support_MK19_Assistant_Local", "", _charlieMK19TeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);

    // Mortar Team
    [_object,"cScriptQuickSelection_Charlie_MortarTeam","Mortar Team",_icon,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Charlie"]] call FUNC(addAceCategory);
    private _charlieMortarTeamCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie','cScriptQuickSelection_Charlie_MortarTeam'];
    [_object,"Mortar AR", "Cav_B_C_Support_Mortar_AutomaticRifleman_Local", "", _charlieMortarTeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Mortar FTL", "Cav_B_C_Support_Mortar_TeamLeader_Local", "", _charlieMortarTeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Mortar Gunner", "Cav_B_C_Support_Mortar_Gunner_Local", "", _charlieMortarTeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Mortar SL", "Cav_B_C_Support_Mortar_SquadLeader_Local", "", _charlieMortarTeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
};

//          R A N G E R   C O M P A N Y   L O A D O U T S
if (_companySelector in _ranger or _alwaysAvalible) then {
    [_object,"cScriptQuickSelection_Ranger","Ranger",_icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
    private _charlieCoCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger'];

    // Loadouts Ranger
    [_object,"cScriptQuickSelection_Ranger_Squad","Ranger",_icon,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Ranger"]] call FUNC(addAceCategory);
    private _rangerSquadCoCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger','cScriptQuickSelection_Ranger_Squad'];

    [_object,"Roughneck-6", "rhsusf_socom_marsoc_elementleader", "", _rangerSquadCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Roughneck-5", "rhsusf_socom_marsoc_teamchief", "", _rangerSquadCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    
    [_object,"Team Leader", "rhsusf_socom_marsoc_teamleader", "", _rangerSquadCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Automatic Rifleman", "rhsusf_socom_marsoc_cso_mechanic", "", _rangerSquadCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Grenadier", "rhsusf_socom_marsoc_cso_grenadier", "", _rangerSquadCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Rifleman", "rhsusf_socom_marsoc_cso", "", _rangerSquadCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Medic", "rhsusf_socom_marsoc_sarc", "", _rangerSquadCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    
    // Loadouts Sniper
    [_object,"cScriptQuickSelection_Ranger_Sniper","Sniper",_icon,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Ranger"]] call FUNC(addAceCategory);
    private _rangerSniperCoCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger','cScriptQuickSelection_Ranger_Sniper'];

    [_object,"Sniper", "B_sniper_F", "", _rangerSniperCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Sniper Arid", "B_ghillie_ard_F", "", _rangerSniperCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Sniper Jungle", "B_T_ghillie_tna_F", "", _rangerSniperCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Sniper Lush", "B_ghillie_lsh_F", "", _rangerSniperCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Sniper Semi-Arid", "B_ghillie_sard_F", "", _rangerSniperCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Spotter", "B_spotter_F", "", _rangerSniperCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Spotter Arid", "B_CTRG_soldier_engineer_exp_F", "", _rangerSniperCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Spotter Jungle", "B_CTRG_soldier_M_medic_F", "", _rangerSniperCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Spotter Lush", "B_Captain_Jay_F", "", _rangerSniperCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Spotter Semi-Arid", "B_Story_Protagonist_F", "", _rangerSniperCoCat, "Ranger", _allowOnlyForCompany] call FUNC(addQuickSelection);
};

#ifdef DEBUG_MODE
    [format["Setup of %1 loadouts selecton list on %2 is completed.", _companySelector, _object]] call FUNC(logInfo);
#endif
