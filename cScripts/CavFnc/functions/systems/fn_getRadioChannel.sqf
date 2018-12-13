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
private _group = groupId (group _player);
_group = toUpper(_group);

if ([_x] call acre_api_fnc_getBaseRadio == "ACRE_PRC343") then {
    switch (_group) do {

        case "GODFATHER-5": {_channel = 4};
        case "GODFATHER-6": {_channel = 4};
        case "GODFATHER-7": {_channel = 4};

        case "MUSTANG-1": {_channel = 2};
        case "MUSTANG-2": {_channel = 3};

        case "APOLLO-1": {_channel = 1};
        case "APOLLO-5": {_channel = 1};
        case "APOLLO-6": {_channel = 1};
        
        //Air
        case "PEGASUS-2": {_channel = 1};

        case "BUFFALO-1": {_channel = 113};
        case "BUFFALO-2": {_channel = 114};
        case "BUFFALO-3": {_channel = 115};
        case "BUFFALO-4": {_channel = 116};

        case "GRIZZLY-1": {_channel = 117};
        case "GRIZZLY-2": {_channel = 118};
        case "GRIZZLY-3": {_channel = 119};

        case "RAVEN-1": {_channel = 120};
        case "RAVEN-2": {_channel = 121};
        case "RAVEN-3": {_channel = 122};
        case "RAVEN-4": {_channel = 123};

        case "EAGLE-1": {_channel = 1};
        case "EAGLE-2": {_channel = 1};
        case "EAGLE-3": {_channel = 1};

        case "HOG-1": {_channel = 1};
        case "HOG-2": {_channel = 1};
        case "HOG-3": {_channel = 1};
        case "HOG-4": {_channel = 1};

        case "RAIDER-1": {_channel = 124};
        case "RAIDER-2": {_channel = 125};

        case "TITAN-1": {_channel = 129};
        case "TITAN-2": {_channel = 130};
        case "TITAN-3": {_channel = 131};
        case "TITAN-4": {_channel = 132};

        // Ground
        case "SABER-1": {_channel = 97};
        case "SABER-2": {_channel = 98};
        case "SABER-3": {_channel = 99};
        case "SABER-4": {_channel = 100};
        case "SABER-7": {_channel = 100};

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

        // Ranger
        case "ROUGHNECK-1": {_channel = 18};
        case "ROUGHNECK-2": {_channel = 18};
        case "ROUGHNECK-3": {_channel = 18};
        case "ROUGHNECK-4": {_channel = 18};
        case "ROUGHNECK-6": {_channel = 18};
        case "PHANTOM-1": {_channel = 18};
        case "PHANTOM-2": {_channel = 18};
        
        case "ZEUS": {_channel = 1};

        default {_channel = 1};
    };
} else {
    switch (_group) do {
        case "GODFATHER-5": {_channel = 19};
        case "GODFATHER-6": {_channel = 19};
        case "GODFATHER-7": {_channel = 19};

        case "MUSTANG-1": {_channel = 14};
        case "MUSTANG-2": {_channel = 14};

        case "APOLLO-1": {_channel = 14};
        case "APOLLO-5": {_channel = 14};
        case "APOLLO-6": {_channel = 14};
        
        //Air
        case "PEGASUS-2": {_channel = 1};

        case "BUFFALO-1": {_channel = 1};
        case "BUFFALO-2": {_channel = 1};
        case "BUFFALO-3": {_channel = 1};
        case "BUFFALO-4": {_channel = 1};

        case "GRIZZLY-1": {_channel = 1};
        case "GRIZZLY-2": {_channel = 1};
        case "GRIZZLY-3": {_channel = 1};

        case "RAVEN-1": {_channel = 1};
        case "RAVEN-2": {_channel = 1};
        case "RAVEN-3": {_channel = 1};
        case "RAVEN-4": {_channel = 1};

        case "EAGLE-1": {_channel = 1};
        case "EAGLE-2": {_channel = 1};
        case "EAGLE-3": {_channel = 1};

        case "HOG-1": {_channel = 1};
        case "HOG-2": {_channel = 1};
        case "HOG-3": {_channel = 1};
        case "HOG-4": {_channel = 1};

        case "RAIDER-1": {_channel = 1};
        case "RAIDER-2": {_channel = 1};

        case "TITAN-1": {_channel = 1};
        case "TITAN-2": {_channel = 1};
        case "TITAN-3": {_channel = 1};
        case "TITAN-4": {_channel = 1};

        // Ground
        case "SABER-1": {_channel = 5};
        case "SABER-2": {_channel = 5};
        case "SABER-3": {_channel = 5};
        case "SABER-4": {_channel = 5};
        case "SABER-7": {_channel = 5};

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

        // Ranger
        case "ROUGHNECK-1": {_channel = 18};
        case "ROUGHNECK-2": {_channel = 18};
        case "ROUGHNECK-3": {_channel = 18};
        case "ROUGHNECK-4": {_channel = 18};
        case "ROUGHNECK-6": {_channel = 18};
        case "PHANTOM-1": {_channel = 18};
        case "PHANTOM-2": {_channel = 18};

        case "ZEUS": {_channel = 18};

        default {_channel = 0};
    };
};

private _return = _channel;

_return;