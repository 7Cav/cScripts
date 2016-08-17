/*
 * Author: CPL.Brostrom.A 
 * This script auto generates the selections.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Name <STRING>
 * 2: className <STRING>
 * 3: Icon <STRING>
 *
 * Example:
 * [this,"Remove Insignia"] call cScripts_fnc_addInsigniaSelection;
 * [this,"Squad Insignia 1/1/C/1-7","11C_17_Insignia","cScripts\Data\Insignia\1-1-C-17.paa"] call cScripts_fnc_addInsigniaSelection;
 * [this,"Platoon Insignia 1/1/C/1-7","2C_17_Insignia","cScripts\Data\Insignia\2-C-17.paa"] call cScripts_fnc_addInsigniaSelection;
 */

params [["_object", objNull, [objNull]], ["_name", "", [""]], ["_className", "", [""]], ["_icon", "", [""]]];

//add addAction
_object addAction [format ["   <img image='%1' /> <t color='#66ff66'>%2</t>", _icon, _name], {[player, _this select 3] call BIS_fnc_setUnitInsignia;}, _className];

//add aceInteraction
private _insigniaSelection = [format ["cScriptInsigniaSelection_%1", _className], _name, _icon, {[player, _this select 2] call BIS_fnc_setUnitInsignia;}, {true}, {}, _className] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions", "cScriptInsigniaSelectionMenu"], _insigniaSelection] call ace_interact_menu_fnc_addActionToObject;

