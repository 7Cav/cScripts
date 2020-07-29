#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function is used to handle player premissions and some player functions.
 *
 * Arguments:
 * 0: Player <STRING>
 * 1: Safe Mode <BOOL>
 * 2: Put in Earplugs <BOOL>
 * 3: Facewere blacklist <BOOL>
 * 4: Set radio channel <BOOL>
 * 5: Set Squad insignia <BOOL>
 * 6: Set Team coloring at start <BOOL>
 *
 * Example:
 * ["bob",true,true,true,true,true,true] call cScripts_fnc_setPostInitPlayerSettings;
 */

params [
    ["_player",""],
    ["_safeMode", true],
    ["_earPlugs", true],
    ["_facewere", true],
    ["_radio",true],
    ["_squadInsignia",true],
    ["_squadTeamColor",true]
];

if (!isPlayer _player) exitWith {};

// Safety first
if (_safemode) then {
    [_player, currentWeapon _player, true] call ace_safemode_fnc_setWeaponSafety;
};

// Add earplugs if you dont have them in.
if (_earPlugs) then {
    if !([_player] call ace_hearing_fnc_hasEarPlugsIn) then {[_player] call ace_hearing_fnc_putInEarplugs;};
    #ifdef DEBUG_MODE
        [formatText["%1 have got earplugs assigned", _player], "LoadoutPostInit"] call FUNC(logInfo);
    #endif
};

// Check if custom used glases are approved.
if (EGVAR(Settings,enforceEyewereBlacklist)) then {
    if (_facewere) then {
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

        if (goggles _player in _blacklist_glasses) then {
            _player unlinkItem (goggles _player);
            #ifdef DEBUG_MODE
                [format["%1 using un-authorized facewere it have been removed", _player], "LoadoutPostInit"] call FUNC(logInfo);
            #endif
        };
    };
};


// Add squad insignia
if (EGVAR(Settings,allowInsigniaApplication)) then {
    if (_squadInsignia) then {
        private _insignia = "";
        if !(isNil {profileNamespace getVariable QEGVAR(Cav,Insignia)}) then {
            _insignia = profileNamespace getVariable QEGVAR(Cav,Insignia);
            #ifdef DEBUG_MODE
                [format["%1 insignia '%2' obtained based on saved variable...", _player, _insignia], "LoadoutPostInit"] call FUNC(logInfo);
            #endif
        } else {
            _insignia = [_player] call FUNC(getSquadInsignia);
            #ifdef DEBUG_MODE
                [format["%1 insignia '%2' obtained based on squad name...", _player, _insignia], "LoadoutPostInit"] call FUNC(logInfo);
            #endif
        };
        [{
            [_this select 0, _this select 1] call BIS_fnc_setUnitInsignia;
            #ifdef DEBUG_MODE
                [format["%1 got insignia '%2' assinged", _this select 0, _this select 1], "LoadoutPostInit"] call FUNC(logInfo);
            #endif
        }, [_player, _insignia], 2] call CBA_fnc_waitAndExecute;
    };
};

// Assign team Blue or Red Based on name
if (_squadTeamColor) then {
    if (isNil {_player getVariable QEGVAR(Player,Team)}) then {
        call FUNC(setTeamColor);
    };
};

// Set radio channel
if (EGVAR(Settings,setRadio)) then {
    if (_radio) then {
        [_player] call FUNC(setRadioChannel);
        #ifdef DEBUG_MODE
            [format["%1 delayed action for radio channel assignation...", _player], "LoadoutPostInit"] call FUNC(logInfo);
        #endif

        // set current radio
        private _activeRadio = "ACRE_PRC343";
        [_activeRadio] call FUNC(setActiveRadio);
        #ifdef DEBUG_MODE
            [format["%1 delayed action to set active radio...", _player], "LoadoutPostInit"] call FUNC(logInfo);
        #endif
    };
};

// Handle player announcement
if (EGVAR(Settings,setMissionType) != 3) then {
    [_player] call FUNC(doPlayerAnnouncement);
};

//Player lower weapon
if !(weaponLowered _player) then {_player action ["WeaponOnBack", _player]};

if (isNil {_unit getVariable QEGVAR(Player,Unit)}) then {
    [formatText["%1 have no unit variable defined", _player], "LoadoutPostInit", true] call FUNC(logWarning);
};

//Server metrics
if ((call BIS_fnc_admin) >= 2) then {
    player addAction ["Server Metrics", {
        [owner player] call FUNC(getServerMetrics);
    }, [], 0, false, true];
};
