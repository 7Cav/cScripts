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

// Check if Achilles is active else terminate
if !(isClass (configFile >> "CfgPatches" >> "achilles_data_f_ares")) exitWith {FORCEWARNING("cfgPatches for Achilles not detected, terminating modules.");};

INFO("Achilles mod found adding modules.");

["7Cav Logistics", "Starter Crate",{
    [(_this select 0)] call FUNC(moduleCreateStarterCrate);
}] call Ares_fnc_RegisterCustomModule;

["7Cav Logistics", "Re-supply Crate",{
    [(_this select 0)] call FUNC(moduelCreateSupplyCrate);
}] call Ares_fnc_RegisterCustomModule;

["7Cav Logistics", "Crew-Served Weapons Crate",{
    [(_this select 0)] call FUNC(moduelCreateSpecialWeaponsCrate);
}] call Ares_fnc_RegisterCustomModule;


/*["7Cav Logistics", "Transform to Cav Supply",{
    [(_this select 1)] call FUNC(moduleApplySupply);
}] call Ares_fnc_RegisterCustomModule;

["7Cav Logistics", "Transform to Vehicle",{
    [(_this select 1)] call FUNC(initVehicle);
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

["7Cav Misc", "Assign Doctor",{
    [(_this select 1)] call FUNC(moduleMakeDoctor);
}] call Ares_fnc_RegisterCustomModule;

["7Cav Misc", "Assign Engineer",{
    [(_this select 1)] call FUNC(moduleMakeEngineer);
}] call Ares_fnc_RegisterCustomModule;
