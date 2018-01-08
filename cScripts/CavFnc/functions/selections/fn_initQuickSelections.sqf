/*
 * Author: CPL.Brostrom.A
 * This function contain quick selection buttons and categorys.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Size Type <SIZE> ["none","alpha","bravo","charlie","ranger","medical","full"]
 * 2: Require correct platoon to select loadout. <BOOL> (default: true)
 *
 * Example:
 * [this] call cScripts_fnc_initQuickSelections;
 * [this,"full",true] call cScripts_fnc_initQuickSelections;
 */

#include "..\script_component.hpp";

params [
    ["_object", objNull, [objNull]],
    ["_platoonSelector", "none"],
    ["_requirePlatoonVariable", true]
];

// make icons
private _icon = "cScripts\Data\Icon\icon_01.paa";
private _icon_X = "cScripts\Data\Icon\icon_x.paa";

// make topic
[_object,"cScriptQuickSelectionMenu","Quick Selection",_Icon,["ACE_MainActions"]] call FUNC(addAceCategory);


// make alpha selections
if ((_platoonSelector == "full") or (_platoonSelector == "alpha")) then {
    // make ace interaction category
    [_object,"cScriptQuickSelection_Alpha","Alpha",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
    if (_requirePlatoonVariable) then {
        [_object,"cScriptQuickSelection_Alpha_Restricted","Loadout are restricted",_icon_X,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Alpha"],{[ARR_2(player,'CAV_isAlphaUnit')] call FUNC(canNotSelectLoadout)}] call FUNC(addAceCategory);
    };

    // make lodouts and topics
    if (_platoonSelector == "alpha") then {
        // make addAction topic
        if (_requirePlatoonVariable) then {
            _object addAction ["Alpha Quick Selection", {}, nil, 1.5, true, true, "", QUOTE([ARR_2(_this,'CAV_isAlphaUnit')] call FUNC(canSelectLoadout))];
        } else {
            _object addAction ["Alpha Quick Selection", {}, nil, 1.5, true, true, "", "true"];
        };

        // add loadouts
        [_object,"Pilot","CAV_Alpha_Helo_PILOT","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Alpha'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
        [_object,"Crew Chief","CAV_Alpha_Helo_CHIEF","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Alpha'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
        [_object,"Door Gunner","CAV_Alpha_Helo_GNR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Alpha'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
        [_object,"Fixed Wing Pilot","CAV_Alpha_Fixed_PILOT","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Alpha'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
    } else {
        // add loadouts when alpha is not selected. (No topic required.)
        [_object,"Pilot","CAV_Alpha_Helo_PILOT","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Alpha'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Crew Chief","CAV_Alpha_Helo_CHIEF","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Alpha'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Door Gunner","CAV_Alpha_Helo_GNR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Alpha'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Fixed Wing Pilot","CAV_Alpha_Fixed_PILOT","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Alpha'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
    };
};



// make bravo selections
if ((_platoonSelector == "full") or (_platoonSelector == "bravo")) then {
    // make ace interaction category
    [_object,"cScriptQuickSelection_Bravo","Bravo",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
    if (_requirePlatoonVariable) then {
        [_object,"cScriptQuickSelection_Bravo_Restricted","Loadout are restricted",_icon_X,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Bravo"],{[ARR_2(player,'CAV_isBravoUnit')] call FUNC(canNotSelectLoadout)}] call FUNC(addAceCategory);
    };

    // make lodouts and topics
    if (_platoonSelector == "bravo") then {
        // make addAction topic
        if (_requirePlatoonVariable) then {
            _object addAction ["Bravo Quick Selection", {}, nil, 1.5, true, true, "", QUOTE([ARR_2(_this,'CAV_isBravoUnit')] call FUNC(canSelectLoadout))];
        } else {
            _object addAction ["Bravo Quick Selection", {}, nil, 1.5, true, true, "", "true"];
        };

        // add loadouts
        if (_platoonSelector == "full") then {[_object,"Officer","CAV_Bravo_OFFCR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);};
        [_object,"Crew Commander","CAV_Bravo_Crew_CDR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
        [_object,"Crew Gunner","CAV_Bravo_Crew_GNR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
        [_object,"Driver-Loader","CAV_Bravo_Crew_CREW","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);

        if (_platoonSelector == "full") then {[_object,"Squad Leader","CAV_Bravo_SL","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);};
        [_object,"Fire Team Leader","CAV_Bravo_TL","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
        [_object,"Automatic Rifleman","CAV_Bravo_AR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
        [_object,"Grenadier","CAV_Bravo_GR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
        [_object,"Rifleman","CAV_Bravo_RM","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
        [_object,"Combat Life Saver","CAV_Bravo_CLS","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);

        [_object,"HW Team Leader","CAV_Bravo_Weapons_TL","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
        [_object,"HW Machine Gunner","CAV_Bravo_Weapons_MG","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
        [_object,"Gunner AND Assistant Gunner","CAV_Bravo_Weapons_GNR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
    } else {
        // add loadouts when alpha is not selected. (No topic required.)
        [_object,"Officer","CAV_Bravo_OFFCR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Crew Commander","CAV_Bravo_Crew_CDR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Crew Gunner","CAV_Bravo_Crew_GNR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Driver-Loader","CAV_Bravo_Crew_CREW","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);

        [_object,"Squad Leader","CAV_Bravo_SL","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Fire Team Leader","CAV_Bravo_TL","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Automatic Rifleman","CAV_Bravo_AR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Grenadier","CAV_Bravo_GR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Rifleman","CAV_Bravo_RM","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Combat Life Saver","CAV_Bravo_CLS","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);

        [_object,"HW Team Leader","CAV_Bravo_Weapons_TL","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"HW Machine Gunner","CAV_Bravo_Weapons_MG","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Gunner AND Assistant Gunner","CAV_Bravo_Weapons_GNR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
    };
};



// make charlie selections
if ((_platoonSelector == "full") or (_platoonSelector == "charlie")) then {
    // make ace interaction category
    [_object,"cScriptQuickSelection_Charlie","Charlie",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
    if (_requirePlatoonVariable) then {
        [_object,"cScriptQuickSelection_Charlie_Restricted","Loadout are restricted",_icon_X,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Charlie"],{[ARR_2(player,'CAV_isCharlieUnit')] call FUNC(canNotSelectLoadout)}] call FUNC(addAceCategory);
    };

    // make lodouts and topics
    if (_platoonSelector == "charlie") then {
        // make addAction topic
        if (_requirePlatoonVariable) then {
            _object addAction ["Charlie Quick Selection", {}, nil, 1.5, true, true, "", QUOTE([ARR_2(_this,'CAV_isCharlieUnit')] call FUNC(canSelectLoadout))];
        } else {
            _object addAction ["Charlie Quick Selection", {}, nil, 1.5, true, true, "", "true"];
        };

        // add loadouts
        if (_platoonSelector == "full") then {[_object,"Officer","CAV_Charlie_OFFCR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);};
        if (_platoonSelector == "full") then {[_object,"Joint Fires Observer","CAV_Charlie_JFO","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);};

        if (_platoonSelector == "full") then {[_object,"Squad Leader","CAV_Charlie_SL","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);};
        [_object,"Fire Team Leader","CAV_Charlie_TL","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
        [_object,"Automatic Rifleman","CAV_Charlie_AR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
        [_object,"Grenadier","CAV_Charlie_GR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
        [_object,"Rifleman","CAV_Charlie_RM","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
        [_object,"Combat Life Saver","CAV_Charlie_CLS","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);

        if (_platoonSelector == "full") then {[_object,"Squad Leader (H)","CAV_Charlie_Weapons_SL","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);};
        [_object,"Fire Team Leader (H)","CAV_Charlie_Weapons_TL","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
        [_object,"Automatic Rifleman (H)","CAV_Charlie_Weapons_AR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
        [_object,"Grenadier (H)","CAV_Charlie_Weapons_GR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
        [_object,"Rifleman (H)","CAV_Charlie_Weapons_RM","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
        [_object,"Combat Life Saver (H)","CAV_Charlie_Weapons_CLS","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);

    } else {
        // add loadouts when alpha is not selected. (No topic required.)
        [_object,"Officer","CAV_Charlie_OFFCR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Joint Fires Observer","CAV_Charlie_JFO","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);

        [_object,"Squad Leader","CAV_Charlie_SL","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Fire Team Leader","CAV_Charlie_TL","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Automatic Rifleman","CAV_Charlie_AR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Grenadier","CAV_Charlie_GR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Rifleman","CAV_Charlie_RM","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Combat Life Saver","CAV_Charlie_CLS","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);

        [_object,"Squad Leader (H)","CAV_Charlie_Weapons_SL","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Fire Team Leader (H)","CAV_Charlie_Weapons_TL","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requirePlatoonVariable,falsefalse] call FUNC(addQuickSelection);
        [_object,"Automatic Rifleman (H)","CAV_Charlie_Weapons_AR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Grenadier (H)","CAV_Charlie_Weapons_GR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Rifleman (H)","CAV_Charlie_Weapons_RM","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Combat Life Saver (H)","CAV_Charlie_Weapons_CLS","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Charlie'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
    };
};



// make ranger selections
if ((_platoonSelector == "full") or (_platoonSelector == "ranger")) then {
    // make ace interaction category
    [_object,"cScriptQuickSelection_Ranger","Ranger",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
    if (_requirePlatoonVariable) then {
        [_object,"cScriptQuickSelection_Ranger_Restricted","Loadout are restricted",_icon_X,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Ranger"],{[ARR_2(player,'CAV_isRangerUnit')] call FUNC(canNotSelectLoadout)}] call FUNC(addAceCategory);
    };

    // make lodouts and topics
    if (_platoonSelector == "ranger") then {
        // make addAction topic
        if (_requirePlatoonVariable) then {
            _object addAction ["Ranger Quick Selection", {}, nil, 1.5, true, true, "", QUOTE([ARR_2(_this,'CAV_isRangerUnit')] call FUNC(canSelectLoadout))];
        } else {
            _object addAction ["Ranger Quick Selection", {}, nil, 1.5, true, true, "", "true"];
        };

        // add loadouts
        [_object,"OIC","CAV_Ranger_OIC","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"2IC","CAV_Ranger_2IC","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);

        [_object,"Team Leader","CAV_Ranger_TL","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
        [_object,"Automatic Rifleman","CAV_Ranger_AR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
        [_object,"Grenadier","CAV_Ranger_GR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
        [_object,"Rifleman","CAV_Ranger_RM","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
        [_object,"Medic","CAV_Ranger_MEDIC","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);

        [_object,"Sniper","CAV_Sniper","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Spotter","CAV_Spotter","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);

    } else {
        // add loadouts when alpha is not selected. (No topic required.)
        [_object,"OIC","CAV_Ranger_OIC","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"2IC","CAV_Ranger_2IC","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);

        [_object,"Team Leader","CAV_Ranger_TL","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Automatic Rifleman","CAV_Ranger_AR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Grenadier","CAV_Ranger_GR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Rifleman","CAV_Ranger_RM","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Medic","CAV_Ranger_MEDIC","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);

        [_object,"Sniper","CAV_Sniper","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Spotter","CAV_Spotter","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Ranger'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
    };
};



// make ranger selections
if ((_platoonSelector == "full") or (_platoonSelector == "medical")) then {
    // make ace interaction category
    [_object,"cScriptQuickSelection_Medical","Medical",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
    if (_requirePlatoonVariable) then {
        [_object,"cScriptQuickSelection_Medical_Restricted","Loadout are restricted",_icon_X,["ACE_MainActions","cScriptQuickSelectionMenu","cScriptQuickSelection_Medical"],{[ARR_2(player,'CAV_isMedicalUnit')] call FUNC(canNotSelectLoadout)}] call FUNC(addAceCategory);
    };

    // make lodouts and topics
    if (_platoonSelector == "medical") then {
        // make addAction topic
        if (_requirePlatoonVariable) then {
            _object addAction ["Medical Quick Selection", {}, nil, 1.5, true, true, "", QUOTE([ARR_2(_this,'CAV_isMedicalUnit')] call FUNC(canSelectLoadout))];
        } else {
            _object addAction ["Medical Quick Selection", {}, nil, 1.5, true, true, "", "true"];
        };

        // add loadouts
        [_object,"Medical Team Leader","CAV_Medical_OFFCR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Medical'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
        [_object,"Medical Team Member","CAV_Medical_BONESAW","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Medical'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
        [_object,"Platoon Medics","CAV_Medical_PLMEDIC","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Medical'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);

    } else {
        // add loadouts when alpha is not selected. (No topic required.)
        [_object,"Medical Team Leader","CAV_Medical_OFFCR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Medical'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Medical Team Member","CAV_Medical_BONESAW","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Medical'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Platoon Medics","CAV_Medical_PLMEDIC","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Medical'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
    };
};
