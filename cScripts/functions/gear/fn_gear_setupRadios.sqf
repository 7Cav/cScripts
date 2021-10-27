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
 * [] call cScripts_fnc_gear_setupRadios
 *
 */
 
if !(EGVAR(patches,usesACRE) exitWith {};
if !(EGVAR(Settings,enableACRE) exitWith {};
if (count allMissionObjects "acre_api_basicMissionSetup" > 0)  exitWith {};
if (count allMissionObjects "acre_api_nameChannels" > 0)       exitWith {};

// Handle Radio preset from cba settings
private _lrChannels = parseSimpleArray EGVAR(Settings,setRadioChannelNames);
if !(_lrChannels isEqualType []) exitWith {["Radio array have not been setup correctly.", "Gear Radio"] call FUNC(error);};

// Set LR radio labels and frequency
{
    private _radio = _x;
    {
        [_radio, "default", _forEachIndex + 1, "label", _x] call acre_api_fnc_setPresetChannelField;
        [_radio, "default", _forEachIndex + 1, "frequencyTX", _forEachIndex + 10.242] call acre_api_fnc_setPresetChannelField;
        [_radio, "default", _forEachIndex + 1, "frequencyRX", _forEachIndex + 10.242] call acre_api_fnc_setPresetChannelField;
    } forEach _lrChannels;
    [_radio, "default"] call acre_api_fnc_setPreset;
} count ["ACRE_PRC152", "ACRE_PRC148", "ACRE_PRC117F"];
