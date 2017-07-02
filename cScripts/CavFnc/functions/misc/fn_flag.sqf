/*
 * Author: CPL.Brostrom.A 
 * This add or change a given flag poles flag to a new and better one.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: flagType <STRING>   (Default: "yellow")  ["yellow","black"]
 *
 * Example:
 * [this] call cScripts_fnc_flag;
 * [this,"yellow"] call cScripts_fnc_flag;
 */

#include "..\script_component.hpp";

params [["_object", objNull, [objNull]],["_flagType", "yellow"]];

if ((_flagType == "yellow")) then {
    _object setFlagTexture "cScripts\Data\Objects\Flag_7CAV_00.paa";
};
if ((_flagType == "black")) then {
    _object setFlagTexture "cScripts\Data\Objects\Flag_7CAV_01.paa";
};
