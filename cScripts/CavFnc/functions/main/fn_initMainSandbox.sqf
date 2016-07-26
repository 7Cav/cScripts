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

call FUNC(equipBase);