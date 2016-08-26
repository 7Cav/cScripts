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

// make ACE category
private _icon = "cScripts\Data\Icon\icon_01.paa";
[_object,"cScriptQuickSelectionMenu","Quick Selection",_Icon,["ACE_MainActions"]] call FUNC(addAceCategory);
[_object,"cScriptQuickSelectionAmmo","Ammo bearers and Assistants",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);
[_object,"cScriptQuickSelectionMissile","Missile",_Icon,["ACE_MainActions","cScriptQuickSelectionMenu"]] call FUNC(addAceCategory);

// make addAction Topic
_object addAction ["Quick Selection", {}];

// make Quick Selections
[_object,"Rifleman","CAV_Rifleman"] call FUNC(addQuickSelection);
[_object,"Rifleman LAT","CAV_RiflemanLAT"] call FUNC(addQuickSelection);

// Missile
[_object,"Anti Tank (M3 MAAWS)","CAV_RiflemanAT","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelectionMissile']] call FUNC(addQuickSelection);
[_object,"Anti Tank (FGM-148 Javelin)","CAV_RiflemanAT_Javelin","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelectionMissile']] call FUNC(addQuickSelection);
[_object,"Anti Air","CAV_RiflemanAA","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelectionMissile']] call FUNC(addQuickSelection);

// Ammo bearers & Assistants
[_object,"Ammo Bearer","CAV_RiflemanAmmoBearer","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelectionAmmo']] call FUNC(addQuickSelection);
[_object,"M-AR Ammo Bearer","CAV_RiflemanAmmoBearerMAR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelectionAmmo']] call FUNC(addQuickSelection);
[_object,"H-AR Ammo Bearer","CAV_RiflemanAmmoBearerHAR","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelectionAmmo']] call FUNC(addQuickSelection);

[_object,"AT Assistant","CAV_RiflemanAT","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelectionAmmo']] call FUNC(addQuickSelection);
[_object,"AA Assistant","CAV_RiflemanAA","",['ACE_MainActions','cScriptQuickSelectionMenu','cScriptQuickSelectionAmmo']] call FUNC(addQuickSelection);
