#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function contain quick selection buttons and categorys.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Size Type <SIZE> ["none","alpha","bravo","charlie","ranger","medical","full"]
 * 2: Require correct company to select loadout. <BOOL> (default: true)
 *
 * Example:
 * [this] call cScripts_fnc_initQuickSelections;
 * [this,"full",true] call cScripts_fnc_initQuickSelections;
 */

params [
    ["_object", objNull, [objNull]],
    ["_companySelector", "none"],
    ["_requireCompanyVariable", true]
];

// check if company is set to full
private _addActionAllowedOnCompany = if (_companySelector == "full") then {false} else {true};

// make icons
private _icon = "cScripts\Data\Icon\icon_01.paa";

// make topic
[_object,"cScriptQuickSelectionMenu","Quick Selection",_Icon,["ACE_MainActions"]] call FUNC(addAceCategory);

// make alpha selections
if ((_companySelector == "full") or (_companySelector == "alpha")) then {
    // make ace interaction category
    [_object,"cScriptQuickSelection_Alpha","Alpha",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);

    // make addAction topic
    if !(_companySelector == "full") then {
        if (_requireCompanyVariable) then {
            _object addAction ["Alpha Quick Selection", {}, nil, 1.5, true, true, "", QUOTE([ARR_2(_this,'Alpha')] call FUNC(hasCompanyVariable)), 5];
        } else {
            _object addAction ["Alpha Quick Selection", {}, nil, 1.5, true, true, "", "true", 5];
        };
    };

    // add loadouts
    [_object,"Pilot","CAV_Alpha_Helo_PILOT","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Alpha'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
    [_object,"CoPilot","CAV_Alpha_Helo_COPILOT","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Alpha'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
    [_object,"Crew Chief","CAV_Alpha_Helo_CHIEF","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Alpha'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
    [_object,"Door Gunner","CAV_Alpha_Helo_GNR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Alpha'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
    
    //[_object,"Pilot (Attack Rotary)","CAV_Alpha_Helo_PILOT_ATT","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Alpha'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
    //[_object,"CoPilot (Attack Rotary)","CAV_Alpha_Helo_COPILOT_ATT","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Alpha'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
    
    [_object,"Fixed Wing Pilot","CAV_Alpha_Fixed_PILOT","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Alpha'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
};

// make bravo selections
if ((_companySelector == "full") or (_companySelector == "bravo")) then {
    // make ace interaction category
    [_object,"cScriptQuickSelection_Bravo","Bravo",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);

    // make addAction topic
    if !(_companySelector == "full") then {
        if (_requireCompanyVariable) then {
            _object addAction ["Bravo Quick Selection", {}, nil, 1.5, true, true, "", QUOTE([ARR_2(_this,'Bravo')] call FUNC(hasCompanyVariable)), 5];
        } else {
            _object addAction ["Bravo Quick Selection", {}, nil, 1.5, true, true, "", "true", 5];
        };
    };

    // add loadouts
    if (_companySelector == "full") then {[_object,"Officer","CAV_Bravo_OFFCR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);};
    [_object,"Crew Commander","CAV_Bravo_Crew_CDR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
    [_object,"Crew Gunner","CAV_Bravo_Crew_GNR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
    [_object,"Driver-Loader","CAV_Bravo_Crew_CREW","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);

    if (_companySelector == "full") then {[_object,"Squad Leader","CAV_Bravo_SL","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);};
    [_object,"Fire Team Leader","CAV_Bravo_TL","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
    [_object,"Automatic Rifleman","CAV_Bravo_AR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
    [_object,"Grenadier","CAV_Bravo_GR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
    [_object,"Rifleman","CAV_Bravo_RM","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
    [_object,"Combat Life Saver","CAV_Bravo_CLS","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
};

// make charlie selections
if ((_companySelector == "full") or (_companySelector == "charlie")) then {
    // make ace interaction category
    [_object,"cScriptQuickSelection_Charlie","Charlie",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);

    // make addAction topic
    if !(_companySelector == "full") then {
        if (_requireCompanyVariable) then {
            _object addAction ["Charlie Quick Selection", {}, nil, 1.5, true, true, "", QUOTE([ARR_2(_this,'Charlie')] call FUNC(hasCompanyVariable)), 5];
        } else {
            _object addAction ["Charlie Quick Selection", {}, nil, 1.5, true, true, "", "true", 5];
        };
    };

    // add loadouts
    if (_companySelector == "full") then {[_object,"Officer","CAV_Charlie_OFFCR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);};
    if (_companySelector == "full") then {[_object,"Joint Fires Observer","CAV_Charlie_JFO","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);};

    if (_companySelector == "full") then {[_object,"Squad Leader","CAV_Charlie_SL","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);};
    [_object,"Fire Team Leader","CAV_Charlie_TL","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
    [_object,"Automatic Rifleman","CAV_Charlie_AR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
    [_object,"Grenadier","CAV_Charlie_GR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
    [_object,"Rifleman","CAV_Charlie_RM","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
    [_object,"Combat Life Saver","CAV_Charlie_CLS","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
};


// make Bravo and Charlie Heavy Weapons selections
if ((_companySelector == "full") or (_companySelector == "heavyweapons")) then {

    // make ace interaction category
    [_object,"cScriptQuickSelection_CharlieHW","Charlie (Heavy Weapons)",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
    [_object,"cScriptQuickSelection_BravoHW","Bravo (Heavy Weapons)",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);

    // make addAction topic
    if !(_companySelector == "full") then {
        if (_requireCompanyVariable) then {
            _object addAction ["Charlie Quick Selection", {}, nil, 1.5, true, true, "", QUOTE([ARR_2(_this,'Charlie')] call FUNC(hasCompanyVariable)), 5];
        } else {
            _object addAction ["Charlie Quick Selection", {}, nil, 1.5, true, true, "", "true", 5];
        };
    };

    // add loadouts
    if (_companySelector == "full") then {[_object,"Charlie WPN SL","CAV_Charlie_Weapons_SL","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_CharlieHW'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);};
    [_object,"Charlie WPN TL","CAV_Charlie_Weapons_TL","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_CharlieHW'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
    [_object,"Charlie WPN AR","CAV_Charlie_Weapons_AR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_CharlieHW'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
    [_object,"Charlie WPN GR","CAV_Charlie_Weapons_GR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_CharlieHW'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
    [_object,"Charlie WPN RM","CAV_Charlie_Weapons_RM","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_CharlieHW'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
    [_object,"Charlie WPN CLS","CAV_Charlie_Weapons_CLS","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_CharlieHW'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);

    // make addAction topic
    if !(_companySelector == "full") then {
        if (_requireCompanyVariable) then {
            _object addAction ["Bravo Quick Selection", {}, nil, 1.5, true, true, "", QUOTE([ARR_2(_this,'Bravo')] call FUNC(hasCompanyVariable)), 5];
        } else {
            _object addAction ["Bravo Quick Selection", {}, nil, 1.5, true, true, "", "true", 5];
        };
    };

    // add loadouts
    [_object,"Bravo WPN TL","CAV_Bravo_Weapons_TL","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_BravoHW'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
    [_object,"Bravo WPN MG","CAV_Bravo_Weapons_MG","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_BravoHW'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
    [_object,"Bravo WPN GNR","CAV_Bravo_Weapons_GNR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_BravoHW'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
};


// make ranger selections
if ((_companySelector == "full") or (_companySelector == "ranger")) then {
    // make ace interaction category
    [_object,"cScriptQuickSelection_Ranger","Ranger",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);

    // make addAction topic
    if !(_companySelector == "full") then {
        if (_requireCompanyVariable) then {
            _object addAction ["Ranger Quick Selection", {}, nil, 1.5, true, true, "", QUOTE([ARR_2(_this,'Ranger')] call FUNC(hasCompanyVariable)), 5];
        } else {
            _object addAction ["Ranger Quick Selection", {}, nil, 1.5, true, true, "", "true", 5];
        };
    };

    // add loadouts
    [_object,"OIC","CAV_Ranger_OIC","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger'],_requireCompanyVariable,false] call FUNC(addQuickSelection);
    [_object,"2IC","CAV_Ranger_2IC","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger'],_requireCompanyVariable,false] call FUNC(addQuickSelection);

    [_object,"Team Leader","CAV_Ranger_TL","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
    [_object,"Automatic Rifleman","CAV_Ranger_AR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
    [_object,"Grenadier","CAV_Ranger_GR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
    [_object,"Rifleman","CAV_Ranger_RM","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
    [_object,"Medic","CAV_Ranger_MEDIC","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);

    [_object,"Sniper","CAV_Sniper","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger'],_requireCompanyVariable,false] call FUNC(addQuickSelection);
    [_object,"Spotter","CAV_Spotter","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger'],_requireCompanyVariable,false] call FUNC(addQuickSelection);
};

// make ranger selections
if ((_companySelector == "full") or (_companySelector == "medical")) then {
    // make ace interaction category
    [_object,"cScriptQuickSelection_Medical","Medical",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);

    // make addAction topic
    if !(_companySelector == "full") then {
        if (_requireCompanyVariable) then {
            _object addAction ["Medical Quick Selection", {}, nil, 1.5, true, true, "", QUOTE([ARR_2(_this,'Medical')] call FUNC(hasCompanyVariable)), 5];
        } else {
            _object addAction ["Medical Quick Selection", {}, nil, 1.5, true, true, "", "true", 5];
        };
    };

    // add loadouts
    [_object,"Medical Team Leader","CAV_Medical_OFFCR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Medical'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
    [_object,"Medical Team Member","CAV_Medical_BONESAW","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Medical'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
    [_object,"Platoon Medics","CAV_Medical_PLMEDIC","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Medical'],_requireCompanyVariable,_addActionAllowedOnCompany] call FUNC(addQuickSelection);
};
