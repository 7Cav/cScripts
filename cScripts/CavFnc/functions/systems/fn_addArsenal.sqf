/*
 * Author: CPL.Brostrom.A
 * This populats a given object with items and commands used during operations.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_addArsenal
 */

params [["_object", objNull, [objNull]]];

// Make addAction
_object addAction ["   <t color='#bfff00'>Arsenal</t>", {["Open",true] spawn BIS_fnc_arsenal;}];

// Make aceInteraction
private _Icon = "cScripts\Data\Icon\icon_01.paa";
private _arsenalCondition = {true};
private _arsenalStatement = {["Open",true] spawn BIS_fnc_arsenal;};
private _arsenalAction = ["cScriptsArsenalAce", "Arsenal", _Icon, _arsenalStatement, _arsenalCondition] call ace_interact_menu_fnc_createAction;
[_object, 0, ["ACE_MainActions"], _arsenalAction] call ace_interact_menu_fnc_addActionToObject;
