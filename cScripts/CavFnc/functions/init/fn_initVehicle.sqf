/*
 * Author: CPL.Brostrom.A
 * This checks common class names used for the 7cav and sets them as Cav Vehicle.
 *
 * Example:
 * call cScripts_fnc_initVehicle;
 */

#include "..\script_component.hpp";
if (!isServer) exitWith {};

//All helicopters
["RHS_UH60_Base", "init", {
    (_this select 0) call FUNC(setCavVehicle);
}, nil, nil, true] call CBA_fnc_addClassEventHandler;
["RHS_UH60M_MEV", "init", {
    (_this select 0) call FUNC(setCavVehicle);
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["RHS_CH_47F_base", "init", {
    (_this select 0) call FUNC(setCavVehicle);
}, nil, nil, true] call CBA_fnc_addClassEventHandler;
["RHS_AH64_base", "init", {
    (_this select 0) call FUNC(setCavVehicle);
}, nil, nil, true] call CBA_fnc_addClassEventHandler;
["RHS_C130J", "init", {
    (_this select 0) call FUNC(setCavVehicle);
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

// All cars
["rhsusf_hmmwe_base", "init", {
    (_this select 0) call FUNC(setCavVehicle);
}, nil, nil, true] call CBA_fnc_addClassEventHandler;
["rhsusf_rg33_base", "init", {
    (_this select 0) call FUNC(setCavVehicle);
}, nil, nil, true] call CBA_fnc_addClassEventHandler;
["rhsusf_fmtv_base", "init", {
    (_this select 0) call FUNC(setCavVehicle);
}, nil, nil, true] call CBA_fnc_addClassEventHandler;
["rhsusf_HEMTT_A4_base", "init", {
    (_this select 0) call FUNC(setCavVehicle);
}, nil, nil, true] call CBA_fnc_addClassEventHandler;
["B_Truck_01_transport_F", "init", {
    (_this select 0) call FUNC(setCavVehicle);
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["StrykerBase_DG1DES", "init", {
    (_this select 0) call FUNC(setCavVehicle);
}, nil, nil, true] call CBA_fnc_addClassEventHandler;
["rhsusf_m113_usarmy", "init", {
    (_this select 0) call FUNC(setCavVehicle);
}, nil, nil, true] call CBA_fnc_addClassEventHandler;
["rhsusf_m113_usarmy_medical", "init", {
    (_this select 0) call FUNC(setCavVehicle);
}, nil, nil, true] call CBA_fnc_addClassEventHandler;
["RHS_M2A2_Base", "init", {
    (_this select 0) call FUNC(setCavVehicle);
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

["rhsusf_m1a1tank_base", "init", {
    (_this select 0) call FUNC(setCavVehicle);
}, nil, nil, true] call CBA_fnc_addClassEventHandler;
["rhsusf_m109_usarmy", "init", {
    (_this select 0) call FUNC(setCavVehicle);
}, nil, nil, true] call CBA_fnc_addClassEventHandler;
