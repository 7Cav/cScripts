#include "..\script_component.hpp";
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
 * [this,"Full",0.5] call cScripts_fnc_doSpecialWeaponsCrate;
 * [this,"Full",1] call cScripts_fnc_doSpecialWeaponsCrate;
 */

if (!isServer) exitWith {};

params [
    ["_crate", objNull, [objNull]],
    ["_cargoType","mortar"],
    ["_quaScale",1]
];

clearweaponcargoGlobal _crate;
clearmagazinecargoGlobal _crate;
clearitemcargoGlobal _crate;
clearbackpackcargoGlobal _crate;

// SELECT TYPE TO FILL BOX - MORTARS,50 CAL, Mk19, TOW

// MORTARS
if ((_cargoType == "all") or (_cargoType == "mortar")) then {
    _crate addBackpackCargoGlobal ["B_Mortar_01_weapon_F",(_quaScale * 8)];
    _crate addBackpackCargoGlobal ["B_Mortar_01_support_F",(_quaScale * 4)];
};

// M2 50 CAL
if ((_cargoType == "all") or (_cargoType == "m2")) then {
    _crate addBackpackCargoGlobal ["RHS_M2_Gun_Bag",(_quaScale * 4)];
    _crate addBackpackCargoGlobal ["RHS_M2_MiniTripod_Bag",(_quaScale * 8)];
};

// Mk19
if ((_cargoType == "all") or (_cargoType == "mk19")) then {
    _crate addBackpackCargoGlobal ["RHS_Mk19_Gun_Bag",(_quaScale * 4)];
    _crate addBackpackCargoGlobal ["RHS_Mk19_Tripod_Bag",(_quaScale * 8)];
};

// TOW
if ((_cargoType == "all") or (_cargoType == "tow")) then {
    _crate addBackpackCargoGlobal ["rhs_Tow_Gun_Bag",(_quaScale * 4)];
    _crate addBackpackCargoGlobal ["rhs_TOW_Tripod_Bag",(_quaScale * 8)];
};

// Change ace logistics size of crate
[_crate, 1] remoteExec ["ace_cargo_fnc_setSize",0,true];
[_crate, true] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
[_crate, true] remoteExec ["ace_dragging_fnc_setCarryable",0,true];

// If a correct classname add texture
private _smallBox = [
    "Box_T_East_Ammo_F",
    "Box_East_Ammo_F",
    "Box_NATO_Ammo_F",

    "Box_T_East_WpsSpecial_F",
    "Box_East_WpsSpecial_F",
    "Box_T_NATO_WpsSpecial_F",
    "Box_NATO_WpsSpecial_F",

    "Box_East_AmmoOrd_F",
    "Box_NATO_AmmoOrd_F",

    "Box_T_East_Wps_F",
    "Box_East_Wps_F",
    "Box_T_NATO_Wps_F",
    "Box_NATO_Wps_F",

    "Box_East_Grenades_F",
    "Box_NATO_Grenades_F",

    "Box_East_WpsLaunch_F",
    "Box_NATO_WpsLaunch_F"
];
private _largeBox = [
    "B_CargoNet_01_ammo_F"
];
if (typeOf _crate in _smallBox) then {
    _crate setObjectTextureGlobal  [0, "cScripts\Data\Objects\Ammobox_7CAV_co.paa"];
};
if (typeOf _crate in _largeBox) then {
    _crate setObjectTextureGlobal  [1, "cScripts\Data\Objects\Ammobox_7CAV_co.paa"];
};
