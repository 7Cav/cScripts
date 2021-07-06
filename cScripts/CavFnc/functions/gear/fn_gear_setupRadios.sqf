#include "..\script_component.hpp"
/*
 * Author: BaerMitUmlaut, CPL.Brostrom.A
 * This function setup radios and apply radio channel to them on server and player.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 * 1: Show Message For radio reprogramming <BOOL> (Optional)
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [player] call cScripts_fnc_gear_setupRadios
 *
 */

params [
    ["_player", objNull, [objNull]],
    ["_isReprogramming", false, [false]]
];

if !(EGVAR(patches,usesACRE)) exitWith {};
if !(EGVAR(Settings,enableACRE)) exitWith {};
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


// Set radio channel
if (isPlayer _player) then {
    if (EGVAR(Settings,setRadio)) then {
        [_player] call FUNC(setRadioChannel);

        private _activeRadio = "ACRE_PRC343";
        [_activeRadio] call FUNC(setActiveRadio);
    };
};

// Reprogramming message and logging
if (_isReprogramming) then {
    "Your radios have been reprogrammed" call CBA_fnc_notify;
    [format["%1 (%2) have reset the radios", name _player, getPlayerUID _player], "Gear Radio", false, true] call FUNC(info);
};
