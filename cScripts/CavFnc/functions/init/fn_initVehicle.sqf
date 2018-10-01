#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function add eventhandelers adding cav functionality to all vehicles.
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_initVehicle
 *
 * Public: No
 */

#ifdef DEBUG_MODE
    ["Applying EH init to vehicles to handle inventory and settings."] call FUNC(logInfo);
#endif

//All helicopters
["RHS_UH60_Base", "init", {
    if (EGVAR(Settings,useCustomVehicleInventory)) then {(_this select 0) call FUNC(setVehicleInventory);};
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["RHS_UH60M_MEV", "init", {
    if (EGVAR(Settings,useCustomVehicleInventory)) then {(_this select 0) call FUNC(setVehicleInventory);};
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;

["RHS_CH_47F_base", "init", {
    if (EGVAR(Settings,useCustomVehicleInventory)) then {(_this select 0) call FUNC(setVehicleInventory);};
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["RHS_AH64_base", "init", {
    if (EGVAR(Settings,useCustomVehicleInventory)) then {(_this select 0) call FUNC(setVehicleInventory);};
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["RHS_C130J", "init", {
    if (EGVAR(Settings,useCustomVehicleInventory)) then {(_this select 0) call FUNC(setVehicleInventory);};
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;

// All cars
["rhsusf_hmmwe_base", "init", {
    if (EGVAR(Settings,useCustomVehicleInventory)) then {(_this select 0) call FUNC(setVehicleInventory);};
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["rhsusf_caiman_base", "init", {
    if (EGVAR(Settings,useCustomVehicleInventory)) then {(_this select 0) call FUNC(setVehicleInventory);};
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["rhsusf_rg33_base", "init", {
    if (EGVAR(Settings,useCustomVehicleInventory)) then {(_this select 0) call FUNC(setVehicleInventory);};
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["rhsusf_fmtv_base", "init", {
    if (EGVAR(Settings,useCustomVehicleInventory)) then {(_this select 0) call FUNC(setVehicleInventory);};
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["rhsusf_HEMTT_A4_base", "init", {
    if (EGVAR(Settings,useCustomVehicleInventory)) then {(_this select 0) call FUNC(setVehicleInventory);};
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["B_Truck_01_transport_F", "init", {
    if (EGVAR(Settings,useCustomVehicleInventory)) then {(_this select 0) call FUNC(setVehicleInventory);};
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;

["StrykerBase_DG1DES", "init", {
    if (EGVAR(Settings,useCustomVehicleInventory)) then {(_this select 0) call FUNC(setVehicleInventory);};
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["rhsusf_m113_usarmy", "init", {
    if (EGVAR(Settings,useCustomVehicleInventory)) then {(_this select 0) call FUNC(setVehicleInventory);};
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["rhsusf_m113_usarmy_medical", "init", {
    if (EGVAR(Settings,useCustomVehicleInventory)) then {(_this select 0) call FUNC(setVehicleInventory);};
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["RHS_M2A2_Base", "init", {
    if (EGVAR(Settings,useCustomVehicleInventory)) then {(_this select 0) call FUNC(setVehicleInventory);};
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;

["rhsusf_m1a1tank_base", "init", {
    if (EGVAR(Settings,useCustomVehicleInventory)) then {(_this select 0) call FUNC(setVehicleInventory);};
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["rhsusf_m109_usarmy", "init", {
    if (EGVAR(Settings,useCustomVehicleInventory)) then {(_this select 0) call FUNC(setVehicleInventory);};
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;


/*Mortar texturing for preplaced units, in honour of McGehee - Waldie.A & Brostrom
B_Mortar_01_F = NATO MORTAR, B_G_Mortar_01_F = FIA MORTAR*/

["B_Mortar_01_F", "init", {_this select 0 setObjectTextureGlobal [0,"cScripts\Data\Vehicles\McGehee\Mortar_McGehee_ceremonial_black.paa"];
}, true, [], true] call CBA_fnc_addClassEventHandler;

["B_G_Mortar_01_F", "init", {_this select 0 setObjectTextureGlobal [0,"cScripts\Data\Vehicles\McGehee\Mortar_McGehee_camo_Green.paa"];
}, true, [], true] call CBA_fnc_addClassEventHandler;
