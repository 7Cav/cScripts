#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A 
 * This add or change a given flag poles flag to a new and better one.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: flagType <INTEGER>   (Default: 0)  [0 (Crossed swords),1 (Crossed swords with Cut),2 (Black Coat of arms)]
 *
 * Example:
 * [this] call cScripts_fnc_flag;
 * [this,0] call cScripts_fnc_flag;
 */

params [["_object", objNull, [objNull]],["_flagType", 0]];

if ((_flagType == 0)) then {
    _object setFlagTexture "cScripts\Data\Objects\Flag_7CAV_00.paa";
};
if ((_flagType == 1)) then {
    _object setFlagTexture "cScripts\Data\Objects\Flag_7CAV_02.paa";
};
if ((_flagType == 2)) then {
    _object setFlagTexture "cScripts\Data\Objects\Flag_7CAV_01.paa";
};