#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function return your profile saved insignia
 *
 * Arguments:
 * Nothing
 *
 * Return Value:
 * Classname of insignia
 *
 * Example:
 * call cScripts_fnc_profile_loadInsignia
 *
 * Public: No
 */
if (!isPlayer _unit) exitWith {};

private _insignia = GETPRVAR(EGVAR(Profile,Insignia), "");

INFO_2("PlayerProfile", "%1 insignia '%2' obtained on profile variable...", player, _insignia);

_insignia