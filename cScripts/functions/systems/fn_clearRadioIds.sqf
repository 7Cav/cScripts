#include "..\script_component.hpp"
/*
 * Author: CPL.Brostrom.A
 * This function return a funtion icon path or path provided.
 *
 * Arguments:
 * nothing
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [player] call cScripts_fnc_clearRadioIds
 *
 */

if (!EGVAR(Patches,usesACRE) && !EGVAR(Patches,usesTFAR)) exitWith {};
if (!EGVAR(Settings,enableRadios)) exitWith {};
if (!GVAR(isPlayer)) exitWith {};

// ACRE
if (EGVAR(patches,usesACRE)) exitWith {
    private _playerRadios = [] call acre_api_fnc_getCurrentRadioList;

    {
        private _base = [_x] call acre_api_fnc_getBaseRadio;
        player removeItem _x;
        player addItem _base;
    } forEach _playerRadios;

    [{
        [player] call FUNC(setRadioChannel);
        ["ACRE_PRC343"] call FUNC(setActiveRadio);
    }] call CBA_fnc_execNextFrame;

    "Your radios have been reset" call CBA_fnc_notify;
    [format["%1: Your radios have been reset", name player], "Clear Radio ID", true] call FUNC(info);
};

// TFAR
if (EGVAR(patches,usesTFAR)) exitWith {
    /** FIXME: Code goes here */
};

["Fatal", "Clear Radio ID", true] call FUNC(error);