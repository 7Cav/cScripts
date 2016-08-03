/*
 * Author: A.Brostrom
 * This adds a sandbox version of a cavbox used for missions.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_initMainSandbox;
 */
 
#include "..\script_component.hpp";

if (!isServer) exitWith {};

params ["_object"];

[_object] call FUNC(equipBase);
_object addAction ["<img image='cScripts\Data\Icon\icon_00.paa' />  7th Cavalry Equipment Crate", {}];

_object addAction ["   <t color='#ffcc33'>ReGear</t>", {[player, typeOf player] call Poppy_fnc_applyLoadout;}];
_object addAction ["   <t color='#ff6633'>Arsenal</t>", {["Open",true] spawn BIS_fnc_arsenal;}];

_object addAction ["Quick Selection", {}];
[_object] call FUNC(initQuickSelect);

_object addAction ["Insignia Selection", {}];
[_object] call FUNC(initInsignia);

_object addAction ["---", {}];