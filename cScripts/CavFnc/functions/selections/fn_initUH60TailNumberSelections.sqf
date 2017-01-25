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

params [["_vehicle", objNull, [objNull]]];


// Make ACE Category

_condition = {};
_statement = {};
_action = ["Open RDF","Radio Direction Finder","pabst\RDF.jpg",_statement,_condition] call ace_interact_menu_fnc_createAction;
[_vehicle, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToClass;