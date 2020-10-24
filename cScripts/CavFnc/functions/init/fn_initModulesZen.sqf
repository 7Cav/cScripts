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
 * call cScripts_fnc_initModulesZen
 *
 * Public: No
 */

// Check if Zen is active else terminate
if !(EGVAR(patches,usesZen)) exitWith {};

#ifdef DEBUG_MODE
    ["Initializing 7Cav custom Zen Modules.", "initModulesZen"] call FUNC(logInfo);
#endif

["7Cav AI", "Enable Unit Simulation",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call FUNC(zenModuleEnableUnitSimulation);    
    },
    "\A3\ui_f\data\map\vehicleicons\iconManVirtual_ca.paa"
] call zen_custom_modules_fnc_register;


["7Cav Logistics", "Starter Crate",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call FUNC(zenModuleCreateStarterCrate);    
    },
    "\A3\ui_f\data\map\vehicleicons\iconCrate_ca.paa"
] call zen_custom_modules_fnc_register;

// Check if increase training on location is true then add option.
if (ace_medical_treatment_locationsBoostTraining) then {
    ["7Cav Logistics", "Field Hospital",
        {
            params ["_modulePos", "_objectPos"];
            [_modulePos, _objectPos] call FUNC(zenModuleCreateFieldHospital);
        },
        "\z\ACE\addons\medical_gui\ui\cross.paa"
    ] call zen_custom_modules_fnc_register;
};

["7Cav Logistics", "Re-supply Crate",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call FUNC(zenModuleCreateSupplyCrate);
    },
    "\A3\ui_f\data\map\vehicleicons\iconCrate_ca.paa"
] call zen_custom_modules_fnc_register;

/* ["7Cav Logistics", "Medical Re-supply Crate",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call FUNC(zenModuleCreateMedicalCrate);
    },
    "\z\ACE\addons\medical_gui\ui\cross.paa"
] call zen_custom_modules_fnc_register; */

/* ["7Cav Logistics", "Crew-Served Weapons Crate",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call FUNC(zenModuleCreateSpecialWeaponsCrate);
    },
    "\A3\ui_f\data\map\vehicleicons\iconCrate_ca.paa"
] call zen_custom_modules_fnc_register; */


/* ["7Cav Vehicle", "Add Vehicle Lable",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call FUNC(zenModuleApplyVehicleLable);
    },
    "\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register; */

/* ["7Cav Vehicle", "Add Vehicle Inventory",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call FUNC(zenModuleApplyVehicleInventory);
    },
    "\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register; */

/* ["7Cav Misc", "Assign Doctor",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call FUNC(zenModuleMakeDoctor);
    },
    "\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register; */

/* ["7Cav Misc", "Assign Engineer",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call FUNC(zenModuleMakeEngineer);
    },
    "\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register; */


["7Cav Utilities", "Regerar Trooper",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call FUNC(zenModuleRegearTrooper);
    },
    "\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;


["7Cav Mission", "Call Endex",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call FUNC(zenModuleCallEndex);
    },
    "\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;

#ifdef DEBUG_MODE
    ["7Cav Custom Zen Modules initialization complete", "initModulesZen"] call FUNC(logInfo);
#endif