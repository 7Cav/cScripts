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
 *
 * Public: No
 */

params [["_radio", 'ACRE_PRC343', ['ACRE_PRC343']]];

if !(EGVAR(patches,usesACRE)) exitWith {};
if (!isPlayer player) exitWith {};

[{[] call acre_api_fnc_isInitialized}, {
    [{
        if (call acre_api_fnc_getCurrentRadio == call acre_api_fnc_getCurrentRadio) exitWith {};
        private _radioId = [_this select 0] call acre_api_fnc_getRadioByType;
        [_radioId] call acre_api_fnc_setCurrentRadio;
        #ifdef DEBUG_MODE
            [format["%1 radio %2 is current radio", player, call acre_api_fnc_getCurrentRadio], "Radio"] call FUNC(logInfo);
        #endif
        [] call acre_api_fnc_getCurrentRadio;
    }, [_this select 0], 1] call CBA_fnc_waitAndExecute;
}, [_radio]] call CBA_fnc_waitUntilAndExecute;