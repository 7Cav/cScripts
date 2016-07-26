/*
 * Author: A.Brostrom
 * This populats a given object with items and commands used during operations.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_initMain;
 */

#include "..\script_component.hpp";

if (!isServer) exitWith {};

call FUNC(equipBase);