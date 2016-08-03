/*
 * Author: A.Brostrom
 * This adds a quick selection loadout for a CavBox Used by InitMain and InitMainSandbox
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_initQuickSelect;
 */

#include "..\script_component.hpp";

params ["_object"];

_object addAction ["Quick Selection", {}];
_object addAction ["   <t color='#ffd966'>Rifleman</t>", {[player,"C_R"] call Poppy_fnc_applyLoadout;}];
_object addAction ["   <t color='#ffd966'>Rifleman LAT</t>", {[player,"C_R"] call Poppy_fnc_applyLoadout;}];
_object addAction ["   <t color='#ffd966'>Rifleman HAT</t>", {[player,"C_R"] call Poppy_fnc_applyLoadout;}];
_object addAction ["   <t color='#ffd966'>Rifleman M-AR Assistant</t>", {[player,"C_R"] call Poppy_fnc_applyLoadout;}];
_object addAction ["   <t color='#ffd966'>Rifleman H-AR Assistant</t>", {[player,"C_R"] call Poppy_fnc_applyLoadout;}];
_object addAction ["   <t color='#ffd966'>Rifleman Ammo Bearer</t>", {[player,"C_R"] call Poppy_fnc_applyLoadout;}];