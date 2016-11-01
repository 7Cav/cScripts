/*
 * Author: CPL.Brostrom.A 
 * This run functions at the start of the mission.
 *
 * Arguments:
 *
 * Example:
 *  call cScripts_fnc_initMissionStartObjects
 */

if (isServer) then {
    ["I_officer_F", "init", {
        params ["_unit"];
        _unit setObjectTextureGlobal [0, 'BlackOrder\data\TERROR_U_Uniform_1.paa'];
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;
    
    ["AllVehicles", "init", {
        params ["_vehicle"];
        [_vehicle] call cScripts_fnc_initVehicle;
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;
    
    // Supply Crates
    ["B_CargoNet_01_ammo_F", "init", {
        params ["_vehicle"];
        [_vehicle] call cScripts_fnc_equipCrate;
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;    
    
    ["Box_NATO_Ammo_F", "init", {
        params ["_vehicle"];
        [_vehicle] call cScripts_fnc_equipCrateAmmo;
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;    
    ["Box_NATO_Wps_F", "init", {
        params ["_vehicle"];
        [_vehicle] call cScripts_fnc_equipCrateWeapons;
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;    
    ["Box_NATO_AmmoOrd_F", "init", {
        params ["_vehicle"];
        [_vehicle] call cScripts_fnc_equipCrateExplosives;
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;    
    ["Box_NATO_Grenades_F", "init", {
        params ["_vehicle"];
        [_vehicle] call cScripts_fnc_equipCrateGrenades;
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;    
    ["Box_NATO_WpsLaunch_F", "init", {
        params ["_vehicle"];
        [_vehicle] call cScripts_fnc_equipCrateLaunchers;
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;    
    ["Box_NATO_WpsSpecial_F", "init", {
        params ["_vehicle"];
        [_vehicle] call cScripts_fnc_equipCrateSpecialWeapons;
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;    
};