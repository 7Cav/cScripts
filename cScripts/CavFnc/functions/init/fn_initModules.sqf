#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function load all Cav modules. Requires Achilles to run propperly will not load this function otherwise.
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
 * Public: No
 */

// Check if Achilles is active else terminate
if !(isClass (configFile >> "CfgPatches" >> "achilles_data_f_ares")) exitWith {["cfgPatches for Achilles not detected, terminating modules."] call FUNC(logInfo);};

#ifdef DEBUG_MODE
    ["Initializing 7Cav custom Achilles Modules."] call FUNC(logInfo);
#endif

["7Cav Logistics", "Starter Crate",{
    [(_this select 0)] call FUNC(moduleCreateStarterCrate);    
}] call Ares_fnc_RegisterCustomModule;

// Check if increase training on location is true then add option.
if (ace_medical_increaseTrainingInLocations) then {
    ["7Cav Logistics", "Field Hospital",{
        [(_this select 0)] call FUNC(moduleCreateFieldHospital);
    }] call Ares_fnc_RegisterCustomModule;
};

["7Cav Logistics", "Re-supply Crate",{
    [(_this select 0)] call FUNC(moduleCreateSupplyCrate);
}] call Ares_fnc_RegisterCustomModule;

["7Cav Logistics", "Medical Re-supply Crate",{
    [(_this select 0)] call FUNC(moduleCreateMedicalCrate);
}] call Ares_fnc_RegisterCustomModule;

["7Cav Logistics", "Crew-Served Weapons Crate",{
    [(_this select 0)] call FUNC(moduleCreateSpecialWeaponsCrate);
}] call Ares_fnc_RegisterCustomModule;


["7Cav Vehicle", "Add Vehicle Lable",{
    [(_this select 1)] call FUNC(moduleApplyVehicleLable);
}] call Ares_fnc_RegisterCustomModule;


["7Cav Misc", "Apply Cav Flag",{
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

#ifdef DEBUG_MODE
    ["7Cav Custom Achilles Modules initialization complete"] call FUNC(logInfo);
#endif
