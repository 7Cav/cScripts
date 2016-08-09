/*
 * Author: A.Brostrom
 * This changes a flag texture to better one. (Works on all flags)
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_flag;
 */

#include "..\script_component.hpp";

params ["_object"];

_object setFlagTexture "\cScripts\Data\Objects\Flag_7CAV_00.paa";