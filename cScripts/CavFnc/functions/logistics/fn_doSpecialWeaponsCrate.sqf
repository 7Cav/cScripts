/*
 * Author: CPL.Brostrom.A
 * This function resupply a crate and changes it's texture.
 *
 * Arguments:
 * 0: Crate <OBJECT>
 * 1: Scale cargo ammount <NUMBER> (Default: 1)
 * 2: Type
 *
 * Example:
 * [this] call cScripts_fnc_doSpecialWeaponsCrate;
 * [this,0.5] call cScripts_fnc_doSpecialWeaponsCrate;
 * [this,1,"Full"] call cScripts_fnc_doSpecialWeaponsCrate;
 * [this,1,] call cScripts_fnc_doSpecialWeaponsCrate;
 */

#include "..\script_component.hpp";

if (!isServer) exitWith {};

params [
    ["_crate", objNull, [objNull]],
    ["_quaScale",1],
    ["_crateType","mortar"]
];

clearweaponcargoGlobal _crate;
clearmagazinecargoGlobal _crate;
clearitemcargoGlobal _crate;
clearbackpackcargoGlobal _crate;

// SELECT TYPE TO FILL BOX - MORTARS,50 CAL, Mk19, TOW

// MORTARS
if ((_crateType == "all") or (_crateType == "mortar")) then {
    _crate addBackpackCargoGlobal ["B_Mortar_01_weapon_F",(_quaScale * 8)];
    _crate addBackpackCargoGlobal ["B_Mortar_01_support_F",(_quaScale * 4)];
};

// M2 50 CAL
if ((_crateType == "all") or (_crateType == "m2")) then {
    _crate addBackpackCargoGlobal ["RHS_M2_Gun_Bag",(_quaScale * 4)];
    _crate addBackpackCargoGlobal ["RHS_M2_MiniTripod_Bag",(_quaScale * 8)];
};

// Mk19
if ((_crateType == "all") or (_crateType == "mk19")) then {
    _crate addBackpackCargoGlobal ["RHS_Mk19_Gun_Bag",(_quaScale * 4)];
    _crate addBackpackCargoGlobal ["RHS_Mk19_Tripod_Bag",(_quaScale * 8)];
};

// TOW
if ((_crateType == "all") or (_crateType == "tow")) then {
    _crate addBackpackCargoGlobal ["rhs_Tow_Gun_Bag",(_quaScale * 4)];
    _crate addBackpackCargoGlobal ["rhs_TOW_Tripod_Bag",(_quaScale * 8)];
};

// Change ace logistics size of crate
_crate setVariable ["ace_cargo_size", 1];

// If a correct classname add texture
private _crateType = ["Box_T_East_Wps_F","Box_East_Wps_F","Box_T_NATO_Wps_F","Box_NATO_Wps_F"];
if (typeOf _crate in _crateType) then {
    _crate setObjectTextureGlobal  [0, "cScripts\Data\Objects\Ammobox_7CAV_00.paa"];
};
