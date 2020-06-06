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
 * call cScripts_fnc_initModulesAchilles
 *
 * Public: No
 */

// Check if Achilles is active else terminate
if !(EGVAR(patches,usesAchilles)) exitWith {};
if (EGVAR(patches,usesZen)) exitWith {["Zen mod detected, terminating Achilies modules.", "initModulesAchilles"] call FUNC(logInfo);};

#ifdef DEBUG_MODE
    ["Initializing 7Cav custom Achilles Modules."] call FUNC(logInfo);
#endif

["7Cav Logistics", "Starter Crate",{
    [(_this select 0)] call FUNC(achillesMCreateStarterCrate);    
}] call Ares_fnc_RegisterCustomModule;

// Check if increase training on location is true then add option.
if (ace_medical_treatment_locationsBoostTraining) then {
    ["7Cav Logistics", "Field Hospital",{
        [(_this select 0)] call FUNC(achillesMCreateFieldHospital);
    }] call Ares_fnc_RegisterCustomModule;
};

["7Cav Logistics", "Re-supply Crate",{
    [(_this select 0)] call FUNC(achillesMCreateSupplyCrate);
}] call Ares_fnc_RegisterCustomModule;

["7Cav Logistics", "Medical Re-supply Crate",{
    [(_this select 0)] call FUNC(achillesMCreateMedicalCrate);
}] call Ares_fnc_RegisterCustomModule;

["7Cav Logistics", "Crew-Served Weapons Crate",{
    [(_this select 0)] call FUNC(achillesMCreateSpecialWeaponsCrate);
}] call Ares_fnc_RegisterCustomModule;


["7Cav Vehicle", "Add Vehicle Lable",{
    [(_this select 1)] call FUNC(achillesMApplyVehicleLable);
}] call Ares_fnc_RegisterCustomModule;

["7Cav Vehicle", "Add Vehicle Inventory",{
    [(_this select 1)] call FUNC(achillesMApplyVehicleInventory);
}] call Ares_fnc_RegisterCustomModule;

["7Cav Misc", "Assign Doctor",{
    [(_this select 1)] call FUNC(achillesMMakeDoctor);
}] call Ares_fnc_RegisterCustomModule;

["7Cav Misc", "Assign Engineer",{
    [(_this select 1)] call FUNC(achillesMMakeEngineer);
}] call Ares_fnc_RegisterCustomModule;


["7Cav Utilities", "Regerar Trooper",{
    [(_this select 1)] call FUNC(achillesMRegearTrooper);
}] call Ares_fnc_RegisterCustomModule;


if !(EGVAR(patches,usesAlive)) then {
    ["7Cav Mission", "Call Endex",{
        call FUNC(achillesMCallEndex);
    }] call Ares_fnc_RegisterCustomModule;
};

if (EGVAR(patches,usesAlive)) then {
    ["7Cav Mission", "Add to alive",{
        call FUNC(achillesMAddToAlive);
    }] call Ares_fnc_RegisterCustomModule;
};


#ifdef DEBUG_MODE
    ["7Cav Custom Achilles Modules initialization complete"] call FUNC(logInfo);
#endif
