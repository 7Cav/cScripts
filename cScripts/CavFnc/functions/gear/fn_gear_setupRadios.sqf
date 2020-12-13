#include "..\script_component.hpp"
params [["_unit", objNull]];
/*
 * Author: BaerMitUmlaut, CPL.Brostrom.A
 * This function setup radio preset and apply a set radio channel to them.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 * 1: Loadout <STRING / ARRAY>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [player] call cScripts_fnc_setupRadios
 *
 */

if !(EGVAR(patches,usesACRE)) exitWith {};
if (QEGVAR(Settings,setRadioChannelNames) == "")               exitWith {};
if (count allMissionObjects "acre_api_basicMissionSetup" > 0)  exitWith {};
if (count allMissionObjects "acre_api_nameChannels" > 0)       exitWith {};

private _lrChannels = parseSimpleArray EGVAR(Settings,setRadioChannelNames);

if !(_lrChannels isEqualType []) exitWith {["Radio array have not been setup correctly.", "Gear"] call FUNC(logError);};

{
    #ifdef DEBUG_MODE
        [format["Radio preset setup for %1", _unit], "Gear"] call FUNC(logInfo);
    #endif
    private _radio = _x;
    [_radio, "default", QEGVAR(Radio,Preset)] call acre_api_fnc_copyPreset;
    {
        [_radio, QEGVAR(Radio,Preset), _forEachIndex + 1, "label", _x] call acre_api_fnc_setPresetChannelField;
    } forEach _lrChannels;
    [_radio, QEGVAR(Radio,Preset)] call acre_api_fnc_setPreset;

    false
} count ["ACRE_PRC152", "ACRE_PRC148", "ACRE_PRC117F"];

// Set radio channel
if (EGVAR(Settings,setRadio)) then {
    [_unit] call FUNC(setRadioChannel);
    #ifdef DEBUG_MODE
        [format["%1 delayed action for radio channel assignation...", _unit], "Radio"] call FUNC(logInfo);
    #endif

    // set current radio
    private _activeRadio = "ACRE_PRC343";
    [_activeRadio] call FUNC(setActiveRadio);
    #ifdef DEBUG_MODE
        [format["%1 delayed action to set active radio...", _unit], "Radio"] call FUNC(logInfo);
    #endif
};