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

#ifdef DEBUG_MODE
    [formatText["Applying PostLoadout to %1.", _player]] call FUNC(logInfo);
#endif

// Safety first
if (_safemode) then {
    private _weapon = currentWeapon _player;
    private _safedWeapons = _player getVariable ['ace_safemode_safedWeapons', []];
    if !(_weapon in _safedWeapons) then { 
        [_player, currentWeapon _player, currentMuzzle _player] call ace_safemode_fnc_lockSafety;
    };
    #ifdef DEBUG_MODE
        if (_safeMode) then {[formatText["%1 have got there weapon on safe in postLoadout.", _player]] call FUNC(logInfo);};
    #endif
};

// Add earplugs if you dont have them in.
if (_earPlugs) then {
    if !([_player] call ace_hearing_fnc_hasEarPlugsIn) then {[_player] call ace_hearing_fnc_putInEarplugs;};
    #ifdef DEBUG_MODE
        if (_earPlugs) then {[formatText["%1 have got there earplugs assigned in postLoadout.", _player]] call FUNC(logInfo);};
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
                [format["%1 using un-authorized facewere it have been removed.", _player]] call FUNC(logInfo);
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
                [format["%1 got assigned insignia; %2 based on stored variable.", _player, _insignia]] call FUNC(logInfo);
            #endif
        } else {
            _insignia = [_player] call FUNC(getSquadInsignia);
            #ifdef DEBUG_MODE
                [format["%1 got assigned insignia; %2 based on squad name if any.", _player, _insignia]] call FUNC(logInfo);
            #endif
        };
        [_player, _insignia] call BIS_fnc_setUnitInsignia;
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
            [format["%1 have got there radio channel schedueld to be changed in postLoadout.", _player]] call FUNC(logInfo);
        #endif
    };
};

// Handle player announcement
if (EGVAR(Settings,setMissionType) != 3) then {
    [_player] call FUNC(doPlayerAnnouncement);
};

if (isNil {_unit getVariable QEGVAR(Player,Unit)}) then {
    [formatText["%1 have no unit variable defined.", _player]] call FUNC(logWarning);
    if (!isMultiplayer || {is3DENMultiplayer}) then { systemChat format["WARNING: %1 have no unit variable defined.", _player] };
};

#ifdef DEBUG_MODE
    [formatText["postLoadout application completed for %1.", _player]] call FUNC(logInfo);
#endif
