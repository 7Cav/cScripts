#include "functions\script_component.hpp"
DEBUG(INFO('Executing preInit'););

if (getNumber (missionConfigFile >> "CfgSettings" >> "isMissionType") == 0) then {
    
};

if (getNumber (missionConfigFile >> "CfgSettings" >> "isMissionType") == 1) then {

};

if (getNumber (missionConfigFile >> "CfgSettings" >> "isMissionType") == 2) then {

};
if (getNumber (missionConfigFile >> "CfgSettings" >> "useCustomInit") == 1) then {

};

if (getNumber (missionConfigFile >> "CfgSettings" >> "use7cavZeusModuels") == 1) then {
    [] call cScripts_fnc_initModuels;
};
