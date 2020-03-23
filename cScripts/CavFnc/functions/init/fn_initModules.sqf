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

["7Cav Logistics", "Starter Crate",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call FUNC(moduleCreateStarterCrate);    
    },
    "\A3\ui_f\data\map\vehicleicons\iconCrate_ca.paa"
] call zen_custom_modules_fnc_register;

// Check if increase training on location is true then add option.
if (ace_medical_treatment_locationsBoostTraining) then {
    ["7Cav Logistics", "Field Hospital",
        {
            params ["_modulePos", "_objectPos"];
            [_modulePos, _objectPos] call FUNC(moduleCreateFieldHospital);
        },
        "\z\ACE\addons\medical_gui\ui\cross.paa"
    ] call zen_custom_modules_fnc_register;
};

["7Cav Logistics", "Re-supply Crate",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call FUNC(moduleCreateSupplyCrate);
    },
    "\A3\ui_f\data\map\vehicleicons\iconCrate_ca.paa"
] call zen_custom_modules_fnc_register;

["7Cav Logistics", "Medical Re-supply Crate",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call FUNC(moduleCreateMedicalCrate);
    },
    "\z\ACE\addons\medical_gui\ui\cross.paa"
] call zen_custom_modules_fnc_register;

["7Cav Logistics", "Crew-Served Weapons Crate",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call FUNC(moduleCreateSpecialWeaponsCrate);
    },
    "\A3\ui_f\data\map\vehicleicons\iconCrate_ca.paa"
] call zen_custom_modules_fnc_register;


["7Cav Vehicle", "Add Vehicle Lable",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call FUNC(moduleApplyVehicleLable);
    },
    "\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;

["7Cav Vehicle", "Add Vehicle Inventory",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call FUNC(moduleApplyVehicleInventory);
    },
    "\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;

["7Cav Misc", "Assign Doctor",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call FUNC(moduleMakeDoctor);
    },
    "\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;

["7Cav Misc", "Assign Engineer",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call FUNC(moduleMakeEngineer);
    },
    "\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;


["7Cav Utilities", "Regerar Trooper",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call FUNC(moduleRegearTrooper);
    },
    "\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;


["7Cav Mission", "Call Endex",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call FUNC(moduleCallEndex);
    },
    "\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;

#ifdef DEBUG_MODE
    ["7Cav Custom Zen Modules initialization complete"] call FUNC(logInfo);
#endif
