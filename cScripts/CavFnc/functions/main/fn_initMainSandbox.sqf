/*
 * Author: A.Brostrom
 * This adds a sandbox version of a cavbox used for missions.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_initMainSandbox;
 */
 
#include "..\script_component.hpp";

if (!isServer) exitWith {};

params ["_object"];

[_object] call FUNC(equipBase);
_object addAction ["<t color='#ffc61a'>ReGear</t>", {[player] call Poppy_fnc_postInit;}];
_object addAction ["<t color='#bfff00'>Arsenal</t>", {["Open",true] spawn BIS_fnc_arsenal;}];
_object addAction ["---", {}];
[_object] call FUNC(initInsignia);
