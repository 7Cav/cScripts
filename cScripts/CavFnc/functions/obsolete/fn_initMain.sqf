/*
 * Author: CPL.Brostrom.A 
 * This is being replaced with addStarterCrate.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_initMain
 */

#include "..\script_component.hpp";

params [["_object", objNull, [objNull]]];

[_object] call FUNC(addStarterCrate);