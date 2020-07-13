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
    ["Applying Event Handers (init) to vehicles for function expantions...", "InitVehicle"] call FUNC(logInfo);
#endif

/* Add Settings to vehicles */

["Plane_Base_F", "init", {
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["Helicopter_Base_F", "init", {
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;
["MBT_01_base_F", "init", {
    (_this select 0) call FUNC(setVehicleSettings);
}, true, [], true] call CBA_fnc_addClassEventHandler;

// Fortification Vehicles 
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

/* Add inventory to all map vehicles */
if (EGVAR(Settings,useCustomVehicleInventory)) then {
    #ifdef DEBUG_MODE
        ["Applying inventory to vehicles...", "InitVehicle"] call FUNC(logInfo);
    #endif
    {[_x] call FUNC(setVehicleInventory);} forEach vehicles;
};