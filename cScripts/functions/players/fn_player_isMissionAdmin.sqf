#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function return true if a player is curator or admin
 *
 * Arguments:
 * None
 *
 * Return Value:
 * True/False <BOOLEAN>
 *
 * Example:
 * call cScripts_fnc_player_isMissionAdmin
 *
 */

if (!isNull (getAssignedCuratorLogic player)) exitWith {true};
if (call BIS_fnc_admin > 1) exitWith {true};
if (!isMultiplayer || {is3DENMultiplayer}) exitWith {true};

false