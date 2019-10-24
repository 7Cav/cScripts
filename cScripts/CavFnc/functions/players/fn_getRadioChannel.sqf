#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function fetch a squad radio channel based on radio type and squad name.
 *
 * Arguments:
 * 0: Group name <STRING>
 * 1: Radio type <STRING> (Optional) (Default; ACRE_PRC343) 
 *
 * Return Value:
 * Radio Channel <NUMBER>
 *
 * Example:
 * ["BANDIT-1", "ACRE_PRC343"] call cScripts_fnc_getRadioChannel
 *
 * Public: No
 */

params [
    ["_group", "", [""]],
    ["_radio", "ACRE_PRC343", ["ACRE_PRC343"]]
];

private _channel = 1;
_group = toUpper(_group);

if (_radio == "ACRE_PRC343") then {
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

        case "LANCER-1": {_channel = 81};
        case "LANCER-2": {_channel = 82};
        case "LANCER-3": {_channel = 83};
        case "LANCER-4": {_channel = 84};
        case "LANCER-5": {_channel = 85};
        case "LANCER-6": {_channel = 85};
        case "LANCER-7": {_channel = 85};

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

        // LETTER NAMING
        case "GODFATHER FIVE": {_channel = 4};
        case "GODFATHER SIX": {_channel = 4};
        case "GODFATHER SEVEN": {_channel = 4};

        case "MUSTANG ONE": {_channel = 2};
        case "MUSTANG TWO": {_channel = 3};

        case "APOLLO ONE": {_channel = 1};
        case "APOLLO FIVE": {_channel = 1};
        case "APOLLO SIX": {_channel = 1};
        
        //Air
        case "PEGASUS TWO": {_channel = 1};

        case "BUFFALO ONE": {_channel = 113};
        case "BUFFALO TWO": {_channel = 114};
        case "BUFFALO THREE": {_channel = 115};
        case "BUFFALO FOUR": {_channel = 116};

        case "GRIZZLY ONE": {_channel = 117};
        case "GRIZZLY TWO": {_channel = 118};
        case "GRIZZLY THREE": {_channel = 119};

        case "RAVEN ONE": {_channel = 120};
        case "RAVEN TWO": {_channel = 121};
        case "RAVEN THREE": {_channel = 122};
        case "RAVEN FOUR": {_channel = 123};

        case "EAGLE ONE": {_channel = 1};
        case "EAGLE TWO": {_channel = 1};
        case "EAGLE THREE": {_channel = 1};

        case "HOG ONE": {_channel = 1};
        case "HOG TWO": {_channel = 1};
        case "HOG THREE": {_channel = 1};
        case "HOG FOUR": {_channel = 1};

        case "RAIDER ONE": {_channel = 124};
        case "RAIDER TWO": {_channel = 125};

        case "TITAN ONE": {_channel = 129};
        case "TITAN TWO": {_channel = 130};
        case "TITAN THREE": {_channel = 131};
        case "TITAN FOUR": {_channel = 132};

        // Ground
        case "SABER ONE": {_channel = 97};
        case "SABER TWO": {_channel = 98};
        case "SABER THREE": {_channel = 99};
        case "SABER FOUR": {_channel = 100};
        case "SABER SEVEN": {_channel = 100};

        case "VIKING ONE": {_channel = 65};
        case "VIKING TWO": {_channel = 66};
        case "VIKING THREE": {_channel = 67};
        case "VIKING FOUR": {_channel = 68};
        case "VIKING FIVE": {_channel = 69};
        case "VIKING SIX": {_channel = 69};
        case "VIKING SEVEN": {_channel = 69};

        case "LANCER ONE": {_channel = 81};
        case "LANCER TWO": {_channel = 82};
        case "LANCER THREE": {_channel = 83};
        case "LANCER FOUR": {_channel = 84};
        case "LANCER FIVE": {_channel = 85};
        case "LANCER SIX": {_channel = 85};
        case "LANCER SEVEN": {_channel = 85};

        case "BANDIT ONE": {_channel = 17};
        case "BANDIT TWO": {_channel = 18};
        case "BANDIT THREE": {_channel = 19};
        case "BANDIT FOUR": {_channel = 20};
        case "BANDIT FIVE": {_channel = 21};
        case "BANDIT SIX": {_channel = 21};
        case "BANDIT SEVEN": {_channel = 21};

        case "MISFIT ONE": {_channel = 33};
        case "MISFIT TWO": {_channel = 34};
        case "MISFIT THREE": {_channel = 35};
        case "MISFIT FOUR": {_channel = 36};
        case "MISFIT FIVE": {_channel = 37};
        case "MISFIT SIX": {_channel = 37};
        case "MISFIT SEVEN": {_channel = 37};

        // Ranger
        case "ROUGHNECK ONE": {_channel = 18};
        case "ROUGHNECK TWO": {_channel = 18};
        case "ROUGHNECK THREE": {_channel = 18};
        case "ROUGHNECK FOUR": {_channel = 18};
        case "ROUGHNECK SIX": {_channel = 18};
        case "PHANTOM ONE": {_channel = 18};
        case "PHANTOM TWO": {_channel = 18};

        case "ZEUS": {_channel = 1};

        default {_channel = 1};
    };
} else {
    switch (_group) do {
        case "GODFATHER-5": {_channel = 20};
        case "GODFATHER-6": {_channel = 20};
        case "GODFATHER-7": {_channel = 20};

        case "MUSTANG-1": {_channel = 15};
        case "MUSTANG-2": {_channel = 15};

        case "APOLLO-1": {_channel = 15};
        case "APOLLO-5": {_channel = 15};
        case "APOLLO-6": {_channel = 15};
        
        //Air
        case "PEGASUS-2": {_channel = 2};

        case "BUFFALO-1": {_channel = 2};
        case "BUFFALO-2": {_channel = 2};
        case "BUFFALO-3": {_channel = 2};
        case "BUFFALO-4": {_channel = 2};

        case "GRIZZLY-1": {_channel = 2};
        case "GRIZZLY-2": {_channel = 2};
        case "GRIZZLY-3": {_channel = 2};

        case "RAVEN-1": {_channel = 2};
        case "RAVEN-2": {_channel = 2};
        case "RAVEN-3": {_channel = 2};
        case "RAVEN-4": {_channel = 2};

        case "EAGLE-1": {_channel = 2};
        case "EAGLE-2": {_channel = 2};
        case "EAGLE-3": {_channel = 2};

        case "HOG-1": {_channel = 2};
        case "HOG-2": {_channel = 2};
        case "HOG-3": {_channel = 2};
        case "HOG-4": {_channel = 2};

        case "RAIDER-1": {_channel = 2};
        case "RAIDER-2": {_channel = 2};

        case "TITAN-1": {_channel = 2};
        case "TITAN-2": {_channel = 2};
        case "TITAN-3": {_channel = 2};
        case "TITAN-4": {_channel = 2};

        // Ground
        case "SABER-1": {_channel = 6};
        case "SABER-2": {_channel = 6};
        case "SABER-3": {_channel = 6};
        case "SABER-4": {_channel = 6};
        case "SABER-7": {_channel = 6};

        case "VIKING-1": {_channel = 2};
        case "VIKING-2": {_channel = 2};
        case "VIKING-3": {_channel = 2};
        case "VIKING-4": {_channel = 2};
        case "VIKING-5": {_channel = 2};
        case "VIKING-6": {_channel = 2};
        case "VIKING-7": {_channel = 2};

        case "LANCER-1": {_channel = 3};
        case "LANCER-2": {_channel = 3};
        case "LANCER-3": {_channel = 3};
        case "LANCER-4": {_channel = 3};
        case "LANCER-5": {_channel = 3};
        case "LANCER-6": {_channel = 3};
        case "LANCER-7": {_channel = 3};

        case "BANDIT-1": {_channel = 7};
        case "BANDIT-2": {_channel = 7};
        case "BANDIT-3": {_channel = 7};
        case "BANDIT-4": {_channel = 7};
        case "BANDIT-5": {_channel = 7};
        case "BANDIT-6": {_channel = 7};
        case "BANDIT-7": {_channel = 7};

        case "MISFIT-1": {_channel = 8};
        case "MISFIT-2": {_channel = 8};
        case "MISFIT-3": {_channel = 8};
        case "MISFIT-4": {_channel = 8};
        case "MISFIT-5": {_channel = 8};
        case "MISFIT-6": {_channel = 8};
        case "MISFIT-7": {_channel = 8};

        // Ranger
        case "ROUGHNECK-1": {_channel = 19};
        case "ROUGHNECK-2": {_channel = 19};
        case "ROUGHNECK-3": {_channel = 19};
        case "ROUGHNECK-4": {_channel = 19};
        case "ROUGHNECK-6": {_channel = 19};
        case "PHANTOM-1": {_channel = 19};
        case "PHANTOM-2": {_channel = 19};

        // LETTER NAMING
        case "GODFATHER FIVE": {_channel = 20};
        case "GODFATHER SIX": {_channel = 20};
        case "GODFATHER SEVEN": {_channel = 20};

        case "MUSTANG ONE": {_channel = 15};
        case "MUSTANG TWO": {_channel = 15};

        case "APOLLO ONE": {_channel = 15};
        case "APOLLO FIVE": {_channel = 15};
        case "APOLLO SIX": {_channel = 15};
        
        //Air
        case "PEGASUS TWO": {_channel = 2};

        case "BUFFALO ONE": {_channel = 2};
        case "BUFFALO TWO": {_channel = 2};
        case "BUFFALO THREE": {_channel = 2};
        case "BUFFALO FOUR": {_channel = 2};

        case "GRIZZLY ONE": {_channel = 2};
        case "GRIZZLY TWO": {_channel = 2};
        case "GRIZZLY THREE": {_channel = 2};

        case "RAVEN ONE": {_channel = 2};
        case "RAVEN TWO": {_channel = 2};
        case "RAVEN THREE": {_channel = 2};
        case "RAVEN FOUR": {_channel = 2};

        case "EAGLE ONE": {_channel = 2};
        case "EAGLE TWO": {_channel = 2};
        case "EAGLE THREE": {_channel = 2};

        case "HOG ONE": {_channel = 2};
        case "HOG TWO": {_channel = 2};
        case "HOG THREE": {_channel = 2};
        case "HOG FOUR": {_channel = 2};

        case "RAIDER ONE": {_channel = 2};
        case "RAIDER TWO": {_channel = 2};

        case "TITAN ONE": {_channel = 2};
        case "TITAN TWO": {_channel = 2};
        case "TITAN THREE": {_channel = 2};
        case "TITAN FOUR": {_channel = 2};

        // Ground
        case "SABER ONE": {_channel = 6};
        case "SABER TWO": {_channel = 6};
        case "SABER THREE": {_channel = 6};
        case "SABER FOUR": {_channel = 6};
        case "SABER SEVEN": {_channel = 6};

        case "VIKING ONE": {_channel = 2};
        case "VIKING TWO": {_channel = 2};
        case "VIKING THREE": {_channel = 2};
        case "VIKING FOUR": {_channel = 2};
        case "VIKING FIVE": {_channel = 2};
        case "VIKING SIX": {_channel = 2};
        case "VIKING SEVEN": {_channel = 2};

        case "LANCER ONE": {_channel = 3};
        case "LANCER TWO": {_channel = 3};
        case "LANCER THREE": {_channel = 3};
        case "LANCER FOUR": {_channel = 3};
        case "LANCER FIVE": {_channel = 3};
        case "LANCER SIX": {_channel = 3};
        case "LANCER SEVEN": {_channel = 3};

        case "BANDIT ONE": {_channel = 7};
        case "BANDIT TWO": {_channel = 7};
        case "BANDIT THREE": {_channel = 7};
        case "BANDIT FOUR": {_channel = 7};
        case "BANDIT FIVE": {_channel = 7};
        case "BANDIT SIX": {_channel = 7};
        case "BANDIT SEVEN": {_channel = 7};

        case "MISFIT ONE": {_channel = 8};
        case "MISFIT TWO": {_channel = 8};
        case "MISFIT THREE": {_channel = 8};
        case "MISFIT FOUR": {_channel = 8};
        case "MISFIT FIVE": {_channel = 8};
        case "MISFIT SIX": {_channel = 8};
        case "MISFIT SEVEN": {_channel = 8};

        // Ranger
        case "ROUGHNECK ONE": {_channel = 19};
        case "ROUGHNECK TWO": {_channel = 19};
        case "ROUGHNECK THREE": {_channel = 19};
        case "ROUGHNECK FOUR": {_channel = 19};
        case "ROUGHNECK SIX": {_channel = 19};
        case "PHANTOM ONE": {_channel = 19};
        case "PHANTOM TWO": {_channel = 19};


        case "ZEUS": {_channel = 18};

        default {_channel = 0};
    };
};

_channel;
