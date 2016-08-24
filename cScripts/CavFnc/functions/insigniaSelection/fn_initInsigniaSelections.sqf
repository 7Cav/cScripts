/*
 * Author: CPL.Brostrom.A 
 * This script gives you the ability to select a squad patch.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * call cScripts_fnc_initInsigniaSelections;
 */

#include "..\script_component.hpp";

params [["_object", objNull, [objNull]]];

// Make ACE Category
private _Icon = "cScripts\Data\Icon\icon_00.paa";
private _insigniaMenu = ["cScriptInsigniaSelectionMenu", "Insignia", _Icon, {""}, {true}] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions"], _insigniaMenu] call ace_interact_menu_fnc_addActionToObject;

// Make addAction Topic.
_object addAction ["Insignia Selection", {}];

// Add the Insignia Selections 
[_object,"Remove Insignia"] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia 1/1/C/1-7","11C_17_Insignia","cScripts\Data\Insignia\1-1-C-17.paa"] call FUNC(addInsigniaSelection);
[_object,"Platoon Insignia 2/C/1-7","2C_17_Insignia","cScripts\Data\Insignia\2-C-17.paa"] call FUNC(addInsigniaSelection);

// 7th Cavalry Gaming Insignias
[_object,"7th Cavalry Insignia","7_Insignia","cScripts\Data\Insignia\7.paa"] call FUNC(addInsigniaSelection);
[_object,"7th Cavalry Insignia (M81)","7m81_Insignia","cScripts\Data\Insignia\7_m81.paa"] call FUNC(addInsigniaSelection);
[_object,"7th Cavalry Insignia (OCP)","7ocp_Insignia","cScripts\Data\Insignia\7_ocp.paa"] call FUNC(addInsigniaSelection);