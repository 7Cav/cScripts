#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function apply cosmetician attributes to a unit.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_gear_applyCosmetics
 *
 */

// Player Name without rank prefix
if (!isNil{GETVAR(player,EGVAR(Unit,Name),nil)}) then {
    private _name = [player] call EFUNC(unit,getName);
    SETVAR(player,EGVAR(Unit,Name),_name);
};

// Player Rank to ingame rank
if (EGVAR(Settings,setPlayerRank)) then {
    if (!isNil{GETVAR(player,EGVAR(Unit,Rank),nil)}) then {
        private _rank = [player] call EFUNC(player,getRank);
        SETVAR(player,EGVAR(Unit,Rank),_rank);
    };
};

// Team Color
if (!isNil{GETVAR(player,EGVAR(Unit,TeamColor),nil)}) then {
    [player] call EFUNC(unit,setTeamColor);
};

// Apply squad insignia 
if (EGVAR(Settings,allowInsigniaApplication)) then {
    private _insignia = if (call EFUNC(profile,loadInsignia) != "") then {
        call EFUNC(profile,loadInsignia);
    } else {
        call EFUNC(unit,getSquadInsignia);
    };
    [{
        params ["_insignia"];
        [player, _insignia, false] call EFUNC(unit,setInsignia);
    }, [_insignia], 2] call CBA_fnc_waitAndExecute;
};