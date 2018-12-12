#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function fetch a squad radio channel based on your squad name.
 *
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Return Value:
 * Radio Channel <NUMBER>
 *
 * Example:
 * ["bob"] call cScripts_fnc_getRadioChannel
 *
 * Public: No
 */
#define DEBUG_MODE;

params [["_player", objNull, [objNull]]];

private _channel = 0;
private _player_group = groupId (group _player);

if ([_x] call acre_api_fnc_getBaseRadio == "ACRE_PRC343") then {
    switch (_player_group) do {
        case "VIKING-1": {_channel = 65};
        case "VIKING-2": {_channel = 66};
        case "VIKING-3": {_channel = 67};
        case "VIKING-4": {_channel = 68};
        case "VIKING-5": {_channel = 69};
        case "VIKING-6": {_channel = 69};
        case "VIKING-7": {_channel = 69};

        case "PUNISHER-1": {_channel = 81};
        case "PUNISHER-2": {_channel = 82};
        case "PUNISHER-3": {_channel = 83};
        case "PUNISHER-4": {_channel = 84};
        case "PUNISHER-5": {_channel = 85};
        case "PUNISHER-6": {_channel = 85};
        case "PUNISHER-7": {_channel = 85};

        case "BANDIT-1": {_channel = 17};
        case "BANDIT-2": {_channel = 18};
        case "BANDIT-3": {_channel = 19};
        case "BANDIT-4": {_channel = 20};
        case "BANDIT-5": {_channel = 21};
        case "BANDIT-6": {_channel = 21};
        case "BANDIT-7": {_channel = 21};

        case "MISFIT-1": {_channel = 33};
        case "MISFIT-2": {_channel = 34};
        case "MISFIT-3": {_channel = 35};
        case "MISFIT-4": {_channel = 36};
        case "MISFIT-5": {_channel = 37};
        case "MISFIT-6": {_channel = 37};
        case "MISFIT-7": {_channel = 37};

        default {_channel = 0};
    };
} else {
    switch (_player_group) do {
        case "VIKING-1": {_channel = 2};
        case "VIKING-2": {_channel = 2};
        case "VIKING-3": {_channel = 2};
        case "VIKING-4": {_channel = 2};
        case "VIKING-5": {_channel = 2};
        case "VIKING-6": {_channel = 2};
        case "VIKING-7": {_channel = 2};

        case "PUNISHER-1": {_channel = 3};
        case "PUNISHER-2": {_channel = 3};
        case "PUNISHER-3": {_channel = 3};
        case "PUNISHER-4": {_channel = 3};
        case "PUNISHER-5": {_channel = 3};
        case "PUNISHER-6": {_channel = 3};
        case "PUNISHER-7": {_channel = 3};

        case "BANDIT-1": {_channel = 6};
        case "BANDIT-2": {_channel = 6};
        case "BANDIT-3": {_channel = 6};
        case "BANDIT-4": {_channel = 6};
        case "BANDIT-5": {_channel = 6};
        case "BANDIT-6": {_channel = 6};
        case "BANDIT-7": {_channel = 6};

        case "MISFIT-1": {_channel = 7};
        case "MISFIT-2": {_channel = 7};
        case "MISFIT-3": {_channel = 7};
        case "MISFIT-4": {_channel = 7};
        case "MISFIT-5": {_channel = 7};
        case "MISFIT-6": {_channel = 7};
        case "MISFIT-7": {_channel = 7};

        default {_channel = 0};
    };
};

private _return = _channel;

_return;