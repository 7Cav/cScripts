/*
 * Author: CPL.Brostrom.A 
 * This adds a quick selection loadout for a CavBox Used by InitMain and InitMainSandbox
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_initQuickSelections;
 */

#include "..\script_component.hpp";

params [["_object", objNull, [objNull]]];

// make default ACE category
private _icon = "cScripts\Data\Icon\icon_01.paa";
[_object,"cScriptQuickSelectionMenu","Quick Selection",_Icon,["ACE_MainActions"]] call FUNC(addAceCategory);
[_object,"cScriptQuickSelectionStandard","Standard",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
// make additional ACE categories
[_object,"cScriptQuickSelectionSpecial","Special",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
[_object,"cScriptQuickSelectionCrew","Crew",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);

// make addAction Topic
_object addAction ["Quick Selection", {}];

// make Quick Selections
[_object,"Squad Leader","CAV_SquadLeader"] call FUNC(addQuickSelection);
[_object,"Fire Team Leader","CAV_TeamLeader"] call FUNC(addQuickSelection);
[_object,"Automatic Rifleman","CAV_AutomaticRifleman"] call FUNC(addQuickSelection);
[_object,"Grenadier","CAV_Grenadier"] call FUNC(addQuickSelection);
[_object,"Rifleman","CAV_Rifleman"] call FUNC(addQuickSelection);
[_object,"Combat Life Saver","CAV_CombatLifesaver"] call FUNC(addQuickSelection);
[_object,"Engineer","CAV_Engineer"] call FUNC(addQuickSelection);

[_object,"Officer","CAV_Officer","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelectionSpecial']] call FUNC(addQuickSelection);
[_object,"Platoon Medic","CAV_PlatoonMedic","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelectionSpecial']] call FUNC(addQuickSelection);

[_object,"Tank Commander","CAV_TankCommander","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelectionCrew']] call FUNC(addQuickSelection);
[_object,"Tank Gunner","CAV_TankGunner","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelectionCrew']] call FUNC(addQuickSelection);
[_object,"Tank Driver","CAV_TankDriver","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelectionCrew']] call FUNC(addQuickSelection);
[_object,"Tank Loader","CAV_TankLoader","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelectionCrew']] call FUNC(addQuickSelection);
[_object,"Helo Pilot","CAV_HeloPilot","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelectionCrew']] call FUNC(addQuickSelection);
