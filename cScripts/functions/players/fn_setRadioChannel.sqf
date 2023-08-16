#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function sets a player radio channels based on squad name. If -1 no radio will be set. 
 *
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * ["bob"] call cScripts_fnc_setRadioChannel
 *
 * Public: No
 */

params [["_player", objNull, [objNull]]];

if (!EGVAR(Patches,usesACRE) && !EGVAR(Patches,usesTFAR)) exitWith {};
if (!EGVAR(Settings,enableRadios)) exitWith {};
if (!GVAR(isPlayer)) exitWith {};


// ACRE
if (EGVAR(patches,usesACRE)) exitWith {
    SETVAR(_player,EGVAR(Player,RadioChannel), []);
    private _playerRadios = [_player] call acre_api_fnc_getCurrentRadioList;
    {
        if !(_x == "") then {
            private _radio = [_x] call acre_api_fnc_getBaseRadio;
            private _channel = [[_player] call EFUNC(unit,getSquadName), _radio] call FUNC(getRadioChannel);

            [_x, _channel] call acre_api_fnc_setRadioChannel;
            INFO_3("Radio", "%1 radio (%2) have its channel set to %3", _player, _x, _channel);

            // Store radio channels in variable.
            private _radioAndChannel = _player getVariable [QEGVAR(Player,RadioChannel), []];
            _radioAndChannel pushBack [[_x] call acre_api_fnc_getBaseRadio, _channel];
            SETVAR(_player,EGVAR(Player,RadioChannel), _radioAndChannel);

        } else {
            SHOW_SERVER_WARNING_1("Radio", "Empty radio is trying to get it's channel applied for %1", _player);
        };
    } forEach _playerRadios;
};


// TFAR
if (EGVAR(patches,usesTFAR)) exitWith {
    /** TODO: Code goes here */
};

SHOW_CHAT_ERROR("Radio", "Fatal");
