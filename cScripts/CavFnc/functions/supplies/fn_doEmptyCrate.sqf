/*
 * Author: CPL.Brostrom.A 
 * This function resupply a crate and changes it's texture.
 *
 * Arguments:
 * 0: Crate <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_doEmptyCrate;
 */

#include "..\script_component.hpp";

if (!isServer) exitWith {};

params [["_crate", objNull]];

clearweaponcargoGlobal _crate;
clearmagazinecargoGlobal _crate;
clearitemcargoGlobal _crate;
clearbackpackcargoGlobal _crate;

// Downsize the crate
_crate setVariable ["ace_cargo_size", 1];

// If a corect classname add texture
_crate setObjectTextureGlobal  [0, "cScripts\Data\Objects\Ammobox_7CAV_00.paa"];