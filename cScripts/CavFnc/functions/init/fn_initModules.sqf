/*
 * Author: CPL.Brostrom.A
 * This function load all Cav moduels. Requires Achilles to run propperly will not load this function otherwise.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_initModules
 *
 */

#include "..\script_component.hpp";

// Check if Achilles is active else terminate
if !(isClass (configFile >> "CfgPatches" >> "achilles_data_f_ares")) exitWith {FORCEWARNING("cfgPatches for Achilles not detected, terminating modules.");};

INFO("Achilles mod found adding cav modules.");

["7Cav Logistics", "Starter Crate",{
    [(_this select 0)] call FUNC(moduleCreateStarterCrate);
}] call Ares_fnc_RegisterCustomModule;

// Check if increase training on location is true then add option.
if (ace_medical_increaseTrainingInLocations) then {
    ["7Cav Logistics", "Field Hospital",{
        [(_this select 0)] call FUNC(moduelCreateFieldHospital);
    }] call Ares_fnc_RegisterCustomModule;
};

["7Cav Logistics", "Re-supply Crate",{
    [(_this select 0)] call FUNC(moduelCreateSupplyCrate);
}] call Ares_fnc_RegisterCustomModule;

["7Cav Logistics", "Medical Re-supply Crate",{
    [(_this select 0)] call FUNC(moduelCreateMedicalCrate);
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

["7Cav Vehicle", "Add Vehicle Lable",{
    [(_this select 1)] call FUNC(moduleApplyVehicleLable);
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


["7Cav Utilities", "Regerar Trooper",{
    [(_this select 1)] call FUNC(moduleRegearTrooper);
}] call Ares_fnc_RegisterCustomModule;


["7Cav Mission", "Call Endex",{
    call FUNC(moduleCallEndex);
}] call Ares_fnc_RegisterCustomModule;

INFO("cav moduels successfully added.");
