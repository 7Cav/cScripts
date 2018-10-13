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
    ["Applying EH init to vehicles to handle settings."] call FUNC(logInfo);
#endif

/* Add Settings to vehicles */

// All helicopters
["RHS_UH60_Base", "init", {
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["RHS_UH60M_MEV", "init", {
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;

["RHS_CH_47F_base", "init", {
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["RHS_AH64_base", "init", {
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["RHS_C130J", "init", {
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;

// All cars
["rhsusf_hmmwe_base", "init", {

    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["rhsusf_caiman_base", "init", {
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["rhsusf_rg33_base", "init", {
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["rhsusf_fmtv_base", "init", {

    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["rhsusf_HEMTT_A4_base", "init", {
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["B_Truck_01_transport_F", "init", {
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;

["StrykerBase_DG1DES", "init", {
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["rhsusf_m113_usarmy", "init", {
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["rhsusf_m113_usarmy_medical", "init", {
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["RHS_M2A2_Base", "init", {
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;

["rhsusf_m1a1tank_base", "init", {
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["rhsusf_m109_usarmy", "init", {
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;



/*Mortar texturing for preplaced units, in honour of McGehee - Waldie.A & Brostrom
B_Mortar_01_F = NATO MORTAR, B_G_Mortar_01_F = FIA MORTAR*/

["B_Mortar_01_F", "init", {
    _this select 0 setObjectTextureGlobal [0,"cScripts\Data\Vehicles\McGehee\Mortar_McGehee_ceremonial_black.paa"];
}, true, [], true] call CBA_fnc_addClassEventHandler;

["B_G_Mortar_01_F", "init", {
    _this select 0 setObjectTextureGlobal [0,"cScripts\Data\Vehicles\McGehee\Mortar_McGehee_camo_Green.paa"];
}, true, [], true] call CBA_fnc_addClassEventHandler;



/* Add inventory to all map vehicles */

if (EGVAR(Settings,useCustomVehicleInventory)) then {
    #ifdef DEBUG_MODE
        ["Applying inventory to all vehicles."] call FUNC(logInfo);
    #endif
    {[_x] call FUNC(setVehicleInventory);} forEach vehicles;
};