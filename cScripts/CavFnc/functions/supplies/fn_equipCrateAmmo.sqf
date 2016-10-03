/*
 * Author: CPL.Brostrom.A 
 * This populats a given object with ammunition.
 *
 * Arguments:
 * 0: Crate <OBJECT>
 * 1: Scale cargo ammount <NUMBER> (Default: 1)
 *>
 * Example:
 * [this,0.5] call cScripts_fnc_equipCrateAmmo
 * [this,1] call cScripts_fnc_equipCrateAmmo
 */

#include "..\script_component.hpp";

if (!isServer) exitWith {};

params [["_crate", objNull, [objNull]],["_quaScale",1]];

clearweaponcargoGlobal _crate;
clearmagazinecargoGlobal _crate;
clearitemcargoGlobal _crate;
clearbackpackcargoGlobal _crate;

_crate addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY),(_quaScale * 30)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY_TRACER),(_quaScale * 10)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_AR0),(_quaScale * 5)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_AR1),(_quaScale * 5)];

// If a corect classname add texture
if (typeOf _crate isEqualTo "Box_NATO_Ammo_F") then {
    _crate setObjectTexture [0, "cScripts\Data\Objects\Ammobox_7CAV_00.paa"];
};

