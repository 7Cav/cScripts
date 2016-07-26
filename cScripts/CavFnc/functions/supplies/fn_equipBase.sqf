/*
 * Author: A.Brostrom
 * This populats a given object with items.
 * Main use is for main base and spawn.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 * 1: Scale <AMMOUNT>
 *
 * Example:
 * [this,0.5] call cScripts_fnc_equipBase;
 * [this,1] call cScripts_fnc_equipBase;
 */

#include "..\script_component.hpp";

if (!isServer) exitWith {};

params ["_crate",["_quaScale",1]];

clearweaponcargoGlobal _crate;
clearmagazinecargoGlobal _crate;
clearitemcargoGlobal _crate;
clearbackpackcargoGlobal _crate;

//================== RADIOS ==================\\

_crate addItemCargoGlobal [QUOTE(tf_rf7800str),(_quaScale * 150)];
_crate addItemCargoGlobal [QUOTE(tf_anprc152),(_quaScale * 25)];

//================== WEAPONS ==================\\

//    _crate addWeaponCargoGlobal [QUOTE(_WEAPON_PRIMARY0),(_quaScale * 25)];
//    _crate addWeaponCargoGlobal [QUOTE(_WEAPON_PRIMARY_GL0),(_quaScale * 25)];
//    _crate addWeaponCargoGlobal [QUOTE(_WEAPON_PRIMARY_AR0),(_quaScale * 25)];
//    _crate addWeaponCargoGlobal [QUOTE(_WEAPON_PRIMARY_AR1),(_quaScale * 25)];
_crate addWeaponCargoGlobal [QUOTE(_WEAPON_LAUNCHER0),(_quaScale * 25)];
_crate addWeaponCargoGlobal [QUOTE(_WEAPON_LAUNCHER1),(_quaScale * 25)];
_crate addWeaponCargoGlobal [QUOTE(_WEAPON_LAUNCHER2),(_quaScale * 25)];
_crate addWeaponCargoGlobal [QUOTE(_WEAPON_LAUNCHER3),(_quaScale * 25)];

//================== AMMO ==================\\

_crate addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY),(_quaScale * 250)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY_TRACER),(_quaScale * 250)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_AR0),(_quaScale * 250)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_AR1),(_quaScale * 250)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_SECONDARY0),(_quaScale * 250)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER0),(_quaScale * 250)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER1),(_quaScale * 250)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER2),(_quaScale * 250)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER3),(_quaScale * 250)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER4),(_quaScale * 250)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER5),(_quaScale * 250)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER6),(_quaScale * 250)];

//================== GRENADES ==================\\

_crate addMagazineCargoGlobal [QUOTE(_GRENADE),(_quaScale * 250)];
_crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),(_quaScale * 250)];
_crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_RED),(_quaScale * 250)];
_crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),(_quaScale * 250)];
_crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_GREEN),(_quaScale * 250)];
_crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_ORANGE),(_quaScale * 250)];
_crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_YELLOW),(_quaScale * 250)];
_crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_PURPLE),(_quaScale * 250)];
_crate addMagazineCargoGlobal [QUOTE(_GRENADE_IR),(_quaScale * 250)];
_crate addMagazineCargoGlobal [QUOTE(_GLSHELL0),(_quaScale * 250)];
_crate addMagazineCargoGlobal [QUOTE(_GLSHELL1),(_quaScale * 250)];
_crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKE),(_quaScale * 250)];
_crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKEGREEN),(_quaScale * 250)];
_crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKEYELLOW),(_quaScale * 250)];
_crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKERED),(_quaScale * 250)];
_crate addMagazineCargoGlobal [QUOTE(_GLSHELLHUNTIR),(_quaScale * 250)];
_crate addMagazineCargoGlobal [QUOTE(_GLFLARE),(_quaScale * 250)];
_crate addMagazineCargoGlobal [QUOTE(Chemlight_Blue),(_quaScale * 250)];
_crate addMagazineCargoGlobal [QUOTE(Chemlight_Red),(_quaScale * 250)];

//================== EXPLOSIVES ==================\\

_crate addMagazineCargoGlobal [QUOTE(_MAG_SATCHELCHARGE),(_quaScale * 50)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_DEMOCHARGE),(_quaScale * 50)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_MINE0),(_quaScale * 50)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_MINE1),(_quaScale * 50)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_MINE2),(_quaScale * 50)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_MINE3),(_quaScale * 50)];

//================== ITEMS ==================\\

_crate addItemCargoGlobal [QUOTE(rhsusf_ANPVS_14),(_quaScale * 250)];
_crate addItemCargoGlobal [QUOTE(Toolkit),(_quaScale * 50)];
_crate addItemCargoGlobal [QUOTE(ACE_Clacker),(_quaScale * 50)];
_crate addItemCargoGlobal [QUOTE(ACE_DefusalKit),(_quaScale * 50)];
_crate addItemCargoGlobal [QUOTE(ACE_Flashlight_MX991),(_quaScale * 50)];
_crate addItemCargoGlobal [QUOTE(itemcTabHCam),(_quaScale * 50)];
_crate addItemCargoGlobal [QUOTE(ACE_UAVBattery),(_quaScale * 50)];
_crate addItemCargoGlobal [QUOTE(ACE_SpareBarrel),(_quaScale * 50)];
_crate addItemCargoGlobal [QUOTE(ACE_CableTie),(_quaScale * 50)];
_crate addItemCargoGlobal [QUOTE(ACE_wirecutter),(_quaScale * 50)];

//================== MEDICAL ==================\\

_crate addItemCargoGlobal [QUOTE(ACE_EarPlugs),(_quaScale * 250)];
_crate addItemCargoGlobal [QUOTE(ACE_FieldDressing),(_quaScale * 250)];
_crate addItemCargoGlobal [QUOTE(ACE_packingBandage),(_quaScale * 250)];
_crate addItemCargoGlobal [QUOTE(ACE_elasticBandage),(_quaScale * 250)];
_crate addItemCargoGlobal [QUOTE(ACE_quikclot),(_quaScale * 250)];
_crate addItemCargoGlobal [QUOTE(ACE_tourniquet),(_quaScale * 250)];
//_crate addItemCargoGlobal [QUOTE(ACE_personalAidKit),(_quaScale * 250)];
_crate addItemCargoGlobal [QUOTE(ACE_bloodIV),(_quaScale * 250)];
_crate addItemCargoGlobal [QUOTE(ACE_bloodIV_500),(_quaScale * 250)];
_crate addItemCargoGlobal [QUOTE(ACE_salineIV),(_quaScale * 250)];
_crate addItemCargoGlobal [QUOTE(ACE_salineIV_500),(_quaScale * 250)];
_crate addItemCargoGlobal [QUOTE(ACE_morphine),(_quaScale * 250)];
_crate addItemCargoGlobal [QUOTE(ACE_epinephrine),(_quaScale * 250)];
_crate addItemCargoGlobal [QUOTE(ACE_atropine),(_quaScale * 250)];
_crate addItemCargoGlobal [QUOTE(ACE_bodyBag),(_quaScale * 250)];

//================== BACKPACKS ==================\\

_crate addBackpackCargoGlobal [QUOTE(rhsusf_assault_eagleaiii_ocp),(_quaScale * 15)];
_crate addBackpackCargoGlobal [QUOTE(_GEAR_BACKPACK_RADIO0),(_quaScale * 15)];
