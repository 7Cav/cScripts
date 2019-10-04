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
    ["Applying Event Handers (init) to vehicles for function expantions..."] call FUNC(logInfo);
#endif

/* Add Settings to vehicles */

["RHS_C130J_Base", "init", {
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;

["Helicopter_Base_F", "init", {
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;

// Fortification Vehicles 
["rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_wd", "init", {
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["rhsusf_M977A4_REPAIR_BKIT_usarmy_wd", "init", {
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["rhsusf_M977A4_REPAIR_usarmy_wd", "init", {
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["rhsusf_M1078A1P2_B_CP_fmtv_usarmy", "init", {
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["rhsusf_M1239_M2_Deploy_socom_d", "init", {
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["rhsusf_M1239_MK19_Deploy_socom_d", "init", {
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
        ["Applying inventory to vehicles..."] call FUNC(logInfo);
    #endif
    {[_x] call FUNC(setVehicleInventory);} forEach vehicles;
};