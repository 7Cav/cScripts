/*
 * Author: CPL.Brostrom.A 
 * This populats a given object with items.
 * Main use is for supplying medical crates.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 * 1: Scale <AMMOUNT>
 *
 * Example:
 * [this,0.5] call cScripts_fnc_equipMedicalCrate;
 * [this,1] call cScripts_fnc_equipMedicalCrate;
 */

#include "..\script_component.hpp";

if (!isServer) exitWith {};

params ["_crate",["_quaScale",1]];

clearweaponcargoGlobal _crate;
clearmagazinecargoGlobal _crate;
clearitemcargoGlobal _crate;
clearbackpackcargoGlobal _crate;

_crate addItemCargoGlobal [QUOTE(ACE_EarPlugs),(_quaScale * 100)];

_crate addItemCargoGlobal [QUOTE(ACE_FieldDressing),(_quaScale * 250)];

_crate addItemCargoGlobal [QUOTE(ACE_bloodIV_500),(_quaScale * 120)];
_crate addItemCargoGlobal [QUOTE(ACE_salineIV_500),(_quaScale * 120)];

_crate addItemCargoGlobal [QUOTE(ACE_morphine),(_quaScale * 250)];
_crate addItemCargoGlobal [QUOTE(ACE_epinephrine),(_quaScale * 250)];
_crate addItemCargoGlobal [QUOTE(ACE_atropine),(_quaScale * 250)];

_crate addItemCargoGlobal [QUOTE(ACE_tourniquet),(_quaScale * 50)];
_crate addItemCargoGlobal [QUOTE(ACE_elasticBandage),(_quaScale * 250)];
_crate addItemCargoGlobal [QUOTE(ACE_packingBandage),(_quaScale * 250)];
_crate addItemCargoGlobal [QUOTE(ACE_quikclot),(_quaScale * 250)];

_crate addItemCargoGlobal [QUOTE(ACE_bodyBag),(_quaScale * 100)];
