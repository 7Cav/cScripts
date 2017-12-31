/*
 * Author: CPL.Brostrom.A
 * This is the rule set for the mission using the cba XEH. Each setting here is turned on and off
 * in the cfgSettings in the root folder.
 */ 
if (is3DEN) exitWith {};
#include "..\script_component.hpp";
FORCEINFO("Loading preInit");

if (getNumber (missionConfigFile >> "CfgSettings" >> "isMissionType") == 0) then {

};

if (getNumber (missionConfigFile >> "CfgSettings" >> "isMissionType") == 1) then {

};

if (getNumber (missionConfigFile >> "CfgSettings" >> "isMissionType") == 2) then {

};

if (getNumber (missionConfigFile >> "CfgSettings" >> "useCustomInit") == 1) then {

};

// NOTE! Should be loaded last
if (getNumber (missionConfigFile >> "CfgSettings" >> "use7cavZeusModules") == 1) then {
    call cScripts_fnc_initModules;
};

FORCEINFO("preInit loaded");
