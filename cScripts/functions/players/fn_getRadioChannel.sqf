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
    _channel = switch (_group) do {

        case "GODFATHER-5": {4};
        case "GODFATHER-6": {4};
        case "GODFATHER-7": {4};

        case "MUSTANG-1": {2};
        case "MUSTANG-2": {3};

        case "APOLLO-1": {1};
        case "APOLLO-5": {1};
        case "APOLLO-6": {1};
        
        case "ATLAS-1": {2};
        case "ATLAS-2": {3};
        case "ATLAS-3": {1};
        case "ATLAS-4": {1};
        case "ATLAS-5": {1};
        case "ATLAS-6": {1};
        
        //Air
        case "PEGASUS-2": {1};

        case "BUFFALO-1": {113};
        case "BUFFALO-2": {114};
        case "BUFFALO-3": {115};
        case "BUFFALO-4": {116};

        case "GRIZZLY-1": {117};
        case "GRIZZLY-2": {118};
        case "GRIZZLY-3": {119};

        case "RAVEN-1": {120};
        case "RAVEN-2": {121};
        case "RAVEN-3": {122};
        case "RAVEN-4": {123};

        case "EAGLE-1": {1};
        case "EAGLE-2": {1};
        case "EAGLE-3": {1};

        case "HOG-1": {1};
        case "HOG-2": {1};
        case "HOG-3": {1};
        case "HOG-4": {1};

        case "RAIDER-1": {124};
        case "RAIDER-2": {125};

        case "TITAN-1": {129};
        case "TITAN-2": {130};
        case "TITAN-3": {131};
        case "TITAN-4": {132};

        // Ground
        case "SABER-1": {97};
        case "SABER-2": {97};
        case "SABER-3": {98};
        case "SABER-4": {98};
        case "SABER-7": {100};

        case "VIKING-1": {65};
        case "VIKING-2": {66};
        case "VIKING-3": {67};
        case "VIKING-4": {68};
        case "VIKING-5": {69};
        case "VIKING-6": {69};
        case "VIKING-7": {69};

        case "LANCER-1": {81};
        case "LANCER-2": {82};
        case "LANCER-3": {83};
        case "LANCER-4": {84};
        case "LANCER-5": {85};
        case "LANCER-6": {85};
        case "LANCER-7": {85};

        case "BANDIT-1": {17};
        case "BANDIT-2": {18};
        case "BANDIT-3": {19};
        case "BANDIT-4": {20};
        case "BANDIT-5": {21};
        case "BANDIT-6": {21};
        case "BANDIT-7": {21};

        case "MISFIT-1": {33};
        case "MISFIT-2": {34};
        case "MISFIT-3": {35};
        case "MISFIT-4": {36};
        case "MISFIT-5": {37};
        case "MISFIT-6": {37};
        case "MISFIT-7": {37};

        case "GUNSLINGER-1": {1};
        case "GUNSLINGER-2": {1};
        case "GUNSLINGER-3": {1};
        case "GUNSLINGER-4": {1};
        case "GUNSLINGER-5": {1};
        case "GUNSLINGER-6": {1};
        case "GUNSLINGER-7": {1};

        // LETTER NAMING
        case "GODFATHER FIVE": {4};
        case "GODFATHER SIX": {4};
        case "GODFATHER SEVEN": {4};

        case "MUSTANG ONE": {2};
        case "MUSTANG TWO": {3};

        case "APOLLO ONE": {1};
        case "APOLLO FIVE": {1};
        case "APOLLO SIX": {1};
        
        case "ATLAS ONE": {2};
        case "ATLAS TWO": {3};
        case "ATLAS THREE": {1};
        case "ATLAS FOUR": {1};
        case "ATLAS FIVE": {1};
        case "ATLAS SIX": {1};
        
        //Air
        case "PEGASUS TWO": {1};

        case "BUFFALO ONE": {113};
        case "BUFFALO TWO": {114};
        case "BUFFALO THREE": {115};
        case "BUFFALO FOUR": {116};

        case "GRIZZLY ONE": {117};
        case "GRIZZLY TWO": {118};
        case "GRIZZLY THREE": {119};

        case "RAVEN ONE": {120};
        case "RAVEN TWO": {121};
        case "RAVEN THREE": {122};
        case "RAVEN FOUR": {123};

        case "EAGLE ONE": {1};
        case "EAGLE TWO": {1};
        case "EAGLE THREE": {1};

        case "HOG ONE": {1};
        case "HOG TWO": {1};
        case "HOG THREE": {1};
        case "HOG FOUR": {1};

        case "RAIDER ONE": {124};
        case "RAIDER TWO": {125};

        case "TITAN ONE": {129};
        case "TITAN TWO": {130};
        case "TITAN THREE": {131};
        case "TITAN FOUR": {132};

        // Ground
        case "SABER ONE": {97};
        case "SABER TWO": {98};
        case "SABER THREE": {99};
        case "SABER FOUR": {100};
        case "SABER SEVEN": {100};

        case "VIKING ONE": {65};
        case "VIKING TWO": {66};
        case "VIKING THREE": {67};
        case "VIKING FOUR": {68};
        case "VIKING FIVE": {69};
        case "VIKING SIX": {69};
        case "VIKING SEVEN": {69};

        case "LANCER ONE": {81};
        case "LANCER TWO": {82};
        case "LANCER THREE": {83};
        case "LANCER FOUR": {84};
        case "LANCER FIVE": {85};
        case "LANCER SIX": {85};
        case "LANCER SEVEN": {85};

        case "BANDIT ONE": {17};
        case "BANDIT TWO": {18};
        case "BANDIT THREE": {19};
        case "BANDIT FOUR": {20};
        case "BANDIT FIVE": {21};
        case "BANDIT SIX": {21};
        case "BANDIT SEVEN": {21};

        case "MISFIT ONE": {33};
        case "MISFIT TWO": {34};
        case "MISFIT THREE": {35};
        case "MISFIT FOUR": {36};
        case "MISFIT FIVE": {37};
        case "MISFIT SIX": {37};
        case "MISFIT SEVEN": {37};

        case "GUNSLINGER ONE": {1};
        case "GUNSLINGER TWO": {1};
        case "GUNSLINGER THREE": {1};
        case "GUNSLINGER FOUR": {1};
        case "GUNSLINGER FIVE": {1};
        case "GUNSLINGER SIX": {1};
        case "GUNSLINGER SEVEN": {1};

        case "ZEUS": {1};

        default {1};
    };
} else {
    _channel = switch (_group) do {
        case "GODFATHER-5": {20};
        case "GODFATHER-6": {20};
        case "GODFATHER-7": {20};

        case "MUSTANG-1": {15};
        case "MUSTANG-2": {15};

        case "APOLLO-1": {15};
        case "APOLLO-5": {15};
        case "APOLLO-6": {15};
        
        case "ATLAS-1": {15};
        case "ATLAS-2": {15};
        case "ATLAS-3": {15};
        case "ATLAS-4": {15};
        case "ATLAS-5": {15};
        case "ATLAS-6": {15};
        
        //Air
        case "PEGASUS-2": {2};

        case "BUFFALO-1": {2};
        case "BUFFALO-2": {2};
        case "BUFFALO-3": {2};
        case "BUFFALO-4": {2};

        case "GRIZZLY-1": {2};
        case "GRIZZLY-2": {2};
        case "GRIZZLY-3": {2};

        case "RAVEN-1": {2};
        case "RAVEN-2": {2};
        case "RAVEN-3": {2};
        case "RAVEN-4": {2};

        case "EAGLE-1": {2};
        case "EAGLE-2": {2};
        case "EAGLE-3": {2};

        case "HOG-1": {2};
        case "HOG-2": {2};
        case "HOG-3": {2};
        case "HOG-4": {2};

        case "RAIDER-1": {2};
        case "RAIDER-2": {2};

        case "TITAN-1": {2};
        case "TITAN-2": {2};
        case "TITAN-3": {2};
        case "TITAN-4": {2};

        // Ground
        case "SABER-1": {6};
        case "SABER-2": {6};
        case "SABER-3": {6};
        case "SABER-4": {6};
        case "SABER-7": {6};

        case "VIKING-1": {2};
        case "VIKING-2": {2};
        case "VIKING-3": {2};
        case "VIKING-4": {2};
        case "VIKING-5": {2};
        case "VIKING-6": {2};
        case "VIKING-7": {2};

        case "LANCER-1": {3};
        case "LANCER-2": {3};
        case "LANCER-3": {3};
        case "LANCER-4": {3};
        case "LANCER-5": {3};
        case "LANCER-6": {3};
        case "LANCER-7": {3};

        case "BANDIT-1": {7};
        case "BANDIT-2": {7};
        case "BANDIT-3": {7};
        case "BANDIT-4": {7};
        case "BANDIT-5": {7};
        case "BANDIT-6": {7};
        case "BANDIT-7": {7};

        case "MISFIT-1": {8};
        case "MISFIT-2": {8};
        case "MISFIT-3": {8};
        case "MISFIT-4": {8};
        case "MISFIT-5": {8};
        case "MISFIT-6": {8};
        case "MISFIT-7": {8};

        case "GUNSLINGER-1": {8};
        case "GUNSLINGER-2": {8};
        case "GUNSLINGER-3": {8};
        case "GUNSLINGER-4": {8};
        case "GUNSLINGER-5": {8};
        case "GUNSLINGER-6": {8};
        case "GUNSLINGER-7": {8};

        // LETTER NAMING
        case "GODFATHER FIVE": {20};
        case "GODFATHER SIX": {20};
        case "GODFATHER SEVEN": {20};

        case "MUSTANG ONE": {15};
        case "MUSTANG TWO": {15};

        case "APOLLO ONE": {15};
        case "APOLLO FIVE": {15};
        case "APOLLO SIX": {15};
        
        case "ATLAS ONE": {15};
        case "ATLAS TWO": {15};
        case "ATLAS THREE": {15};
        case "ATLAS FOUR": {15};
        case "ATLAS FIVE": {15};
        case "ATLAS SIX": {15};
        
        //Air
        case "PEGASUS TWO": {2};

        case "BUFFALO ONE": {2};
        case "BUFFALO TWO": {2};
        case "BUFFALO THREE": {2};
        case "BUFFALO FOUR": {2};

        case "GRIZZLY ONE": {2};
        case "GRIZZLY TWO": {2};
        case "GRIZZLY THREE": {2};

        case "RAVEN ONE": {2};
        case "RAVEN TWO": {2};
        case "RAVEN THREE": {2};
        case "RAVEN FOUR": {2};

        case "EAGLE ONE": {2};
        case "EAGLE TWO": {2};
        case "EAGLE THREE": {2};

        case "HOG ONE": {2};
        case "HOG TWO": {2};
        case "HOG THREE": {2};
        case "HOG FOUR": {2};

        case "RAIDER ONE": {2};
        case "RAIDER TWO": {2};

        case "TITAN ONE": {2};
        case "TITAN TWO": {2};
        case "TITAN THREE": {2};
        case "TITAN FOUR": {2};

        // Ground
        case "SABER ONE": {6};
        case "SABER TWO": {6};
        case "SABER THREE": {6};
        case "SABER FOUR": {6};
        case "SABER SEVEN": {6};

        case "VIKING ONE": {2};
        case "VIKING TWO": {2};
        case "VIKING THREE": {2};
        case "VIKING FOUR": {2};
        case "VIKING FIVE": {2};
        case "VIKING SIX": {2};
        case "VIKING SEVEN": {2};

        case "LANCER ONE": {3};
        case "LANCER TWO": {3};
        case "LANCER THREE": {3};
        case "LANCER FOUR": {3};
        case "LANCER FIVE": {3};
        case "LANCER SIX": {3};
        case "LANCER SEVEN": {3};

        case "BANDIT ONE": {7};
        case "BANDIT TWO": {7};
        case "BANDIT THREE": {7};
        case "BANDIT FOUR": {7};
        case "BANDIT FIVE": {7};
        case "BANDIT SIX": {7};
        case "BANDIT SEVEN": {7};

        case "MISFIT ONE": {8};
        case "MISFIT TWO": {8};
        case "MISFIT THREE": {8};
        case "MISFIT FOUR": {8};
        case "MISFIT FIVE": {8};
        case "MISFIT SIX": {8};
        case "MISFIT SEVEN": {8};

        case "GUNSLINGER ONE": {0};
        case "GUNSLINGER TWO": {0};
        case "GUNSLINGER THREE": {0};
        case "GUNSLINGER FOUR": {0};
        case "GUNSLINGER FIVE": {0};
        case "GUNSLINGER SIX": {0};
        case "GUNSLINGER SEVEN": {0};

        case "ZEUS": {18};

        default {0};
    };
};

_channel;
