/*
 * Author: CPL.Brostrom.A
 * This function resupply a crate and changes it's texture.
 *
 * Arguments:
 * 0: Crate <OBJECT>
 * 1: Scale cargo ammount <NUMBER> (Default: 1)
 *
 * Example:
 * [this,0.5] call cScripts_fnc_doWeaponsCrate;
 * [this,1] call cScripts_fnc_doWeaponsCrate;
 */

#include "..\script_component.hpp";

if (!isServer) exitWith {};

params [["_crate", objNull, [objNull]],["_quaScale",1]];

clearweaponcargoGlobal _crate;
clearmagazinecargoGlobal _crate;
clearitemcargoGlobal _crate;
clearbackpackcargoGlobal _crate;

_crate addWeaponCargoGlobal ["rhs_weap_m4a1_carryhandle",(_quaScale * 4)];
_crate addWeaponCargoGlobal ["rhs_weap_m4a1_m320",(_quaScale * 2)];
_crate addWeaponCargoGlobal ["rhs_weap_m249_pip_L",(_quaScale * 1)];
_crate addWeaponCargoGlobal ["rhs_weap_m240B",(_quaScale * 1)];

// Change ace logistics size of crate
_crate setVariable ["ace_cargo_size", 1];

// If a correct classname add texture
private _crateType = ["Box_IND_Ammo_F","Box_T_East_Ammo_F","Box_East_Ammo_F","Box_Syndicate_Ammo_F","Box_NATO_Ammo_F","Box_IND_Wps_F","Box_T_East_Wps_F","Box_East_Wps_F","Box_T_NATO_Wps_F","Box_NATO_Wps_F","Box_IND_AmmoOrd_F","Box_East_AmmoOrd_F","Box_IDAP_AmmoOrd_F","Box_NATO_AmmoOrd_F","Box_IND_Grenades_F","Box_East_Grenades_F","Box_NATO_Grenades_F","Box_IND_WpsLaunch_F","Box_East_WpsLaunch_F","Box_NATO_WpsLaunch_F","Box_IND_WpsSpecial_F","Box_T_East_WpsSpecial_F","Box_East_WpsSpecial_F","Box_T_NATO_WpsSpecial_F","Box_NATO_WpsSpecial_F","Box_IND_Support_F","Box_East_Support_F","Box_NATO_Support_F","I_CargoNet_01_ammo_F","O_CargoNet_01_ammo_F","C_IDAP_CargoNet_01_supplies_F","B_CargoNet_01_ammo_F"];
if (typeOf _crate in _crateType) then {
    _crate setObjectTextureGlobal  [0, "cScripts\Data\Objects\Ammobox_7CAV_co.paa"];
};
