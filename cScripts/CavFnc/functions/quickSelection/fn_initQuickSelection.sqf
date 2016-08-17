/*
 * Author: CPL.Brostrom.A 
 * This adds a quick selection loadout for a CavBox Used by InitMain and InitMainSandbox
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_initQuickSelection;
 */

#include "..\script_component.hpp";

params [["_object", objNull, [objNull]]];

// Make ACE Category
private _Icon = "cScripts\Data\Icon\icon_00.paa";
private _quickSelectionMenu = ["cScriptQuickSelectionMenu", "Quick Selection", _Icon, {""}, {true}] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions"], _quickSelectionMenu] call ace_interact_menu_fnc_addActionToObject;

// Make addAction Topic
_object addAction ["Quick Selection", {}];

// Add the Quick Selections 
[_object,"Rifleman","C_R"] call FUNC(addQuickSelection);
[_object,"Rifleman LAT","C_R"] call FUNC(addQuickSelection);
[_object,"Rifleman HAT","C_R"] call FUNC(addQuickSelection);
[_object,"Rifleman M-AR Assistant","C_R"] call FUNC(addQuickSelection);
[_object,"Rifleman H-AR Assistant","C_R"] call FUNC(addQuickSelection);
[_object,"Rifleman Ammo Bearer","C_R"] call FUNC(addQuickSelection);
