#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function add eventhandelers chaning the inventory of all crates.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_initSupply
 *
 * Public: No
 */

if (!isServer) exitWith {};

#ifdef DEBUG_MODE
    ["Applying EH init to supply crates to handle inventory and settings."] call FUNC(logInfo);
#endif

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
