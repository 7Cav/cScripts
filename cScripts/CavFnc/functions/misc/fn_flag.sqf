/*
 * Author: CPL.Brostrom.A 
 * This changes a given flag texture to a better one. (Works on all flag poles)
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_flag
 */

#include "..\script_component.hpp";

params [["_object", objNull, [objNull]]];

_object setFlagTexture "cScripts\Data\Objects\Flag_7CAV_00.paa";