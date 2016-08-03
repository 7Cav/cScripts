/*
 * Author: A.Brostrom
 * This script gives you the ability to select a squad patch.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Unit <UNIT>
 *
 * Example:
 * call cScripts_fnc_AddActionSquadInsignia;
 */

#include "..\script_component.hpp";

if (!isServer) exitWith {};

params ["_object"];

_object addAction ["   <t color='#66ff66'>Remove Insignia</t>", {[player,""] call BIS_fnc_setUnitInsignia;}];
_object addAction ["   <t color='#66ff66'>Squad Insignia 1/1/C/1-7</t>", { [player,"11C_17_Insignia"] call BIS_fnc_setUnitInsignia;}];
//_object addAction ["   <t color='#66ff66'>Squad Insignia 2/1/C/1-7</t>", { [player,"21C_17_Insignia"] call BIS_fnc_setUnitInsignia;}];
//_object addAction ["   <t color='#66ff66'>Squad Insignia 3/1/C/1-7</t>", { [player,"31C_17_Insignia"] call BIS_fnc_setUnitInsignia;}];
//_object addAction ["   <t color='#66ff66'>Squad Insignia 4/1/C/1-7</t>", { [player,"41C_17_Insignia"] call BIS_fnc_setUnitInsignia;}];
_object addAction ["   <t color='#66ff66'>Platoon Insignia 2/C/1-7</t>", { [player,"2C_17_Insignia"] call BIS_fnc_setUnitInsignia;}];