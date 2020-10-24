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

// Eyewere Blacklist
if (EGVAR(Settings,enforceEyewereBlacklist)) then {
    private _blacklist_glasses = [
        "G_AirPurifyingRespirator_02_black_F",
        "G_AirPurifyingRespirator_02_olive_F",
        "G_AirPurifyingRespirator_02_sand_F",
        "G_AirPurifyingRespirator_01_F",
        "G_Blindfold_01_black_F",
        "G_Blindfold_01_white_F",
        "G_Diving",
        "G_I_Diving",
        "G_O_Diving",
        "G_B_Diving",
        "G_Lady_Blue",
        "G_RegulatorMask_F",
        "G_Respirator_blue_F",
        "G_Respirator_white_F",
        "G_Respirator_yellow_F",
        "G_EyeProtectors_F",
        "G_EyeProtectors_Earpiece_F",
        "G_Balaclava_TI_blk_F",
        "G_Balaclava_TI_G_blk_F",
        "G_Balaclava_TI_tna_F",
        "G_Balaclava_TI_G_tna_F",
        "G_Tactical_Clear",
        "G_Tactical_Black",
        "G_Goggles_VR",
        "G_WirelessEarpiece_F"
    ];

    if (goggles _unit in _blacklist_glasses) then {
        _unit unlinkItem (goggles _unit);
        #ifdef DEBUG_MODE
            [format["%1 using un-authorized facewere it have been removed", _unit], "Gear"] call FUNC(logInfo);
        #endif
    };
};