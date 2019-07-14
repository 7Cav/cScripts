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
    params ["_modulePos", "_objectPos"];
    [_modulePos] call FUNC(moduleCreateStarterCrate);    
}] call zen_custom_modules_fnc_register;

// Check if increase training on location is true then add option.
if (ace_medical_treatment_locationsBoostTraining) then {
    ["7Cav Logistics", "Field Hospital",{
        params ["_modulePos", "_objectPos"];
        [_modulePos] call FUNC(moduleCreateFieldHospital);
    }] call zen_custom_modules_fnc_register;
};

["7Cav Logistics", "Re-supply Crate",{
    params ["_modulePos", "_objectPos"];
    [_modulePos] call FUNC(moduleCreateSupplyCrate);
}] call zen_custom_modules_fnc_register;

["7Cav Logistics", "Medical Re-supply Crate",{
    params ["_modulePos", "_objectPos"];
    [_modulePos] call FUNC(moduleCreateMedicalCrate);
}] call zen_custom_modules_fnc_register;

["7Cav Logistics", "Crew-Served Weapons Crate",{
    params ["_modulePos", "_objectPos"];
    [_modulePos] call FUNC(moduleCreateSpecialWeaponsCrate);
}] call zen_custom_modules_fnc_register;


["7Cav Vehicle", "Add Vehicle Lable",{
    params ["_modulePos", "_objectPos"];
    [_objectPos] call FUNC(moduleApplyVehicleLable);
}] call zen_custom_modules_fnc_register;

["7Cav Vehicle", "Add Vehicle Inventory",{
    params ["_modulePos", "_objectPos"];
    [_objectPos] call FUNC(moduleApplyVehicleInventory);
}] call zen_custom_modules_fnc_register;

["7Cav Misc", "Assign Doctor",{
    params ["_modulePos", "_objectPos"];
    [_objectPos] call FUNC(moduleMakeDoctor);
}] call zen_custom_modules_fnc_register;

["7Cav Misc", "Assign Engineer",{
    params ["_modulePos", "_objectPos"];
    [_objectPos] call FUNC(moduleMakeEngineer);
}] call zen_custom_modules_fnc_register;


["7Cav Utilities", "Regerar Trooper",{
    params ["_modulePos", "_objectPos"];
    [_objectPos] call FUNC(moduleRegearTrooper);
}] call zen_custom_modules_fnc_register;


["7Cav Mission", "Call Endex",{
    params ["_modulePos", "_objectPos"];
    call FUNC(moduleCallEndex);
}] call zen_custom_modules_fnc_register;

#ifdef DEBUG_MODE
    ["7Cav Custom Zen Modules initialization complete"] call FUNC(logInfo);
#endif
