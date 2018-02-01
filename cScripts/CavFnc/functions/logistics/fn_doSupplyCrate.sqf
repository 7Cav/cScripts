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

_crate addWeaponCargoGlobal ["tf47_at4_HP",(_quaScale * 8)];

//================== AMMO ==================\\

_crate addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY),(_quaScale * 100)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY_TRACER),(_quaScale * 25)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_AR0),(_quaScale * 25)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_AR1),(_quaScale * 25)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER0),(_quaScale * 8)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER1),(_quaScale * 8)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER2),(_quaScale * 8)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER3),(_quaScale * 8)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER4),(_quaScale * 8)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER5),(_quaScale * 8)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER6),(_quaScale * 8)];

//================== GRENADES ==================\\

_crate addMagazineCargoGlobal [QUOTE(_GRENADE),(_quaScale * 60)];
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

//================== ITEMS ==================\\

//================== MEDICAL ==================\\

_crate addItemCargoGlobal ["ACE_EarPlugs",(_quaScale * 25)];

_crate addItemCargoGlobal ["ACE_quikclot",(_quaScale * 100)];

_crate addItemCargoGlobal ["ACE_tourniquet",(_quaScale * 12)];

_crate addItemCargoGlobal ["ACE_personalAidKit",(_quaScale * 20)];

//================== BACKPACKS ==================\\

// Change ace logistics size of crate
//_crate setVariable ["ace_cargo_size", 1];


// If a correct classname add texture
private _crateType = ["Box_IND_Ammo_F","Box_T_East_Ammo_F","Box_East_Ammo_F","Box_Syndicate_Ammo_F","Box_NATO_Ammo_F","Box_IND_Wps_F","Box_T_East_Wps_F","Box_East_Wps_F","Box_T_NATO_Wps_F","Box_NATO_Wps_F","Box_IND_AmmoOrd_F","Box_East_AmmoOrd_F","Box_IDAP_AmmoOrd_F","Box_NATO_AmmoOrd_F","Box_IND_Grenades_F","Box_East_Grenades_F","Box_NATO_Grenades_F","Box_IND_WpsLaunch_F","Box_East_WpsLaunch_F","Box_NATO_WpsLaunch_F","Box_IND_WpsSpecial_F","Box_T_East_WpsSpecial_F","Box_East_WpsSpecial_F","Box_T_NATO_WpsSpecial_F","Box_NATO_WpsSpecial_F","Box_IND_Support_F","Box_East_Support_F","Box_NATO_Support_F","I_CargoNet_01_ammo_F","O_CargoNet_01_ammo_F","C_IDAP_CargoNet_01_supplies_F","B_CargoNet_01_ammo_F"];
if (typeOf _crate in _crateType) then {
    _crate setObjectTextureGlobal  [0, "cScripts\Data\Objects\Ammobox_7CAV_co.paa"];
};
