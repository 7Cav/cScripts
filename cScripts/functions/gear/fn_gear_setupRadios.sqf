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

if !(EGVAR(patches,usesACRE)) exitWith {};
if !(EGVAR(Settings,enableACRE)) exitWith {["ACRE Radio init have been disabled.", "Gear Radio"] call FUNC(info);};
if (count allMissionObjects "acre_api_basicMissionSetup" > 0)  exitWith {};
if (count allMissionObjects "acre_api_nameChannels" > 0)       exitWith {};

// Handle Radio preset from cba settings
private _lrChannels = parseSimpleArray EGVAR(Settings,setRadioChannelNames);
if !(_lrChannels isEqualType []) exitWith {["Radio array have not been setup correctly.", "Gear Radio"] call FUNC(error);};

// Set LR radio labels and frequency
{
    private _radio = _x;
    {
        _x = if (_x isEqualType "") then { [_x] } else { _x };
        _x params [
            ["_label", _x, [""]],
            ["_channel", _forEachIndex + 1, [0]],
            ["_frequencyTX", _forEachIndex + 10.242, [0]],
            ["_frequencyRX", _forEachIndex + 10.242, [0]]
        ];
        [_radio, "default", _channel, "label", _label] call acre_api_fnc_setPresetChannelField;
        [_radio, "default", _channel, "frequencyTX",_frequencyTX] call acre_api_fnc_setPresetChannelField;
        [_radio, "default", _channel, "frequencyRX", _frequencyRX] call acre_api_fnc_setPresetChannelField;
    } forEach _lrChannels;
    [_radio, "default"] call acre_api_fnc_setPreset;
} forEach ["ACRE_PRC152", "ACRE_PRC148", "ACRE_PRC117F"];
