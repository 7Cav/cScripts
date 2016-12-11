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
        [(_this select 0)] call FUNC(initVehicle);
    }, true, [], true] call CBA_fnc_addClassEventHandler;

    ["RHS_UH60M", "init", {
        [(_this select 0)] call cScripts_fnc_addGetOutUH60;
    }, true, [], true] call CBA_fnc_addClassEventHandler;

    // Supply Crates
    ["B_CargoNet_01_ammo_F", "init", {
        [(_this select 0)] call FUNC(equipCrateAmmo);
    }, true, [], true] call CBA_fnc_addClassEventHandler;

    // NATO Basic Crates
    ["Box_NATO_Ammo_F", "init", {
        [(_this select 0)] call FUNC(equipCrateAmmo);
    }, true, [], true] call CBA_fnc_addClassEventHandler;
    ["Box_NATO_Wps_F", "init", {
        [(_this select 0)] call FUNC(equipCrateWeapons);
    }, true, [], true] call CBA_fnc_addClassEventHandler;
    ["Box_NATO_AmmoOrd_F", "init", {
        [(_this select 0)] call FUNC(equipCrateExplosives);
    }, true, [], true] call CBA_fnc_addClassEventHandler;
    ["Box_NATO_Grenades_F", "init", {
        [(_this select 0)] call FUNC(equipCrateGrenades);
    }, true, [], true] call CBA_fnc_addClassEventHandler;
    ["Box_NATO_WpsLaunch_F", "init", {
        [(_this select 0)] call FUNC(equipCrateLaunchers);
    }, true, [], true] call CBA_fnc_addClassEventHandler;
    ["Box_NATO_WpsSpecial_F", "init", {
        [(_this select 0)] call FUNC(equipCrateSpecialWeapons);
    }, true, [], true] call CBA_fnc_addClassEventHandler;
};
