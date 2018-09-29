#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function resupply a crate and changes it's texture.
 *
 * Arguments:
 * 0: Crate <OBJECT>
 * 1: Scale cargo ammount <NUMBER> (Default: 1)
 *
 * Example:
 * [this,0.5] call cScripts_fnc_doAmmoCrate;
 * [this,1] call cScripts_fnc_doAmmoCrate;
 */

if (!isServer) exitWith {};

params [["_crate", objNull, [objNull]],["_quaScale",1]];

clearweaponcargoGlobal _crate;
clearmagazinecargoGlobal _crate;
clearitemcargoGlobal _crate;
clearbackpackcargoGlobal _crate;

_crate addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY),(_quaScale * 30)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY_TRACER),(_quaScale * 10)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_AR0),(_quaScale * 5)];
_crate addMagazineCargoGlobal [QUOTE(_MAG_AR1),(_quaScale * 5)];

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
