#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function return your platoon
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Platoon Number <NUMBER>
 *
 * Example:
 * call cScripts_fnc_player_getPlatoon;
 *
 * Public: No
 */

private _platoon = GETVAR(player,EGVAR(Player,Platoon), 0);

_platoon