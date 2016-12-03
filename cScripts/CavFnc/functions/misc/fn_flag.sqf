/*
 * Author: CPL.Brostrom.A 
 * This add or change a given flag poles flag to a new and better one.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_flag;
 */

#include "..\script_component.hpp";

params [["_object", objNull, [objNull]]];

_object setFlagTexture "cScripts\Data\Objects\Flag_7CAV_00.paa";