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
    [(_this select 1)] call FUNC(moduelApplyStarterCrate);
}] call Ares_fnc_RegisterCustomModule;

["7Cav Logistics", "Transform to Cav Supply",{
    [(_this select 1)] call FUNC(moduelApplySupply);
}] call Ares_fnc_RegisterCustomModule;
/*
["7Cav Logistics", "Transform to Vehicle",{
    [(_this select 1)] call FUNC(initVehicle;
}] call Ares_fnc_RegisterCustomModule;
*/

["7Cav Helicopters", "Add Get Out Right/Left",{
    [(_this select 1)] call FUNC(moduelReadyHelicopter);
}] call Ares_fnc_RegisterCustomModule;

["7Cav Helicopters", "Add Tail Number",{
    [(_this select 1)] call FUNC(moduelApplyTailNumber);
}] call Ares_fnc_RegisterCustomModule;

["7Cav Misc", "Transform to Cav Flag",{
    [(_this select 1)] call FUNC(moduelApplyFlag);
}] call Ares_fnc_RegisterCustomModule;
