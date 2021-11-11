#include "..\script_component.hpp";
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

if (!isServer) exitWith {};

params ["_crate",["_quaScale",1]];

clearweaponcargoGlobal _crate;
clearmagazinecargoGlobal _crate;
clearitemcargoGlobal _crate;
clearbackpackcargoGlobal _crate;

_crate addItemCargoGlobal ["ACE_EarPlugs",(_quaScale * 25)];

_crate addItemCargoGlobal ["ACE_packingBandage",(_quaScale * 100)];
_crate addItemCargoGlobal ["ACE_elasticBandage",(_quaScale * 100)];
_crate addItemCargoGlobal ["ACE_quikclot",(_quaScale * 100)];

_crate addItemCargoGlobal ["ACE_personalAidKit",(_quaScale * 20)];
_crate addItemCargoGlobal ["ACE_splint", (_quaScale * 40)];

_crate addItemCargoGlobal ["ACE_salineIV",(_quaScale * 30)];
_crate addItemCargoGlobal ["ACE_salineIV_500",(_quaScale * 60)];

_crate addItemCargoGlobal ["ACE_morphine",(_quaScale * 25)];
_crate addItemCargoGlobal ["ACE_epinephrine",(_quaScale * 40)];
_crate addItemCargoGlobal ["ACE_adenosine",(_quaScale * 40)];

_crate addItemCargoGlobal ["kat_IV_16",(_quaScale * 40)];
_crate addItemCargoGlobal ["kat_IO_FAST",(_quaScale * 20)];
_crate addItemCargoGlobal ["kat_AED",(_quaScale * 10)];
_crate addItemCargoGlobal ["kat_X_AED",(_quaScale * 5)];
_crate addItemCargoGlobal ["kat_carbonate",(_quaScale * 50)];
_crate addItemCargoGlobal ["kat_naloxone",(_quaScale * 20)];
_crate addItemCargoGlobal ["kat_TXA",(_quaScale * 20)];

_crate addMagazineCargoGlobal ["kat_Painkiller",20];
