/*
 * Author: CPL.Brostrom.A 
 * This generates quick selection buttons to given selections.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * ["this","Rifleman","C_R"] call cScripts_fnc_addQuickSelection;
 */

#include "..\script_component.hpp";

params [["_object", objNull, [objNull]], ["_name", "", [""]], ["_className", "", [""]]];

//make addAction
_object addAction [format ["   <t color='#ffd966'>%1</t>", _name], {[player, _this select 3] call Poppy_fnc_applyLoadout;}, _className];

//make aceAction
private _quickSelection = [format ["cScriptQuickSelection_%1", _className], _name, "", {[player, _this select 2] call Poppy_fnc_applyLoadout;}, {true}, {}, _className] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "cScriptQuickSelectionMenu"], _quickSelection] call ace_interact_menu_fnc_addActionToObject;

