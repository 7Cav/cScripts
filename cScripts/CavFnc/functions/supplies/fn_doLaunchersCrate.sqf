/*
 * Author: CPL.Brostrom.A 
 * This function resupply a crate and changes it's texture.
 *
 * Arguments:
 * 0: Crate <OBJECT>
 * 1: Scale cargo ammount <NUMBER> (Default: 1)
 *
 * Example:
 * [this,0.5] call cScripts_fnc_doLaunchersCrate;
 * [this,1] call cScripts_fnc_doLaunchersCrate;
 */

#include "..\script_component.hpp";

if (!isServer) exitWith {};

params [["_crate", objNull, [objNull]],["_quaScale",1]];

clearweaponcargoGlobal _crate;
clearmagazinecargoGlobal _crate;
clearitemcargoGlobal _crate;
clearbackpackcargoGlobal _crate;

_crate addWeaponCargoGlobal ["rhs_weap_fim92",(_quaScale * 1)];
_crate addWeaponCargoGlobal ["rhs_weap_fgm148",(_quaScale * 1)];
_crate addWeaponCargoGlobal ["tf47_m3maaws",(_quaScale * 1)];
_crate addWeaponCargoGlobal ["rhs_weap_M136_hp",(_quaScale * 2)];

_crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER0),(_quaScale * 1)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER1),(_quaScale * 1)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER3),(_quaScale * 1)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER4),(_quaScale * 1)];

// Change ace logistics size of crate
_crate setVariable ["ace_cargo_size", 1];

// If a correct classname add texture
_crateType = ["Box_East_WpsLaunch_F","Box_NATO_WpsLaunch_F"];
if (typeOf _crate in _crateType) then {
    _crate setObjectTextureGlobal  [0, "cScripts\Data\Objects\Ammobox_7CAV_00.paa"];
};