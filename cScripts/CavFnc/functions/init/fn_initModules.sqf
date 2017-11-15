/*
 * Author: CPL.Brostrom.A 
 * This function adds the get out right and left function to all supported helos.
 *
 * Arguments:
 *
 * Example:
 * call cScripts_fnc_initModules;
 */
 
#include "..\script_component.hpp";

["7Cav Logistics", "Create Starter Crate",{
    [(_this select 0)] call FUNC(moduleCreateStarterCrate);
}] call Ares_fnc_RegisterCustomModule;

/*["7Cav Logistics", "Transform to Cav Supply",{
    [(_this select 1)] call FUNC(moduleApplySupply);
}] call Ares_fnc_RegisterCustomModule;

["7Cav Logistics", "Transform to Vehicle",{
    [(_this select 1)] call FUNC(initVehicle;
}] call Ares_fnc_RegisterCustomModule;
*/

["7Cav Helicopters", "Add Get Out Right/Left",{
    [(_this select 1)] call FUNC(moduleReadyHelicopter);
}] call Ares_fnc_RegisterCustomModule;

["7Cav Helicopters", "Add Tail Number",{
    [(_this select 1)] call FUNC(moduleApplyTailNumber);
}] call Ares_fnc_RegisterCustomModule;

["7Cav Misc", "Transform to Cav Flag",{
    [(_this select 1)] call FUNC(moduleApplyFlag);
}] call Ares_fnc_RegisterCustomModule;
