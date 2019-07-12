#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function load all Cav modules. Requires Zen Mod to run propperly. The function will terminate if not.
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

// Check if Zen is active else terminate
if !(isClass (configFile >> "CfgPatches" >> "zen_main")) exitWith {["cfgPatches for Zen not detected, terminating modules."] call FUNC(logInfo);};

#ifdef DEBUG_MODE
    ["Initializing 7Cav custom Zen Modules."] call FUNC(logInfo);
#endif

["7Cav Logistics", "Starter Crate",{
    [(_this select 0)] call FUNC(moduleCreateStarterCrate);    
}] call zen_custom_modules_fnc_register;

// Check if increase training on location is true then add option.
if (ace_medical_treatment_locationsBoostTraining) then {
    ["7Cav Logistics", "Field Hospital",{
        [(_this select 0)] call FUNC(moduleCreateFieldHospital);
    }] call zen_custom_modules_fnc_register;
};

["7Cav Logistics", "Re-supply Crate",{
    [(_this select 0)] call FUNC(moduleCreateSupplyCrate);
}] call zen_custom_modules_fnc_register;

["7Cav Logistics", "Medical Re-supply Crate",{
    [(_this select 0)] call FUNC(moduleCreateMedicalCrate);
}] call zen_custom_modules_fnc_register;

["7Cav Logistics", "Crew-Served Weapons Crate",{
    [(_this select 0)] call FUNC(moduleCreateSpecialWeaponsCrate);
}] call zen_custom_modules_fnc_register;


["7Cav Vehicle", "Add Vehicle Lable",{
    [(_this select 1)] call FUNC(moduleApplyVehicleLable);
}] call zen_custom_modules_fnc_register;

["7Cav Vehicle", "Add Vehicle Inventory",{
    [(_this select 1)] call FUNC(moduleApplyVehicleInventory);
}] call zen_custom_modules_fnc_register;

["7Cav Misc", "Assign Doctor",{
    [(_this select 1)] call FUNC(moduleMakeDoctor);
}] call zen_custom_modules_fnc_register;

["7Cav Misc", "Assign Engineer",{
    [(_this select 1)] call FUNC(moduleMakeEngineer);
}] call zen_custom_modules_fnc_register;


["7Cav Utilities", "Regerar Trooper",{
    [(_this select 1)] call FUNC(moduleRegearTrooper);
}] call zen_custom_modules_fnc_register;


["7Cav Mission", "Call Endex",{
    call FUNC(moduleCallEndex);
}] call zen_custom_modules_fnc_register;

#ifdef DEBUG_MODE
    ["7Cav Custom Zen Modules initialization complete"] call FUNC(logInfo);
#endif
