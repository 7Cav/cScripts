/*
 * Author: A.Brostrom
 * This populats a given object with items and commands used during operations.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Example:
 * [] call cScripts_fnc_initMain;
 */

#include "..\script_component.hpp";

if (!isServer) exitWith {};

params ["_object"];

call FUNC(equipBase);
_object addAction ["<t color='#ffc61a'>ReGear</t>", {[] call Poppy_fnc_applyLoadout;}];
call FUNC(initInsignia);