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
 * call cScripts_fnc_init_zenModuels
 *
 * Public: No
 */

if !(EGVAR(patches,usesZen)) exitWith {};
if !(EGVAR(Settings,enable7cavZeusModules)) exitWith {};

#ifdef DEBUG_MODE
    ["Initializing 7Cav custom Zen Modules.", "init"] call FUNC(info);
#endif

["7Cav AI", "Enable Unit Simulation",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call EFUNC(zenModule,EnableUnitSimulation);    
    },
    "\A3\ui_f\data\map\vehicleicons\iconManVirtual_ca.paa"
] call zen_custom_modules_fnc_register;


["7Cav Logistics", "Starter Crate",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call EFUNC(zenModule,CreateStarterCrate);    
    },
    "\A3\ui_f\data\map\vehicleicons\iconCrate_ca.paa"
] call zen_custom_modules_fnc_register;

// Check if increase training on location is true then add option.
if (ace_medical_treatment_locationsBoostTraining) then {
    ["7Cav Logistics", "Field Hospital",
        {
            params ["_modulePos", "_objectPos"];
            [_modulePos, _objectPos] call EFUNC(zenModule,CreateFieldHospital);
        },
        "\z\ACE\addons\medical_gui\ui\cross.paa"
    ] call zen_custom_modules_fnc_register;
};

["7Cav Logistics", "Re-supply Crate",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call EFUNC(zenModule,CreateSupplyCrate);
    },
    "\A3\ui_f\data\map\vehicleicons\iconCrate_ca.paa"
] call zen_custom_modules_fnc_register;

["7Cav Utilities", "Regerar Trooper",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call EFUNC(zenModule,RegearTrooper);
    },
    "\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;

if (EGVAR(Settings,enableACRE)) then {
    ["7Cav Utilities", "Reset Radio",
        {
            params ["_modulePos", "_objectPos"];
            [_modulePos, _objectPos] call EFUNC(zenModule,ResetPlayerRadio);
        },
        "\a3\modules_f\data\portraitmodule_ca.paa"
    ] call zen_custom_modules_fnc_register;
};


["7Cav Mission", "Call Endex",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call EFUNC(zenModule,CallEndex);
    },
    "\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;

["7Cav Mission", "Take attendence",
    {
        private _playerLog = missionNamespace getVariable [QEGVAR(log,players), []];
        ["All attended players have been saved to your RPT log"] call zen_common_fnc_showMessage;
    },
    "\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;

["7Cav Mission", "Staging Zones",
    {
        params ["_modulePos", "_objectPos"];
        [_modulePos, _objectPos] call EFUNC(zenModule,stagingZones);
    },
    "\a3\modules_f\data\portraitmodule_ca.paa"
] call zen_custom_modules_fnc_register;

#ifdef DEBUG_MODE
    ["7Cav Custom Zen Modules initialization complete", "init"] call FUNC(info);
#endif