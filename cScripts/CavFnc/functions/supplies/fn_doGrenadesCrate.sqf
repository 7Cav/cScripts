/*
 * Author: CPL.Brostrom.A 
 * This function resupply a crate and changes it's texture.
 *
 * Arguments:
 * 0: Crate <OBJECT>
 * 1: Scale cargo ammount <NUMBER> (Default: 1)
 *
 * Example:
 * [this,0.5] call cScripts_fnc_doGrenadesCrate;
 * [this,1] call cScripts_fnc_doGrenadesCrate;
 */

#include "..\script_component.hpp";

if (!isServer) exitWith {};

params [["_crate", objNull, [objNull]],["_quaScale",1]];

clearweaponcargoGlobal _crate;
clearmagazinecargoGlobal _crate;
clearitemcargoGlobal _crate;
clearbackpackcargoGlobal _crate;

_crate addMagazineCargoGlobal [QUOTE(_GRENADE),(_quaScale * 20)];
_crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),(_quaScale * 6)];
_crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_RED),(_quaScale * 6)];
_crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),(_quaScale * 6)];
_crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_GREEN),(_quaScale * 6)];
_crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_ORANGE),(_quaScale * 6)];
_crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_YELLOW),(_quaScale * 6)];
_crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_PURPLE),(_quaScale * 6)];

// Change ace logistics size of crate
_crate setVariable ["ace_cargo_size", 1];

// If a correct classname add texture
_crateType = ["Box_East_Grenades_F","Box_NATO_Grenades_F"];
if (typeOf _crate in _crateType) then {
    _crate setObjectTextureGlobal  [0, "cScripts\Data\Objects\Ammobox_7CAV_00.paa"];
};