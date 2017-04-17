/*
 * Author: CPL.Brostrom.A 
 * This function adds specialiced supply to a crate OR a platoon sized resuply crate.
 *
 * Arguments:
 *
 * Example:
 *  call cScripts_fnc_moduelApplySupply;
 */

#include "..\script_component.hpp";

if (!isServer) exitWith {};

params [["_crate", objNull, [objNull]]];

_crateType = [
    "CargoNet_01_box_F","B_CargoNet_01_ammo_F",
    "Box_IND_Ammo_F","Box_T_East_Ammo_F","Box_East_Ammo_F","Box_NATO_Ammo_F","Box_Syndicate_Ammo_F",
    "Box_IND_Wps_F","Box_T_East_Wps_F","Box_East_Wps_F","Box_T_NATO_Wps_F","Box_NATO_Wps_F","Box_Syndicate_Wps_F",
    "Box_IND_WpsSpecial_F","Box_T_East_WpsSpecial_F","Box_East_WpsSpecial_F","Box_T_NATO_WpsSpecial_F","Box_NATO_WpsSpecial_F",
    "Box_IND_Grenades_F","Box_East_Grenades_F","Box_NATO_Grenades_F",
    "Box_IED_Exp_F","Box_IND_AmmoOrd_F","Box_East_AmmoOrd_F","Box_NATO_AmmoOrd_F"
];
if (typeOf _crate in _crateType) then {

    _netCrateType = ["CargoNet_01_box_F", "B_CargoNet_01_ammo_F"];
    if (typeOf _crate in _netCrateType) then {
        [_crate,1] call FUNC(doSupplyCrate);
    };

    _ammoCrateType = ["Box_IND_Ammo_F","Box_T_East_Ammo_F","Box_East_Ammo_F","Box_NATO_Ammo_F","Box_Syndicate_Ammo_F"];
    if (typeOf _crate in _ammoCrateType) then {
        [_crate,1] call FUNC(doAmmoCrate);
    };

    _weaponCrateType = ["Box_IND_Wps_F","Box_T_East_Wps_F","Box_East_Wps_F","Box_T_NATO_Wps_F","Box_NATO_Wps_F","Box_Syndicate_Wps_F"];
    if (typeOf _crate in _weaponCrateType) then {
        [_crate,1] call FUNC(doWeaponsCrate);
    };

    _specialWeaponCrateType = ["Box_IND_WpsSpecial_F","Box_T_East_WpsSpecial_F","Box_East_WpsSpecial_F","Box_T_NATO_WpsSpecial_F","Box_NATO_WpsSpecial_F"];
    if (typeOf _crate in _specialWeaponCrateType) then {
        [_crate,1] call FUNC(doSpecialWeaponsCrate);
    };

    _launchersCrateType = ["Box_IND_WpsLaunch_F","Box_East_WpsLaunch_F","Box_NATO_WpsLaunch_F","Box_Syndicate_WpsLaunch_F"];
    if (typeOf _crate in _launchersCrateType) then {
        [_crate,1] call FUNC(doLaunchersCrate);
    };
    _grenadesCrateType = ["Box_IND_Grenades_F","Box_East_Grenades_F","Box_NATO_Grenades_F"];
    if (typeOf _crate in _grenadesCrateType) then {
        [_crate,1] call FUNC(doGrenadesCrate);
    };

    _explosivesCrateType = ["Box_IED_Exp_F","Box_IND_AmmoOrd_F","Box_East_AmmoOrd_F","Box_NATO_AmmoOrd_F"];
    if (typeOf _crate in _explosivesCrateType) then {
        [_crate,1] call FUNC(doExplosivesCrate);
    };

} else {
    ["No or wrong type of crate selected."] call Ares_fnc_ShowZeusMessage;
    playSound "FD_Start_F";
};