#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function is used to handle player premissions and some player functions.
 *
 * Arguments:
 * 0: Player <STRING>
 *
 * Example:
 * ["bob",true,true] call cScripts_fnc_setPostInitPlayerSettings;
 */

params [
    ["_player",""],
    ["_safeMode", true],
    ["_earPlugs", true],
    ["_facewere", true]
];

#ifdef DEBUG_MODE
    [formatText["Applying PostLoadout to %1.", _player]] call FUNC(logInfo);
#endif

// Safety first
if (_safemode) then {
    private _weapon = currentWeapon player;
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
            "rhs_balaclava",
            "G_Balaclava_blk",
            "G_Balaclava_combat",
            "G_Balaclava_lowprofile",
            "G_Balaclava_oli",
            "rhs_balaclava1_olive",
            "G_Bandanna_aviator",
            "G_Bandanna_beast",
            "G_Bandanna_blk",
            "G_Bandanna_khk",
            "G_Bandanna_oli",
            "G_Bandanna_shades",
            "G_Bandanna_sport",
            "G_Bandanna_tan",
            "G_Diving",
            "G_I_Diving",
            "G_O_Diving",
            "G_B_Diving",
            "G_Lady_Blue",
            "G_Respirator_blue_F",
            "G_Respirator_white_F",
            "G_Respirator_yellow_F",
            "G_EyeProtectors_F",
            "G_EyeProtectors_Earpiece_F",
            "rhs_scarf",
            "G_Spectacles",
            "G_Squares",
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

#ifdef DEBUG_MODE
    [formatText["postLoadout application completed for %1.", _player]] call FUNC(logInfo);
#endif
