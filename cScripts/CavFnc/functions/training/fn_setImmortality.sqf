#include "..\script_component.hpp";
/*
 * Author: SGT.Whitsel.M, SGT.Brostrom.A
 * This function set all players to be immortal
 *
 * Arguments:
 * 0: Enable/Disable <BOOL>
 *
 * Example:
 * [true] call cScripts_fnc_setImmortality;
 * [false] call cScripts_fnc_setImmortality;
 */

params [["_state", true, [true]]];

{
    _x allowDamage _state;
} forEach (allPlayers); 
 
