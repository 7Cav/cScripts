#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function sets a defined radio to be the active radio after radio init.
 *
 * Arguments:
 * 0: Radio <STRING> (Default; MyDefaultValue)
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * ["ACRE_PRC343"] call cScripts_fnc_setActiveRadio
 * ["TFAR_anprc152"] call cScripts_fnc_setActiveRadio
 *
 * Public: No
 */

params [["_radio", 'ACRE_PRC343', ['ACRE_PRC343']]];

if (!EGVAR(Patches,usesACRE) && !EGVAR(Patches,usesTFAR)) exitWith {};
if (!EGVAR(Settings,enableRadios)) exitWith {};
if (!GVAR(isPlayer)) exitWith {};

// ACRE
if (EGVAR(patches,usesACRE)) exitWith {
    [{
        _this params ["_radio"];

        private _radioId = [_radio] call acre_api_fnc_getRadioByType;
        [_radioId] call acre_api_fnc_setCurrentRadio;
        
        #ifdef DEBUG_MODE
            [format["%1 radio %2 is current radio", player, call acre_api_fnc_getCurrentRadio], "Radio SetActive"] call FUNC(info);
        #endif
    }, [_radio], 1] call CBA_fnc_waitAndExecute;
};


// TFAR
if (EGVAR(patches,usesTFAR)) exitWith {
    [{
        _this params ["_radio"];

        private _allRadios = [player] call TFAR_fnc_getRadioItems;
        private _activeRadio = "nullObject";
        if (_allRadios isEqualTo []) exitWith {};
        {
            private _baseRadio = [_x] call FUNC(getRadioBase);
            if (_x == _baseRadio) exitWith { continue };
            if (_x == _radio) then { continue };
            _activeRadio = _x;
            break;
        } forEach _allRadios;
        
        if (!([player, _activeRadio] call BIS_fnc_hasItem)) exitWith {
            #ifdef DEBUG_MODE
                [format["%1 tried to set a radio it does not have expected %2", player, _activeRadio], "Radio SetActive"] call FUNC(warning);
            #endif
        };
        if (_activeRadio isEqualTo "nullObject") exitWith {
            #ifdef DEBUG_MODE
                [format["%1 radio can't be set due to no radio ID discoverd (%2, %3)", player, _radio, _activeRadio], "Radio SetActive"] call FUNC(warning);
            #endif
        };

        [_activeRadio] call TFAR_fnc_setActiveSwRadio;
        
        if (isNil{call TFAR_fnc_activeSwRadio}) then { // TFAR bug
            [format["%1 radio %2 seams to not match wanted radio type %3.", player, call TFAR_fnc_activeSwRadio, _activeRadio], "Radio SetActive"] call FUNC(error);
        };
        
        #ifdef DEBUG_MODE
            [format["%1 radio %2 is current radio", player, call TFAR_fnc_activeSwRadio], "Radio SetActive"] call FUNC(info);    
        #endif
    }, [_radio], 1] call CBA_fnc_waitAndExecute;
};

["Fatal", "Radio", true] call FUNC(error);