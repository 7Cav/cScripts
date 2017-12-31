/*
 * Author: CPL.Brostrom.A
 * This function is executed on all object of a given classname both on mission start and ongoing mission.
 *
 * Arguments:
 *
 * Example:
 *  call cScripts_fnc_initSupply;
 */

#include "..\script_component.hpp";
if (!isServer) exitWith {};

// Supply Crates
["B_CargoNet_01_ammo_F", "init", {
    [(_this select 0)] call FUNC(doSupplyCrate);
}, nil, nil, true] call CBA_fnc_addClassEventHandler;

// NATO Basic Crates
["Box_NATO_Ammo_F", "init", {
    [(_this select 0)] call FUNC(doAmmoCrate);
}, nil, nil, true] call CBA_fnc_addClassEventHandler;
["Box_NATO_Wps_F", "init", {
    [(_this select 0)] call FUNC(doWeaponsCrate);
}, nil, nil, true] call CBA_fnc_addClassEventHandler;
["Box_NATO_AmmoOrd_F", "init", {
    [(_this select 0)] call FUNC(doExplosivesCrate);
}, nil, nil, true] call CBA_fnc_addClassEventHandler;
["Box_NATO_Grenades_F", "init", {
    [(_this select 0)] call FUNC(doGrenadesCrate);
}, nil, nil, true] call CBA_fnc_addClassEventHandler;
["Box_NATO_WpsLaunch_F", "init", {
    [(_this select 0)] call FUNC(doLaunchersCrate);
}, nil, nil, true] call CBA_fnc_addClassEventHandler;
["Box_NATO_WpsSpecial_F", "init", {
    [(_this select 0)] call FUNC(doSpecialWeaponsCrate);
}, nil, nil, true] call CBA_fnc_addClassEventHandler;
