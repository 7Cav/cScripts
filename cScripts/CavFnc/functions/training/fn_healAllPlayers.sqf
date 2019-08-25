#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function heal all players.
 *
 * Arguments:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_healAllPlayers;
 * call cScripts_fnc_healAllPlayers;
 */

{
    [_x, _x] remoteExec ["ace_medical_fnc_treatmentAdvanced_fullHealLocal", _x];
} forEach (allPlayers); 