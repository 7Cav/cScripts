/*
 * Author: A.Brostrom
 * This populats a given object with items and commands used during operations.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_initMain;
 */

#include "..\script_component.hpp";

if (!isServer) exitWith {};

params ["_object"];

[_object] call FUNC(equipBase);
_object addAction ["<img image='cScripts\Data\Icon\icon_00.paa' />  7th Cavalry Equipment Crate", {}];

_object addAction ["  <t color='#ffc61a'>ReGear</t>", {[player, typeOf player] call Poppy_fnc_applyLoadout;}];

_object addAction ["Quick Selection", {}];
[_object] call FUNC(initQuickSelect);

_object addAction ["Insignia Selection", {}];
[_object] call FUNC(initInsignia);

_object addAction ["---", {}];