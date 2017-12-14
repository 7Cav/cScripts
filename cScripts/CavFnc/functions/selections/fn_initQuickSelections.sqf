/*
 * Author: CPL.Brostrom.A
 * This function contain quick selection buttons and categorys.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Size Type <SIZE> ["none","alpha","bravo","charlie","ranger","medical","full"]
 *
 * Example:
 * [this] call cScripts_fnc_initQuickSelections;
 * [this,"full",] call cScripts_fnc_initQuickSelections;
 */

#include "..\script_component.hpp";

params [
    ["_object", objNull, [objNull]],
    ["_platoonSelector", "none"],
    ["_requirePlatoonVariable", true]
];

// make default ACE category
private _icon = "cScripts\Data\Icon\icon_01.paa";

// make topic
[_object,"cScriptQuickSelectionMenu","Quick Selection",_Icon,["ACE_MainActions"]] call FUNC(addAceCategory);

// make categories
if ((_platoonSelector == "full") or (_platoonSelector == "alpha")) then {
    if (_requirePlatoonVariable) then {
        [_object,"cScriptQuickSelection_Alpha","Alpha",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"],{[player, 'CAV_isAlphaUnit'] call FUNC(canSelectLoadout);}] call FUNC(addAceCategory);
    } else {
        [_object,"cScriptQuickSelection_Alpha","Alpha",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
    };
    if (_platoonSelector == "alpha") then {
        _object addAction ["Alpha Quick Selection", {}, nil, 1.5, true, true, "_this getVariable quote(CAV_isAlphaUnit)"];
        [_object,"Pilot","CAV_Alpha_Helo_PILOT","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Alpha'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
        [_object,"Crew Chief","CAV_Alpha_Helo_CHIEF","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Alpha'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
        [_object,"Door Gunner","CAV_Alpha_Helo_GNR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Alpha'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
        [_object,"Fixed Wing Pilot","CAV_Alpha_Fixed_PILOT","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Alpha'],_requirePlatoonVariable,true] call FUNC(addQuickSelection);
    } else {
        [_object,"Pilot","CAV_Alpha_Helo_PILOT","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Alpha'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Crew Chief","CAV_Alpha_Helo_CHIEF","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Alpha'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Door Gunner","CAV_Alpha_Helo_GNR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Alpha'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Fixed Wing Pilot","CAV_Alpha_Fixed_PILOT","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Alpha'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
    };
};
if ((_platoonSelector == "full") or (_platoonSelector == "bravo")) then {
    if (_requirePlatoonVariable) then {
        [_object,"cScriptQuickSelection_Bravo","Bravo",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"],{[player, 'CAV_isBravoUnit'] call FUNC(canSelectLoadout);}] call FUNC(addAceCategory);
    } else {
        [_object,"cScriptQuickSelection_Bravo","Bravo",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
    };
    if (_platoonSelector == "bravo") then {
        _object addAction ["Bravo Quick Selection", {}, nil, 1.5, true, true, "_this getVariable quote(CAV_isBravoUnit)"];
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
        if (_platoonSelector == "full") then {[_object,"Officer","CAV_Bravo_OFFCR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);};
        [_object,"Crew Commander","CAV_Bravo_Crew_CDR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Crew Gunner","CAV_Bravo_Crew_GNR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);
        [_object,"Driver-Loader","CAV_Bravo_Crew_CREW","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);

        if (_platoonSelector == "full") then {[_object,"Squad Leader","CAV_Bravo_SL","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelection_Bravo'],_requirePlatoonVariable,false] call FUNC(addQuickSelection);};
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
if ((_platoonSelector == "full") or (_platoonSelector == "charlie")) then {
    if (_requirePlatoonVariable) then {
        [_object,"cScriptQuickSelection_Chralie","Charlie",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"],{[player, 'CAV_isCharlieUnit'] call FUNC(canSelectLoadout);}] call FUNC(addAceCategory);
    } else {
        [_object,"cScriptQuickSelection_Chralie","Charlie",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
    };
};
if ((_platoonSelector == "full") or (_platoonSelector == "ranger")) then {
    if (_requirePlatoonVariable) then {
        [_object,"cScriptQuickSelection_Ranger","Ranger",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"],{[player, 'CAV_isRangerUnit'] call FUNC(canSelectLoadout);}] call FUNC(addAceCategory);
    } else {
        [_object,"cScriptQuickSelection_Ranger","Ranger",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
    };
};
if ((_platoonSelector == "full") or (_platoonSelector == "medical")) then {
    if (_requirePlatoonVariable) then {
        [_object,"cScriptQuickSelection_Medical","Medical",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"],{[player, 'CAV_isMedicalUnit'] call FUNC(canSelectLoadout);}] call FUNC(addAceCategory);
    } else {
        [_object,"cScriptQuickSelection_Medical","Medical",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
    };
};
