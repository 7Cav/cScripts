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

_crate addItemCargoGlobal ["ACE_FieldDressing",(_quaScale * 100)];
_crate addItemCargoGlobal ["ACE_packingBandage",(_quaScale * 100)];
_crate addItemCargoGlobal ["ACE_elasticBandage",(_quaScale * 100)];
_crate addItemCargoGlobal ["ACE_quikclot",(_quaScale * 100)];

_crate addItemCargoGlobal ["ACE_personalAidKit",(_quaScale * 50)];

_crate addItemCargoGlobal ["ACE_salineIV",(_quaScale * 25)];
_crate addItemCargoGlobal ["ACE_salineIV_500",(_quaScale * 25)];

_crate addItemCargoGlobal ["ACE_morphine",(_quaScale * 25)];
_crate addItemCargoGlobal ["ACE_epinephrine",(_quaScale * 25)];
_crate addItemCargoGlobal ["ACE_adenosine",(_quaScale * 25)];

// Change ace logistics size of crate
[_crate, 1] remoteExec ["ace_cargo_fnc_setSize",0,true];
[_crate, true] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
[_crate, true] remoteExec ["ace_dragging_fnc_setCarryable",0,true];
