#include "..\script_component.hpp";
/*
 * Author: BaerMitUmlaut, CPL.Brostrom.A
 * This function apply a player loadout
 *
 * Arguments:
 * 0: Unit <OBJECT>
 * 1: Loadout <STRING / ARRAY>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [player, "B_Soldier_F"] call cScripts_fnc_applyLoadout
 * [player, "Variable_Name"] call cScripts_fnc_applyLoadout
 * [player, [[],[],[],[],[],[],"","",[],["","","","","",""]]] call cScripts_fnc_applyLoadout
 *
 */

params [
    ["_unit", objNull, [objNull]],
    "_loadout"
];

private _loadConfig = _loadout isEqualType "";
private _loadArray  = _loadout isEqualType [];
private _config     = configNull;

if (_loadConfig) then {
    _config = missionConfigFile >> "CfgLoadouts" >> _loadout;
    [_unit, _loadout] call compile (getText (_config >> "preLoadout"));
};

// Saved Ace Loadout if array returned
if (_loadArray) then {
    _unit setUnitLoadout _loadout;
    _unit setVariable [QEGVAR(Gear,Loadout), QEGVAR(Gear,SavedArsenalLoadout)];
    _unit setVariable [QEGVAR(Gear,savedLoadout), _loadout];
    #ifdef DEBUG_MODE
        [format["Saved ACE Arsenal loadout applied to %1", _unit], "Gear"] call FUNC(logInfo);
    #endif
};
// Config defined loadout
if (_loadConfig) then {
    if (getText (_config >> "loadout") != "") then {
        _unit setUnitLoadout parseSimpleArray getText (_config >> "loadout");
        _unit setVariable [QEGVAR(Gear,Loadout), _loadout];
        _unit setVariable [QEGVAR(Gear,savedLoadout), false];
        #ifdef DEBUG_MODE
            [format["Loadout %1 applied to %2", _loadout, _unit], "Gear"] call FUNC(logInfo);
        #endif
    } else {
        _unit setVariable [QEGVAR(Gear,Loadout), [side group _unit] call FUNC(getSideConfig)];
        _unit setVariable [QEGVAR(Gear,savedLoadout), false];
    };
};

[_unit, _config] call FUNC(applyAbilities);

if (isPlayer _unit) then {
    // Company
    private _company = getText (_config >> "company");
    (_unit) setVariable [QEGVAR(Cav,Company), _company];
    #ifdef DEBUG_MODE
        if (_company != "") then {[formatText["%1 have company variable set to %2", _unit, _company], "gear"] call FUNC(logInfo);};
    #endif

    // Player Name without rank prefix
    _unitName = [_unit,'PROFILE'] call FUNC(getPlayerName);
    (_unit) setVariable [QEGVAR(Player,Name), _unitName];
    #ifdef DEBUG_MODE
        [formatText["%1 name is %2", _unit, _unitName], "gear"] call FUNC(logInfo);
    #endif

    // Player Rank to ingame rank
    if (EGVAR(Settings,setPlayerRank)) then {
        [_unit] call FUNC(setPlayerRank);
        #ifdef DEBUG_MODE
            [formatText["%1 rank is %2", _unit, rank _unit], "gear"] call FUNC(logInfo);
        #endif
    };

    // Radios
    if (EGVAR(patches,usesACRE)) then {
        [_unit] call FUNC(setupRadios);
        [_unit] call FUNC(setRadioChannel);
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
                [format["%1 insignia '%2' obtained based on saved variable...", _unit, _insignia], "gear"] call FUNC(logInfo);
            #endif
        } else {
            _insignia = [_unit] call FUNC(getSquadInsignia);
            #ifdef DEBUG_MODE
                [format["%1 insignia '%2' obtained based on squad name...", _unit, _insignia], "gear"] call FUNC(logInfo);
            #endif
        };
        if (_insignia == "") then {_insignia = getText (_config >> "insignia")};
        [{
            [_this select 0, _this select 1] call BIS_fnc_setUnitInsignia;
            #ifdef DEBUG_MODE
                [format["%1 got insignia '%2' assinged", _this select 0, _this select 1], "gear"] call FUNC(logInfo);
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
                [format["%1 using un-authorized facewere it have been removed", _unit], "LoadoutPostInit"] call FUNC(logInfo);
            #endif
        };
    };

    // Earplugs
    if (ace_hearing_autoAddEarplugsToUnits) then {
        if !([_unit] call ace_hearing_fnc_hasEarPlugsIn) then {[_unit] call ace_hearing_fnc_putInEarplugs;};
        #ifdef DEBUG_MODE
            [formatText["%1 have got earplugs assigned", _unit], "LoadoutPostInit"] call FUNC(logInfo);
        #endif
    };
};

// Select weapon
_unit selectWeapon (primaryWeapon _unit);

// Lower the weapon
if !(weaponLowered _unit) then {_unit action ["WeaponOnBack", _unit]};

if (_loadConfig) then {
    [_unit, _loadout] call compile (getText (_config >> "postLoadout"));
};
