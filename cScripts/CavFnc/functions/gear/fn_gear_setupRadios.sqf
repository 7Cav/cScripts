#include "..\script_component.hpp"
/*
 * Author: BaerMitUmlaut, CPL.Brostrom.A
 * This function setup radios and apply radio channel to them on server and player.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [] call cScripts_fnc_gear_setupRadios
 *
 */
 
params [["_unit", objNull, [objNull]]];

if !(EGVAR(patches,usesACRE)) exitWith {};
if (count allMissionObjects "acre_api_basicMissionSetup" > 0)  exitWith {};
if (count allMissionObjects "acre_api_nameChannels" > 0)       exitWith {};

private _lrChannels = parseSimpleArray EGVAR(Settings,setRadioChannelNames);

if !(_lrChannels isEqualType []) exitWith {["Radio array have not been setup correctly.", "Gear"] call FUNC(error);};

// Set LR radio labels and frequency
{
    #ifdef DEBUG_MODE
        [format["Adjusting default preset setup for %1", _unit], "Gear"] call FUNC(info);
    #endif
    private _radio = _x;
    {
        [_radio, "default", _forEachIndex + 1, "label", _x] call acre_api_fnc_setPresetChannelField;
        [_radio, "default", _forEachIndex + 1, "frequencyTX", _forEachIndex + 10.242] call acre_api_fnc_setPresetChannelField;
        [_radio, "default", _forEachIndex + 1, "frequencyRX", _forEachIndex + 10.242] call acre_api_fnc_setPresetChannelField;
    } forEach _lrChannels;
    [_radio, "default"] call acre_api_fnc_setPreset;
} count ["ACRE_PRC152", "ACRE_PRC148", "ACRE_PRC117F"];

// Set radio channel
if (isPlayer _unit) then {
    if (EGVAR(Settings,setRadio)) then {
        [_unit] call FUNC(setRadioChannel);
        #ifdef DEBUG_MODE
            [format["%1 delayed action for radio channel assignation...", _unit], "Radio"] call FUNC(info);
        #endif

        // set current radio
        private _activeRadio = "ACRE_PRC343";
        [_activeRadio] call FUNC(setActiveRadio);
        #ifdef DEBUG_MODE
            [format["%1 delayed action to set active radio...", _unit], "Radio"] call FUNC(info);
        #endif
    };
};
