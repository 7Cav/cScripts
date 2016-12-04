/*
 * Author: CPL.Brostrom.A 
 * This function is executed on all object of a given classname both on mission start and ongoing mission.
 *
 * Arguments:
 *
 * Example:
 *  call cScripts_fnc_init;
 */

#include "..\script_component.hpp";

if (isServer) then {
    ["AllVehicles", "init", {
        params ["_vehicle"];
        [_vehicle] call cScripts_fnc_initVehicle;
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;
    
    ["RHS_UH60M", "init", {
        params ["_vehicle"];
        [_vehicle] call cScripts_fnc_addGetOutUH60;
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;
    
    // Supply Crates
    ["B_CargoNet_01_ammo_F", "init", {
        params ["_vehicle"];
        [_vehicle] call cScripts_fnc_doSupplyCrate;
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;    
    
    // NATO Basic Crates
    ["Box_NATO_Ammo_F", "init", {
        params ["_vehicle"];
        [_vehicle] call cScripts_fnc_doAmmoCrate;
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;    
    ["Box_NATO_Wps_F", "init", {
        params ["_vehicle"];
        [_vehicle] call cScripts_fnc_doWeaponsCrate;
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;    
    ["Box_NATO_AmmoOrd_F", "init", {
        params ["_vehicle"];
        [_vehicle] call cScripts_fnc_doExplosivesCrate;
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;    
    ["Box_NATO_Grenades_F", "init", {
        params ["_vehicle"];
        [_vehicle] call cScripts_fnc_doGrenadesCrate;
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;    
    ["Box_NATO_WpsLaunch_F", "init", {
        params ["_vehicle"];
        [_vehicle] call cScripts_fnc_doLaunchersCrate;
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;    
    ["Box_NATO_WpsSpecial_F", "init", {
        params ["_vehicle"];
        [_vehicle] call cScripts_fnc_doSpecialWeaponsCrate;;
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;    
};