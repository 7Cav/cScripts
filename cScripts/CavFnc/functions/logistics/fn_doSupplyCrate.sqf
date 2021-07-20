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

params [["_crate", objNull, [objNull]]];

private _quaScale = 1;

clearweaponcargoGlobal _crate;
clearmagazinecargoGlobal _crate;
clearitemcargoGlobal _crate;
clearbackpackcargoGlobal _crate;

//================== RADIOS ==================\\

//================== WEAPONS ==================\\

_crate addWeaponCargoGlobal ["rhs_weap_M136_hp", (_quaScale * 4)];
_crate addWeaponCargoGlobal ["rhs_weap_M136_hedp", (_quaScale * 4)];

//================== AMMO ==================\\

_crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_PMAG", (_quaScale * 56)];
_crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", (_quaScale * 28)];
_crate addMagazineCargoGlobal ["rhsusf_200rnd_556x45_mixed_soft_pouch", (_quaScale * 10)];
_crate addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m62_tracer", (_quaScale * 20)];
_crate addMagazineCargoGlobal ["rhs_mag_maaws_HEAT",4];
_crate addMagazineCargoGlobal ["rhs_mag_maaws_HE",4];
_crate addMagazineCargoGlobal ["NDS_M_6Rnd_60mm_HE_0",10];
_crate addMagazineCargoGlobal ["NDS_M_6Rnd_60mm_HE",10];
_crate addMagazineCargoGlobal ["NDS_M_6Rnd_60mm_SMOKE",10];
_crate addMagazineCargoGlobal ["NDS_M_6Rnd_60mm_ILLUM",10];
_crate addMagazineCargoGlobal ["rhs_fgm148_magazine_AT", (_quaScale * 3)];
_crate addMagazineCargoGlobal ["rhs_fim92_mag", (_quaScale * 4)];

//================== GRENADES ==================\\

_crate addMagazineCargoGlobal ["rhs_mag_m67", (_quaScale * 20)];
_crate addMagazineCargoGlobal ["SmokeShell", (_quaScale * 40)];
_crate addMagazineCargoGlobal ["SmokeShellRed", (_quaScale * 20)];
_crate addMagazineCargoGlobal ["SmokeShellBlue", (_quaScale * 20)];
_crate addMagazineCargoGlobal ["SmokeShellGreen", (_quaScale * 18)];
_crate addMagazineCargoGlobal ["B_IR_Grenade", (_quaScale * 10)];
_crate addMagazineCargoGlobal ["ACE_M84", (_quaScale * 25)];
_crate addMagazineCargoGlobal ["rhs_mag_M433_HEDP", (_quaScale * 30)];
_crate addMagazineCargoGlobal ["rhs_mag_M397_HET", (_quaScale * 20)];
_crate addMagazineCargoGlobal ["rhs_mag_m714_White", (_quaScale * 20)];
_crate addMagazineCargoGlobal ["rhs_mag_m664_red_cluster", (_quaScale * 20)];
_crate addMagazineCargoGlobal ["ACE_40mm_Flare_Red", (_quaScale * 20)];
_crate addMagazineCargoGlobal ["ACE_HUNTIR_M203", (_quaScale * 10)];
_crate addMagazineCargoGlobal ["ACE_40mm_Flare_white", (_quaScale * 20)];
_crate addMagazineCargoGlobal ["ACE_40mm_Flare_IR", (_quaScale * 20)];
_crate addMagazineCargoGlobal ["ACE_Chemlight_HiRed", (_quaScale * 25)];
_crate addMagazineCargoGlobal ["ACE_Chemlight_HiBlue", (_quaScale * 25)];
_crate addMagazineCargoGlobal ["ACE_Chemlight_IR", (_quaScale * 25)];

//================== EXPLOSIVES ==================\\

_crate addMagazineCargoGlobal ["SatchelCharge_Remote_Mag", (_quaScale * 2)];
_crate addMagazineCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag", (_quaScale * 4)];
_crate addMagazineCargoGlobal ["DemoCharge_Remote_Mag", (_quaScale * 4)];

//================== ITEMS ==================\\

//_crate addItemCargoGlobal ["ACE_WaterBottle", (_quaScale * 50)];

//_crate addItemCargoGlobal ["ACE_MRE_BeefStew", (_quaScale * 10)];
//_crate addItemCargoGlobal ["ACE_MRE_ChickenTikkaMasala", (_quaScale * 10)];
//_crate addItemCargoGlobal ["ACE_MRE_ChickenHerbDumplings", (_quaScale * 10)];
//_crate addItemCargoGlobal ["ACE_MRE_CreamChickenSoup", (_quaScale * 10)];
//_crate addItemCargoGlobal ["ACE_MRE_CreamTomatoSoup", (_quaScale * 10)];
//_crate addItemCargoGlobal ["ACE_MRE_LambCurry", (_quaScale * 10)];
//_crate addItemCargoGlobal ["ACE_MRE_MeatballsPasta", (_quaScale * 10)];
//_crate addItemCargoGlobal ["ACE_MRE_SteakVegetables", (_quaScale * 10)];

//_crate addItemCargoGlobal ["ACE_Chemlight_Shield", (_quaScale * 5)];

//================== MEDICAL ==================\\

_crate addItemCargoGlobal ["ACE_EarPlugs", (_quaScale * 25)];
_crate addItemCargoGlobal ["ACE_quikclot", (_quaScale * 100)];
_crate addItemCargoGlobal ["ACE_tourniquet", (_quaScale * 36)];
_crate addItemCargoGlobal ["ACE_personalAidKit", (_quaScale * 20)];

//================== BACKPACKS ==================\\

_crate addBackpackCargoGlobal ["B_Kitbag_cbr",2];

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
    _crate setObjectTextureGlobal  [0, "\z\cav\addons\supplies\data\Ammobox_7CAV_co.paa"];
};
if (typeOf _crate in _largeBox) then {
    _crate setObjectTextureGlobal  [1, "\z\cav\addons\supplies\data\Ammobox_7CAV_co.paa"];
};
