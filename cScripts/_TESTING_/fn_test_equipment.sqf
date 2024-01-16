TEST_INIT(Equipment)
#include "script_component.hpp";

private _database = [true] call cScripts_fnc_logistics_getAllContainerItems;


private _configLoadouts = configProperties [missionconfigfile >> "CfgLoadouts", "getNumber (_x >> 'scope') >= 1", true];

{
    private _class = configName _x;
    lOG_1("Testing loadout %1", _class);
    
} forEach _configLoadouts