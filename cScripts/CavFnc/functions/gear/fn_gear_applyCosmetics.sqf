#include "..\script_component.hpp";
/*
 * Author: BaerMitUmlaut, CPL.Brostrom.A
 * This function apply abilities to a player based on config entries
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
if (!isNil{_vehicle getVariable QEGVAR(Player,Name)}) then {
    private _unitName = [_unit, 'PROFILE'] call FUNC(getPlayerName);
    _unit setVariable [QEGVAR(Player,Name), _unitName];
    #ifdef DEBUG_MODE
        [formatText["%1 name is %2", _unit, _unitName], "Gear"] call FUNC(logInfo);
    #endif
};

// Player Rank to ingame rank
if (EGVAR(Settings,setPlayerRank)) then {
    if !(isNil {_player getVariable QEGVAR(Cav,Rank)}) then {
        [_unit] call FUNC(setPlayerRank);
    };
};

// Team Color
if (isNil {_unit getVariable QEGVAR(Player,Team)}) then {
    call FUNC(setTeamColor);
};

// Squad insignias
if (EGVAR(Settings,allowInsigniaApplication)) then {
    private _insignia = "";
    if !(isNil {profileNamespace getVariable QEGVAR(Cav,Insignia)}) then {
        _insignia = profileNamespace getVariable QEGVAR(Cav,Insignia);
        #ifdef DEBUG_MODE
            [format["%1 insignia '%2' obtained based on saved variable...", _unit, _insignia], "Gear"] call FUNC(logInfo);
        #endif
    } else {
        _insignia = [_unit] call FUNC(getSquadInsignia);
        #ifdef DEBUG_MODE
            [format["%1 insignia '%2' obtained based on squad name...", _unit, _insignia], "Gear"] call FUNC(logInfo);
        #endif
    };
    if (_insignia == "") then {_insignia = getText (_config >> "insignia")};
    [{
        [_this select 0, _this select 1] call BIS_fnc_setUnitInsignia;
        #ifdef DEBUG_MODE
            [format["%1 got insignia '%2' assinged", _this select 0, _this select 1], "Gear"] call FUNC(logInfo);
        #endif
    }, [_unit, _insignia], 2] call CBA_fnc_waitAndExecute;
};