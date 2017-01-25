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

#include "..\script_component.hpp";

if (!isServer) exitWith {};

params [["_crate", objNull, [objNull]],["_quaScale",1]];

clearweaponcargoGlobal _crate;
clearmagazinecargoGlobal _crate;
clearitemcargoGlobal _crate;
clearbackpackcargoGlobal _crate;

//================== RADIOS ==================\\

//================== WEAPONS ==================\\

_crate addWeaponCargoGlobal ["rhs_weap_m4a1_carryhandle",(_quaScale * 4)];
_crate addWeaponCargoGlobal ["rhs_weap_m4a1_m320",(_quaScale * 2)];
_crate addWeaponCargoGlobal ["rhs_weap_m249_pip_L",(_quaScale * 1)];
_crate addWeaponCargoGlobal ["rhs_weap_m240B",(_quaScale * 1)];

_crate addWeaponCargoGlobal ["rhs_weap_fim92",(_quaScale * 1)];
_crate addWeaponCargoGlobal ["rhs_weap_fgm148",(_quaScale * 1)];
_crate addWeaponCargoGlobal ["tf47_m3maaws",(_quaScale * 1)];
_crate addWeaponCargoGlobal ["rhs_weap_M136_hp",(_quaScale * 3)];

//================== AMMO ==================\\

_crate addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY),(_quaScale * 100)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY_TRACER),(_quaScale * 25)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_AR0),(_quaScale * 25)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_AR1),(_quaScale * 25)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER0),(_quaScale * 2)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER1),(_quaScale * 2)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER2),(_quaScale * 2)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER3),(_quaScale * 2)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER4),(_quaScale * 2)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER5),(_quaScale * 1)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER6),(_quaScale * 1)];

//================== GRENADES ==================\\

_crate addMagazineCargoGlobal [QUOTE(_GRENADE),(_quaScale * 40)];
_crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),(_quaScale * 40)];
_crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_RED),(_quaScale * 20)];
_crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),(_quaScale * 20)];
_crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_GREEN),(_quaScale * 20)];
_crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_ORANGE),(_quaScale * 20)];
_crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_YELLOW),(_quaScale * 20)];
_crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_PURPLE),(_quaScale * 20)];
_crate addMagazineCargoGlobal [QUOTE(_GRENADE_IR),(_quaScale * 10)];
_crate addMagazineCargoGlobal [QUOTE(_GLSHELL0),(_quaScale * 40)];
_crate addMagazineCargoGlobal [QUOTE(_GLSHELL1),(_quaScale * 40)];
_crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKE),(_quaScale * 20)];
_crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKEGREEN),(_quaScale * 20)];
_crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKEYELLOW),(_quaScale * 20)];
_crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKERED),(_quaScale * 20)];
_crate addMagazineCargoGlobal [QUOTE(_GLSHELLHUNTIR),(_quaScale * 10)];
_crate addMagazineCargoGlobal [QUOTE(_GLFLARE),(_quaScale * 20)];
_crate addMagazineCargoGlobal ["Chemlight_Blue",(_quaScale * 25)];
_crate addMagazineCargoGlobal ["Chemlight_Red",(_quaScale * 25)];

//================== EXPLOSIVES ==================\\

_crate addMagazineCargoGlobal ["rhsusf_m112_mag",(_quaScale * 2)];
_crate addMagazineCargoGlobal ["SatchelCharge_Remote_Mag",(_quaScale * 3)];
_crate addMagazineCargoGlobal ["DemoCharge_Remote_Mag",(_quaScale * 3)];
_crate addMagazineCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag",(_quaScale * 6)];

//================== ITEMS ==================\\

_crate addItemCargoGlobal ["rhsusf_ANPVS_14",(_quaScale * 5)];
_crate addItemCargoGlobal ["Toolkit",(_quaScale * 2)];
_crate addItemCargoGlobal ["ACE_Clacker",(_quaScale * 3)];
_crate addItemCargoGlobal ["ACE_DefusalKit",(_quaScale * 5)];
_crate addItemCargoGlobal ["ACE_Flashlight_MX991",(_quaScale * 5)];
_crate addItemCargoGlobal ["ACE_SpareBarrel",(_quaScale * 5)];
_crate addItemCargoGlobal ["ACE_wirecutter",(_quaScale * 1)];

//================== MEDICAL ==================\\

_crate addItemCargoGlobal ["ACE_EarPlugs",(_quaScale * 25)];

_crate addItemCargoGlobal ["ACE_FieldDressing",(_quaScale * 25)];
_crate addItemCargoGlobal ["ACE_packingBandage",(_quaScale * 25)];
_crate addItemCargoGlobal ["ACE_elasticBandage",(_quaScale * 50)];
_crate addItemCargoGlobal ["ACE_quikclot",(_quaScale * 50)];

_crate addItemCargoGlobal ["ACE_tourniquet",(_quaScale * 5)];

_crate addItemCargoGlobal ["ACE_personalAidKit",(_quaScale * 10)];

_crate addItemCargoGlobal ["ACE_salineIV",(_quaScale * 10)];
_crate addItemCargoGlobal ["ACE_salineIV_500",(_quaScale * 10)];

_crate addItemCargoGlobal ["ACE_morphine",(_quaScale * 25)];
_crate addItemCargoGlobal ["ACE_epinephrine",(_quaScale * 25)];
_crate addItemCargoGlobal ["ACE_atropine",(_quaScale * 25)];

_crate addItemCargoGlobal ["ACE_bodyBag",(_quaScale * 10)];


//================== BACKPACKS ==================\\

_crate addBackpackCargoGlobal ["rhsusf_assault_eagleaiii_ocp",(_quaScale * 1)];
_crate addBackpackCargoGlobal ["B_Mortar_01_weapon_F",(_quaScale * 1)];
