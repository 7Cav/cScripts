/*
 * Author: CPL.Brostrom.A 
 * This function adds the get out right and left function to all supported helos.
 *
 * Arguments:
 *
 * Example:
 * call cScripts_fnc_initModuels;
 */
 
#include "..\script_component.hpp";


["7Cav Logistics", "Transform to Starter Crate",{
    if (getNumber (missionConfigFile >> "CfgSettings" >> "isMissionType") == 2) then {
        [(_this select 1),"none",true,true,true,1] call FUNC(moduelApplyStarterCrate);
    } else {
        [(_this select 1)] call FUNC(moduelApplyStarterCrate);
    };
}] call Ares_fnc_RegisterCustomModule;

["7Cav Logistics", "Transform to Cav Supply",{
    [(_this select 1)] call FUNC(moduelApplySupply);
}] call Ares_fnc_RegisterCustomModule;
/*
["7Cav Logistics", "Transform to Vehicle",{
    [(_this select 1)] call FUNC(initVehicle;
}] call Ares_fnc_RegisterCustomModule;
*/
["7Cav Helicopters", "Ready Helicopter",{
    [(_this select 1)] call FUNC(moduelReadyHelicopter);
}] call Ares_fnc_RegisterCustomModule;
["7Cav Helicopters", "Add Tail Number: B1",{
    [(_this select 1),"b1"] call FUNC(moduelApplyTailNumber);
}] call Ares_fnc_RegisterCustomModule;
["7Cav Helicopters", "Add Tail Number: B2",{
    [(_this select 1),"b2"] call FUNC(moduelApplyTailNumber);
}] call Ares_fnc_RegisterCustomModule;
["7Cav Helicopters", "Add Tail Number: B3",{
    [(_this select 1),"b3"] call FUNC(moduelApplyTailNumber);
}] call Ares_fnc_RegisterCustomModule;
["7Cav Helicopters", "Add Tail Number: B4",{
    [(_this select 1),"b4"] call FUNC(moduelApplyTailNumber);
}] call Ares_fnc_RegisterCustomModule;
/*
["7Cav Misc", "Add the Yellow 7Cav Flag",{
    [(_this select 1), "yellow"] call FUNC(flag);
}] call Ares_fnc_RegisterCustomModule;
["7Cav Misc", "Add the Black 7Cav Flag",{
    [(_this select 1), "black"] call FUNC(flag);
}] call Ares_fnc_RegisterCustomModule;
*/