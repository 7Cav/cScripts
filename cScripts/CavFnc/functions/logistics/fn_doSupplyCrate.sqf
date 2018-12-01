#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This populats a given object with items.
 * Use for mission resupplies.
 *
 * Arguments:
 * 0: Crate <OBJECT>
 * 1: Scale cargo ammount <NUMBER> (Default: 1)
 *
 * Example:
 * [this,0.5] call cScripts_fnc_doSupplyCrate;
 * [this,1] call cScripts_fnc_doSupplyCrate;
 */

if (!isServer) exitWith {};

params [["_crate", objNull, [objNull]],["_quaScale",1]];

clearweaponcargoGlobal _crate;
clearmagazinecargoGlobal _crate;
clearitemcargoGlobal _crate;
clearbackpackcargoGlobal _crate;

//================== RADIOS ==================\\

//================== WEAPONS ==================\\

_crate addWeaponCargoGlobal ["rhs_weap_M136_hp", (_quaScale * 8)];

//================== AMMO ==================\\

_crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", (_quaScale * 100)];
_crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", (_quaScale * 25)];
_crate addMagazineCargoGlobal ["rhs_200rnd_556x45_M_SAW", (_quaScale * 25)];
_crate addMagazineCargoGlobal ["rhsusf_mag_15Rnd_9x19_JHP", (_quaScale * 25)];

_crate addMagazineCargoGlobal ["rhs_fgm148_magazine_AT", (_quaScale * 8)];
_crate addMagazineCargoGlobal ["rhs_fim92_mag", (_quaScale * 8)];

//================== GRENADES ==================\\

_crate addMagazineCargoGlobal ["rhs_mag_m67", (_quaScale * 60)];
_crate addMagazineCargoGlobal ["SmokeShell", (_quaScale * 40)];
_crate addMagazineCargoGlobal ["SmokeShellRed", (_quaScale * 20)];
_crate addMagazineCargoGlobal ["SmokeShellBlue", (_quaScale * 20)];
_crate addMagazineCargoGlobal ["SmokeShellGreen", (_quaScale * 20)];
_crate addMagazineCargoGlobal ["SmokeShellOrange", (_quaScale * 20)];
_crate addMagazineCargoGlobal ["SmokeShellYellow", (_quaScale * 20)];
_crate addMagazineCargoGlobal ["SmokeShellPurple", (_quaScale * 20)];
_crate addMagazineCargoGlobal ["B_IR_Grenade", (_quaScale * 10)];
_crate addMagazineCargoGlobal ["ACE_M84", (_quaScale * 25)];
_crate addMagazineCargoGlobal ["rhs_mag_M441_HE", (_quaScale * 40)];
_crate addMagazineCargoGlobal ["rhs_mag_M433_HEDP", (_quaScale * 40)];
_crate addMagazineCargoGlobal ["rhs_mag_m714_White", (_quaScale * 20)];
_crate addMagazineCargoGlobal ["rhs_mag_m715_Green", (_quaScale * 20)];
_crate addMagazineCargoGlobal ["rhs_mag_m716_yellow", (_quaScale * 20)];
_crate addMagazineCargoGlobal ["rhs_mag_m713_Red", (_quaScale * 20)];
_crate addMagazineCargoGlobal ["ACE_HUNTIR_M203", (_quaScale * 10)];
_crate addMagazineCargoGlobal ["rhs_mag_M585_white", (_quaScale * 20)];
_crate addMagazineCargoGlobal ["Chemlight_green", (_quaScale * 25)];
_crate addMagazineCargoGlobal ["Chemlight_red", (_quaScale * 25)];
_crate addMagazineCargoGlobal ["Chemlight_yellow", (_quaScale * 25)];

//================== EXPLOSIVES ==================\\

_crate addMagazineCargoGlobal ["SatchelCharge_Remote_Mag", (_quaScale * 10)];
_crate addMagazineCargoGlobal ["DemoCharge_Remote_Mag", (_quaScale * 10)];

//================== ITEMS ==================\\

_crate addItemCargoGlobal ["ACE_WaterBottle", (_quaScale * 50)];

_crate addItemCargoGlobal ["ACE_MRE_BeefStew", (_quaScale * 10)];
_crate addItemCargoGlobal ["ACE_MRE_ChickenTikkaMasala", (_quaScale * 10)];
_crate addItemCargoGlobal ["ACE_MRE_ChickenHerbDumplings", (_quaScale * 10)];
_crate addItemCargoGlobal ["ACE_MRE_CreamChickenSoup", (_quaScale * 10)];
_crate addItemCargoGlobal ["ACE_MRE_CreamTomatoSoup", (_quaScale * 10)];
_crate addItemCargoGlobal ["ACE_MRE_LambCurry", (_quaScale * 10)];
_crate addItemCargoGlobal ["ACE_MRE_MeatballsPasta", (_quaScale * 10)];
_crate addItemCargoGlobal ["ACE_MRE_SteakVegetables", (_quaScale * 10)];

_crate addItemCargoGlobal ["ACE_Chemlight_Shield", (_quaScale * 5)];

//================== MEDICAL ==================\\

_crate addItemCargoGlobal ["ACE_EarPlugs", (_quaScale * 25)];

_crate addItemCargoGlobal ["ACE_quikclot", (_quaScale * 100)];

_crate addItemCargoGlobal ["ACE_tourniquet", (_quaScale * 12)];

_crate addItemCargoGlobal ["ACE_personalAidKit", (_quaScale * 20)];

//================== BACKPACKS ==================\\

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
