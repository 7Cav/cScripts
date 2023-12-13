#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function saves your selected insignia to your profile
 *
 * Arguments:
 * 0: InsigniaClassname
 *
 * Return Value:
 * True
 *
 * Example:
 * ["curator"] call cScripts_fnc_profile_saveInsignia
 *
 * Public: No
 */

params [["_insignia", "", [""]]];

if (!isPlayer _unit) exitWith {};

SETPRVAR(EGVAR(Profile,Insignia), _insignia);

INFO_2("PlayerProfile", "%1 insignia '%2' saved on profile variable...", player, _insignia);

true