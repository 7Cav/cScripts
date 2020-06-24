#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function contain quick selection buttons and categorys via the arsenal menu.
 * The crates can be filterd via squad, platoon or just ignore filters and write "all".
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Selection type <SIZE> ["none","all","officer","alpha","bravo","charlie"]
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
    [format["Setting up %1 loadouts selecton list on %2...", _companySelector, _object], "Quick Selection"] call FUNC(logInfo);
#endif

// Define the icon to be used
private _icon = "cScripts\Data\Icon\icon_01.paa";

// Create the main selection menu
[_object,"cScriptQuickSelectionMenu","Quick Selection",_icon,["ACE_MainActions"]] call FUNC(addAceCategory);


// Create categories
private _officer = ["OFFICER"];
private _alpha   = ["ALPHA", "BUFFALO", "TITAN", "RAIDER", "SPARROW"];
private _bravo   = ["BRAVO", "LANCER", "VIKING", "SABER", "BANSHEE", "ATLAS"];
private _charlie = ["CHARLIE", "BANDIT", "MISFIT"];

if !(_companySelector in (["NONE", "FULL", "ALL"] + _officer + _alpha + _bravo + _charlie)) exitWith {
    [formatText["%1 is using a unsupported cartegory '%2'.", _object, _companySelector],"Quick Selection",true] call FUNC(logError);
};

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

        [_object,"Platoon Leader", "Cav_B_B_PlatoonStaff_F", "", _bravoLancerCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Platoon Sergeant", "Cav_B_B_PlatoonStaff_F", "", _bravoLancerCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Platoon Medic", "Cav_B_B_PlatoonMedic_F", "", _bravoLancerCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);

        [_object,"Squad Leader", "Cav_B_B_SquadLeader_F", "", _bravoLancerCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Fire Team Leader", "Cav_B_B_FireTeamLeader_F", "", _bravoLancerCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Automatic Rifleman", "Cav_B_B_AutomaticRifleman_F", "", _bravoLancerCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Grenadier", "Cav_B_B_Grenadier_F", "", _bravoLancerCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Rifleman", "Cav_B_B_Rifleman_F", "", _bravoLancerCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        //[_object,"Rifleman (AT)", "Cav_B_B_Alpha_RiflemanAT_F", "", _bravoLancerCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        //[_object,"Rifleman (LAT)", "Cav_B_B_RiflemanLAT_F", "", _bravoLancerCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Combat Life Saver", "Cav_B_B_CombatLifeSaver_F", "", _bravoLancerCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);

        [_object,"MMG Team Leader", "Cav_B_B_MMGFireTeamLeader_Local", "", _bravoLancerCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"MMG Gunner", "Cav_B_B_MMGMachineGunner_Local", "", _bravoLancerCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"MMG Assistant Gunner", "Cav_B_C_MMGAssistantGunner_Local", "", _bravoLancerCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
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

        [_object,"Platoon Leader", "Cav_B_B_Scout_PlatoonLead_F", "", _bravoVikingCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Squad Leader", "Cav_B_B_Scout_SquadLeader_F", "", _bravoVikingCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Team Leader (M320)", "Cav_B_B_Scout_TeamLead_320_F", "", _bravoVikingCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Team Leader", "Cav_B_B_Scout_TeamLead_F", "", _bravoVikingCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Automatic Rifleman", "Cav_B_B_Scout_AutomaticRifleman_F", "", _bravoVikingCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Grenadier", "Cav_B_B_Scout_Grenadier_F", "", _bravoVikingCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Rifleman", "Cav_B_B_Scout_Rifleman_F", "", _bravoVikingCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Combat Lifesaver", "Cav_B_B_Scout_CombatLifeSaver_F", "", _bravoVikingCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Crewman/UAV Operator", "Cav_B_B_Scout_Crew_F", "", _bravoVikingCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
    };

    // Loadouts Atlas
    if (_companySelector in ['BRAVO', 'ATLAS'] or _alwaysAvalible) then {
        [_object,"cScriptQuickSelection_Bravo_Atlas","Atlas",_icon,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Bravo"]] call FUNC(addAceCategory);
        private _bravoAtlasCoCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo','cScriptQuickSelection_Bravo_Atlas'];

        [_object,"Medical Team Leader", "Cav_B_B_Atlas_Medic_TeamLeader_F", "", _bravoAtlasCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Combat Medic", "Cav_B_B_Atlas_Medic_CombatMedic_F", "", _bravoAtlasCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);

        [_object,"Ops Officer", "Cav_B_B_Atlas_Logistics_OpsOfficer_F", "", _bravoAtlasCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Ops NCO", "Cav_B_B_Atlas_Logistics_OpsNCO_F", "", _bravoAtlasCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);

        [_object,"Logistical Team Leader", "Cav_B_B_Atlas_Logistics_TeamLeader_F", "", _bravoAtlasCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
        [_object,"Logistical Team Member", "Cav_B_B_Atlas_Logistics_TeamMember_F", "", _bravoAtlasCoCat, "Bravo", _allowOnlyForCompany] call FUNC(addQuickSelection);
    };
};

//          C H A R L I E   C O M P A N Y   L O A D O U T S
if (_companySelector in _charlie or _alwaysAvalible) then {
    [_object,"cScriptQuickSelection_Charlie","Charlie",_icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
    private _charlieCoCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'];

    // Leadership
    [_object,"cScriptQuickSelection_Charlie_Lead","Leadership",_icon,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Charlie"]] call FUNC(addAceCategory);
    private _charlieLeadCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie','cScriptQuickSelection_Charlie_Lead'];

    [_object,"Platoon Staff", "Cav_B_C_PlatoonStaff_F", "", _charlieLeadCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Platoon Medic", "Cav_B_C_PlatoonMedic_F", "", _charlieLeadCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Squad Leader", "Cav_B_C_SquadLeader_F", "", _charlieLeadCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Fire Team Leader", "Cav_B_C_FireTeamLeader_F", "", _charlieLeadCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);


    // Squad
    [_object,"cScriptQuickSelection_Charlie_Squad","Squad",_icon,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Charlie"]] call FUNC(addAceCategory);
    private _charlieSquadCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie','cScriptQuickSelection_Charlie_Squad'];
    
    [_object,"Automatic Rifleman", "Cav_B_C_AutomaticRifleman_F", "", _charlieSquadCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Grenadier", "Cav_B_C_Grenadier_F", "", _charlieSquadCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Rifleman", "Cav_B_C_Rifleman_F", "", _charlieSquadCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Combat Life Saver", "Cav_B_C_CombatLifeSaver_F", "", _charlieSquadCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    //[_object,"Marksman", "Cav_B_C_Marksman_F", "", _charlieSquadCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Crew", "Cav_B_C_Crew_F", "", _charlieSquadCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);


    // MMG Team
    [_object,"cScriptQuickSelection_Charlie_MMGTeam","MMG Team",_icon,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Charlie"]] call FUNC(addAceCategory);
    private _charlieMMGTeamCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie','cScriptQuickSelection_Charlie_MMGTeam'];
    
    [_object,"MMG Team Leader", "Cav_B_C_MMGFireTeamLeader_F", "", _charlieMMGTeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"MMG Gunner", "Cav_B_C_MMGMachineGunner_F", "", _charlieMMGTeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Grenadier", "Cav_B_C_Grenadier_F", "", _charlieMMGTeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"MMG Assistant Gunner", "Cav_B_C_MMGAssistantGunner_F", "", _charlieMMGTeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);


    // MAAWS Team
    [_object,"cScriptQuickSelection_Charlie_ATTeam","MAAWS Team",_icon,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Charlie"]] call FUNC(addAceCategory);
    private _charlieATTeamCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie','cScriptQuickSelection_Charlie_ATTeam'];
    
    [_object,"MAAWS Team Leader", "Cav_B_C_SLMFireTeamLeader_F", "", _charlieATTeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Automatic Rifleman", "Cav_B_C_AutomaticRifleman_F", "", _charlieATTeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"MAAWS Gunner", "Cav_B_C_SLMGunner_F", "", _charlieATTeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"MAAWS Ammo Bearer", "Cav_B_C_SLMAmmoBearer_F", "", _charlieATTeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    

    // AA Team
    [_object,"cScriptQuickSelection_Charlie_AATeam","Stinger Team",_icon,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Charlie"]] call FUNC(addAceCategory);
    private _charlieAATeamCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie','cScriptQuickSelection_Charlie_AATeam'];
    
    [_object,"Stinger Team Leader", "Cav_B_C_FIMFireTeamLeader_F", "", _charlieAATeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Automatic Rifleman", "Cav_B_C_AutomaticRifleman_F", "", _charlieAATeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Stinger Gunner", "Cav_B_C_FIMGunner_F", "", _charlieAATeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Stinger Ammo Bearer", "Cav_B_C_FIMAmmoBearer_F", "", _charlieAATeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);


    // CCMS Team
    [_object,"cScriptQuickSelection_Charlie_JavelinTeam","Javelin Team",_icon,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Charlie"]] call FUNC(addAceCategory);
    private _charlieJavelinTeamCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie','cScriptQuickSelection_Charlie_JavelinTeam'];
    
    [_object,"CCMS Team Leader", "Cav_B_C_CCMSFireTeamLeader_F", "", _charlieJavelinTeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Automatic Rifleman", "Cav_B_C_AutomaticRifleman_F", "", _charlieJavelinTeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"CCMS Gunner", "Cav_B_C_CCMSGunner_F", "", _charlieJavelinTeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"CCMS Ammo Bearer", "Cav_B_C_CCMSAmmoBearer_F", "", _charlieJavelinTeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);


    // Mortar Team
    [_object,"cScriptQuickSelection_Charlie_MortarTeam","Mortar Team",_icon,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Charlie"]] call FUNC(addAceCategory);
    private _charlieMortarTeamCat = ['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie','cScriptQuickSelection_Charlie_MortarTeam'];
    
    [_object,"Mortar Team Leader", "Cav_B_C_60mmFireTeamLeader_F", "", _charlieMortarTeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Automatic Rifleman", "Cav_B_C_AutomaticRifleman_F", "", _charlieMortarTeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Mortar Gunner", "Cav_B_C_60mmGunner_F", "", _charlieMortarTeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
    [_object,"Mortar Ammo Bearer", "Cav_B_C_60mmAmmoBearer_F", "", _charlieMortarTeamCat, "Charlie", _allowOnlyForCompany] call FUNC(addQuickSelection);
};

#ifdef DEBUG_MODE
    [format["Setup of %1 loadouts selecton list on %2 is completed.", _companySelector, _object], "Quick Selection"] call FUNC(logInfo);
#endif
