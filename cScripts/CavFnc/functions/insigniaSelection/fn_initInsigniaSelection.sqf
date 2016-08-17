/*
 * Author: CPL.Brostrom.A 
 * This script gives you the ability to select a squad patch.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * call cScripts_fnc_initInsigniaSelection;
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
[_object,"Platoon Insignia 1/1/C/1-7","2C_17_Insignia","cScripts\Data\Insignia\2-C-17.paa"] call FUNC(addInsigniaSelection);