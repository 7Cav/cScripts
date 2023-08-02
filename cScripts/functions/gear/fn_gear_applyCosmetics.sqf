#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function apply cosmetician attributes to a unit.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [player] call cScripts_fnc_gear_applyCosmetics
 *
 */

params [["_unit", objNull, [objNull]]];


// Player Name without rank prefix
if (["name"] call EFUNC(player,getData) == "") then {
    private _name = [_unit] call EFUNC(unit,getName);
    [["name", _name]] call EFUNC(player,setData);
};


// Player Rank to ingame rank
if (EGVAR(Settings,setPlayerRank)) then {
    if (["rank"] call EFUNC(player,getData) == "") then {
        private _rank = [_unit] call EFUNC(unit,getName);
        [["rank", _rank]] call EFUNC(player,setData);
    };
};


// Team Color
if (!isNil{_unit setVariable [QEGVAR(Unit,TeamColor), nil]}) then {
    [_unit] call EFUNC(unit,setTeamColor);
};


// Apply squad insignia 
if (EGVAR(Settings,allowInsigniaApplication)) then {
    private _insignia = if (call EFUNC(player,loadInsignia) != "") then {
        call EFUNC(player,loadInsignia);
    } else {
        call EFUNC(unit,getSquadInsignia);
    };
    [{
        _this params ["_unit", "_insignia"]
        [_unit, _insignia] call EFUNC(unit,setInsignia);
    }, [_unit, _insignia], 2] call CBA_fnc_waitAndExecute;
};