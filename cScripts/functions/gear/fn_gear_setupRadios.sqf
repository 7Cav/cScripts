#include "..\script_component.hpp"
/*
 * Author: BaerMitUmlaut, CPL.Brostrom.A
 * This function setup radios and apply radio channel to them on server and player.
 * Needs to be in init.sqf
 *
 * Arguments:
 * Nothing
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_gear_setupRadios
 *
 * Public: No
 */

if (!EGVAR(Patches,usesACRE) && !EGVAR(Patches,usesTFAR)) exitWith {};
if (!EGVAR(Settings,enableRadios)) exitWith {};

// ACRE
if (EGVAR(patches,usesACRE)) exitWith {
    if (count allMissionObjects "acre_api_basicMissionSetup" > 0)  exitWith {};
    if (count allMissionObjects "acre_api_nameChannels" > 0)       exitWith {};

    SHOW_INFO("GearRadio", "Setting up ACRE preset...");

    // Sets a manual frequency number for each will add 1 each channel
    GVAR(FREQUENCY) = 10.242;

    // Handle Radio preset from cba settings
    private _lrChannels = parseSimpleArray EGVAR(Settings,setRadioChannelNames);
    if !(_lrChannels isEqualType []) exitWith {SHOW_CHAT_ERROR("GearRadio", "Radio array have not been setup correctly.")};

    // Set LR radio labels and frequency
    {
        private _radio = _x;
        {
            [_radio, "default", _forEachIndex + 1, "label", _x] call acre_api_fnc_setPresetChannelField;
            [_radio, "default", _forEachIndex + 1, "frequencyTX", _forEachIndex + GVAR(FREQUENCY)] call acre_api_fnc_setPresetChannelField;
            [_radio, "default", _forEachIndex + 1, "frequencyRX", _forEachIndex + GVAR(FREQUENCY)] call acre_api_fnc_setPresetChannelField;
        } forEach _lrChannels;
        [_radio, "default"] call acre_api_fnc_setPreset;
    } forEach ["ACRE_PRC152", "ACRE_PRC148", "ACRE_PRC117F"];
};


// TFAR
if (EGVAR(patches,usesTFAR)) exitWith {
    SHOW_INFO("GearRadio", "TFAR Setup complete...");
};

SHOW_CHAT_ERROR("GearRadio", "Fatal");
