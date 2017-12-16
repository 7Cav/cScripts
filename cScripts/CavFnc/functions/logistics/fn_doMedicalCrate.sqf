/*
 * Author: CPL.Brostrom.A
 * This function resupply a crate and changes it's texture.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 * 1: Scale <AMMOUNT>
 *
 * Example:
 * [this,0.5] call cScripts_fnc_doMedicalCrate;
 * [this,1] call cScripts_fnc_doMedicalCrate;
 */

#include "..\script_component.hpp";

if (!isServer) exitWith {};

params ["_crate",["_quaScale",1]];

clearweaponcargoGlobal _crate;
clearmagazinecargoGlobal _crate;
clearitemcargoGlobal _crate;
clearbackpackcargoGlobal _crate;

_crate addItemCargoGlobal ["ACE_EarPlugs",(_quaScale * 25)];

_crate addItemCargoGlobal ["ACE_FieldDressing",(_quaScale * 25)];
_crate addItemCargoGlobal ["ACE_packingBandage",(_quaScale * 25)];
_crate addItemCargoGlobal ["ACE_elasticBandage",(_quaScale * 50)];
_crate addItemCargoGlobal ["ACE_quikclot",(_quaScale * 50)];

_crate addItemCargoGlobal ["ACE_tourniquet",(_quaScale * 5)];

_crate addItemCargoGlobal ["ACE_personalAidKit",(_quaScale * 10)];
_crate addItemCargoGlobal ["ACE_surgicalKit",(_quaScale * 10)];

_crate addItemCargoGlobal ["ACE_salineIV",(_quaScale * 10)];
_crate addItemCargoGlobal ["ACE_salineIV_500",(_quaScale * 10)];

_crate addItemCargoGlobal ["ACE_morphine",(_quaScale * 25)];
_crate addItemCargoGlobal ["ACE_epinephrine",(_quaScale * 25)];
_crate addItemCargoGlobal ["ACE_atropine",(_quaScale * 25)];

_crate addItemCargoGlobal ["ACE_bodyBag",(_quaScale * 10)];

// Downsize the crate
_crate setVariable ["ace_cargo_size", 1];
