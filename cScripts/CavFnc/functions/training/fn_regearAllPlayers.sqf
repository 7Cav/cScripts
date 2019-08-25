#include "..\script_component.hpp";
/*
 * Author: SGT.Whitsel.M, SGT.Brostrom.A
 * This function reagear all players with the default loadout.
 *
 * Arguments:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_regearAllPlayers;
 * call cScripts_fnc_regearAllPlayers;
 */

{
    if (vehicleVarName _x == "") then {
        [_x, typeOf _x] remoteExec ["Poppy_fnc_applyLoadout", _x];
    } else {
        [_x, vehicleVarName _x] remoteExec ["Poppy_fnc_applyLoadout", _x];
    };
} forEach (allPlayers); 