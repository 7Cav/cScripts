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
 * ["bob"] call cScripts_fnc_getSquadInsignia
 *
 * Public: No
 */
#define DEBUG_MODE;

params [["_player", objNull, [objNull]]];

private _return = "";
private _channel = 0;
private _group = groupId (group _player);
_group = toUpper(_group);

switch (_group) do {
    case "GODFATHER-5": {_return = ""};
    case "GODFATHER-6": {_return = ""};
    case "GODFATHER-7": {_return = ""};

    case "MUSTANG-1": {_return = ""};
    case "MUSTANG-2": {_return = ""};

    case "APOLLO-1": {_return = ""};
    case "APOLLO-5": {_return = ""};
    case "APOLLO-6": {_return = ""};
    
    //Air
    case "PEGASUS-2": {_return = ""};

    case "BUFFALO-1": {_return = ""};
    case "BUFFALO-2": {_return = ""};
    case "BUFFALO-3": {_return = ""};
    case "BUFFALO-4": {_return = ""};

    case "GRIZZLY-1": {_return = ""};
    case "GRIZZLY-2": {_return = ""};
    case "GRIZZLY-3": {_return = ""};

    case "RAVEN-1": {_return = ""};
    case "RAVEN-2": {_return = ""};
    case "RAVEN-3": {_return = ""};
    case "RAVEN-4": {_return = ""};

    case "EAGLE-1": {_return = ""};
    case "EAGLE-2": {_return = ""};
    case "EAGLE-3": {_return = ""};

    case "HOG-1": {_return = ""};
    case "HOG-2": {_return = ""};
    case "HOG-3": {_return = ""};
    case "HOG-4": {_return = ""};

    case "RAIDER-1": {_return = ""};
    case "RAIDER-2": {_return = ""};

    case "TITAN-1": {_return = ""};
    case "TITAN-2": {_return = ""};
    case "TITAN-3": {_return = ""};
    case "TITAN-4": {_return = ""};

    // Ground
    case "SABER-1": {_return = ""};
    case "SABER-2": {_return = ""};
    case "SABER-3": {_return = ""};
    case "SABER-4": {_return = ""};
    case "SABER-7": {_return = ""};

    case "VIKING-1": {_return = ""};
    case "VIKING-2": {_return = ""};
    case "VIKING-3": {_return = ""};
    case "VIKING-4": {_return = ""};
    case "VIKING-5": {_return = ""};
    case "VIKING-6": {_return = ""};
    case "VIKING-7": {_return = ""};

    case "PUNISHER-1": {_return = ""};
    case "PUNISHER-2": {_return = ""};
    case "PUNISHER-3": {_return = ""};
    case "PUNISHER-4": {_return = ""};
    case "PUNISHER-5": {_return = ""};
    case "PUNISHER-6": {_return = ""};
    case "PUNISHER-7": {_return = ""};

    case "BANDIT-1": {_return = QUOTE(TRIPLES(Cav,Insignia,Charlie_1_1))};
    case "BANDIT-2": {_return = QUOTE(TRIPLES(Cav,Insignia,Charlie_1_2))};
    case "BANDIT-3": {_return = QUOTE(TRIPLES(Cav,Insignia,Charlie_1_3))};
    case "BANDIT-4": {_return = QUOTE(TRIPLES(Cav,Insignia,Charlie_1_4))};
    case "BANDIT-5": {_return = QUOTE(TRIPLES(Cav,Insignia,Charlie_1))};
    case "BANDIT-6": {_return = QUOTE(TRIPLES(Cav,Insignia,Charlie_1))};
    case "BANDIT-7": {_return = QUOTE(TRIPLES(Cav,Insignia,Charlie_1))};

    case "MISFIT-1": {_return = QUOTE(TRIPLES(Cav,Insignia,Charlie_2_1))};
    case "MISFIT-2": {_return = QUOTE(TRIPLES(Cav,Insignia,Charlie_2))};
    case "MISFIT-3": {_return = QUOTE(TRIPLES(Cav,Insignia,Charlie_2))};
    case "MISFIT-4": {_return = QUOTE(TRIPLES(Cav,Insignia,Charlie_2))};
    case "MISFIT-5": {_return = QUOTE(TRIPLES(Cav,Insignia,Charlie_2))};
    case "MISFIT-6": {_return = QUOTE(TRIPLES(Cav,Insignia,Charlie_2))};
    case "MISFIT-7": {_return = QUOTE(TRIPLES(Cav,Insignia,Charlie_2))};

    // Ranger
    case "ROUGHNECK-1": {_return = QUOTE(TRIPLES(Cav,Insignia,Specialized_Ranger))};
    case "ROUGHNECK-2": {_return = QUOTE(TRIPLES(Cav,Insignia,Specialized_Ranger))};
    case "ROUGHNECK-3": {_return = QUOTE(TRIPLES(Cav,Insignia,Specialized_Ranger))};
    case "ROUGHNECK-4": {_return = QUOTE(TRIPLES(Cav,Insignia,Specialized_Ranger))};
    case "ROUGHNECK-6": {_return = QUOTE(TRIPLES(Cav,Insignia,Specialized_Ranger))};
    case "PHANTOM-1": {_return = QUOTE(TRIPLES(Cav,Insignia,Specialized_Ranger))};
    case "PHANTOM-2": {_return = QUOTE(TRIPLES(Cav,Insignia,Specialized_Ranger))};
    
    case "ZEUS": {_return = ""};

    default {_return = ""};
};

_return;