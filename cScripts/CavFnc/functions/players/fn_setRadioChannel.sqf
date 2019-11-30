#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function sets a player radio channels based on squad name. If -1 no radio will be set. 
 *
 * Arguments:
 * 0: Argument Name <OBJECT/BOOL/NUMBER/STRING/ARRAY/CODE> (Optional) (Default; MyDefaultValue)
 *
 * Return Value:
 * Return Name <BOOL/NUMBER/STRING>
 *
 * Example:
 * ["bob"] call cScripts_fnc_setRadioChannel
 *
 * Public: No
 */

params [["_player", objNull, [objNull]]];

if !(isPlayer _player) exitWith {};

[{[] call acre_api_fnc_isInitialized}, {
    (_this select 0) setVariable [QEGVAR(Player,RadioChannel), []];
    private _playerRadios = [(_this select 0)] call acre_api_fnc_getCurrentRadioList;
    {
        if !(_x == "") then {
            private _radio = [_x] call acre_api_fnc_getBaseRadio;
            private _channel = [[_this select 0] call FUNC(getSquadName), _radio] call FUNC(getRadioChannel);

            [_x, _channel] call acre_api_fnc_setRadioChannel;
            #ifdef DEBUG_MODE
                [format["%1 radio (%2) have its channel set to %3",(_this select 0), _x, _channel]] call FUNC(logInfo);
            #endif

            // Store radio channels in variable.
            private _radioAndChannel = (_this select 0) getVariable [QEGVAR(Player,RadioChannel), []];
            _radioAndChannel pushBack [[_x] call acre_api_fnc_getBaseRadio, _channel];
            (_this select 0) setVariable [QEGVAR(Player,RadioChannel), _radioAndChannel];

            // Set 343 as current radio. (Not working but i leve it here cause it work kind of.)
            if (_radio == 'ACRE_PRC343') then {
                [_x] call acre_api_fnc_setCurrentRadio;
                #ifdef DEBUG_MODE
                    [format["%1 radio %2 is set to current radio.",(_this select 0), _x]] call FUNC(logInfo);
                #endif
            };
        } else {
            [format["Empty radio is trying to get it's channel applied for %1.",(_this select 0)]] call FUNC(logWarning);
        };
    } forEach _playerRadios;
}, [_player]] call CBA_fnc_waitUntilAndExecute;
