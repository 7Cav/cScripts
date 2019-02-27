#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function fetch a squad radio channel based on your squad name.
 *
 * Arguments:
 *
 * Return Value:
 * Radio Channel <NUMBER>
 *
 * Example:
 * [] call cScripts_fnc_getSquadInsignia
 *
 * Public: No
 */

private _return = "";
private _group = call FUNC(getCavSquadName);
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

    case "VIKING-1": {_return = "Cav_Insignia_Bravo_2_1"};
    case "VIKING-2": {_return = "Cav_Insignia_Bravo_2"};
    case "VIKING-3": {_return = "Cav_Insignia_Bravo_2"};
    case "VIKING-4": {_return = "Cav_Insignia_Bravo_2"};
    case "VIKING-5": {_return = "Cav_Insignia_Bravo_2"};
    case "VIKING-6": {_return = "Cav_Insignia_Bravo_2"};
    case "VIKING-7": {_return = "Cav_Insignia_Bravo_2"};

    case "PUNISHER-1": {_return = ""};
    case "PUNISHER-2": {_return = ""};
    case "PUNISHER-3": {_return = ""};
    case "PUNISHER-4": {_return = ""};
    case "PUNISHER-5": {_return = ""};
    case "PUNISHER-6": {_return = ""};
    case "PUNISHER-7": {_return = ""};

    case "BANDIT-1": {_return = "Cav_Insignia_Charlie_1_1"};
    case "BANDIT-2": {_return = "Cav_Insignia_Charlie_1_2"};
    case "BANDIT-3": {_return = "Cav_Insignia_Charlie_1_3"};
    case "BANDIT-4": {_return = "Cav_Insignia_Charlie_1_4"};
    case "BANDIT-5": {_return = "Cav_Insignia_Charlie_1"};
    case "BANDIT-6": {_return = "Cav_Insignia_Charlie_1"};
    case "BANDIT-7": {_return = "Cav_Insignia_Charlie_1"};

    case "MISFIT-1": {_return = "Cav_Insignia_Charlie_2_1"};
    case "MISFIT-2": {_return = "Cav_Insignia_Charlie_2"};
    case "MISFIT-3": {_return = "Cav_Insignia_Charlie_2"};
    case "MISFIT-4": {_return = "Cav_Insignia_Charlie_2"};
    case "MISFIT-5": {_return = "Cav_Insignia_Charlie_2"};
    case "MISFIT-6": {_return = "Cav_Insignia_Charlie_2"};
    case "MISFIT-7": {_return = "Cav_Insignia_Charlie_2"};

    // Ranger
    case "ROUGHNECK-1": {_return = "Cav_Insignia_Specialized_Ranger"};
    case "ROUGHNECK-2": {_return = "Cav_Insignia_Specialized_Ranger"};
    case "ROUGHNECK-3": {_return = "Cav_Insignia_Specialized_Ranger"};
    case "ROUGHNECK-4": {_return = "Cav_Insignia_Specialized_Ranger"};
    case "ROUGHNECK-6": {_return = "Cav_Insignia_Specialized_Ranger"};
    case "PHANTOM-1": {_return = "Cav_Insignia_Specialized_Ranger"};
    case "PHANTOM-2": {_return = "Cav_Insignia_Specialized_Ranger"};
    

    // Letter name variant
    case "GODFATHER FIVE": {_return = ""};
    case "GODFATHER SIX": {_return = ""};
    case "GODFATHER SEVEN": {_return = ""};

    case "MUSTANG ONE": {_return = ""};
    case "MUSTANG TWO": {_return = ""};

    case "APOLLO ONE": {_return = ""};
    case "APOLLO FIVE": {_return = ""};
    case "APOLLO SIX": {_return = ""};
    
    //Air
    case "PEGASUS TWO": {_return = ""};

    case "BUFFALO ONE": {_return = ""};
    case "BUFFALO TWO": {_return = ""};
    case "BUFFALO THREE": {_return = ""};
    case "BUFFALO FOUR": {_return = ""};

    case "GRIZZLY ONE": {_return = ""};
    case "GRIZZLY TWO": {_return = ""};
    case "GRIZZLY THREE": {_return = ""};

    case "RAVEN ONE": {_return = ""};
    case "RAVEN TWO": {_return = ""};
    case "RAVEN THREE": {_return = ""};
    case "RAVEN FOUR": {_return = ""};

    case "EAGLE ONE": {_return = ""};
    case "EAGLE TWO": {_return = ""};
    case "EAGLE THREE": {_return = ""};

    case "HOG ONE": {_return = ""};
    case "HOG TWO": {_return = ""};
    case "HOG THREE": {_return = ""};
    case "HOG FOUR": {_return = ""};

    case "RAIDER ONE": {_return = ""};
    case "RAIDER TWO": {_return = ""};

    case "TITAN ONE": {_return = ""};
    case "TITAN TWO": {_return = ""};
    case "TITAN THREE": {_return = ""};
    case "TITAN FOUR": {_return = ""};

    // Ground
    case "SABER ONE": {_return = ""};
    case "SABER TWO": {_return = ""};
    case "SABER THREE": {_return = ""};
    case "SABER FOUR": {_return = ""};
    case "SABER SEVEN": {_return = ""};

    case "VIKING ONE": {_return = "Cav_Insignia_Bravo_2_1"};
    case "VIKING TWO": {_return = "Cav_Insignia_Bravo_2"};
    case "VIKING THREE": {_return = "Cav_Insignia_Bravo_2"};
    case "VIKING FOUR": {_return = "Cav_Insignia_Bravo_2"};
    case "VIKING FIVE": {_return = "Cav_Insignia_Bravo_2"};
    case "VIKING SIX": {_return = "Cav_Insignia_Bravo_2"};
    case "VIKING SEVEN": {_return = "Cav_Insignia_Bravo_2"};

    case "PUNISHER ONE": {_return = ""};
    case "PUNISHER TWO": {_return = ""};
    case "PUNISHER THREE": {_return = ""};
    case "PUNISHER FOUR": {_return = ""};
    case "PUNISHER FIVE": {_return = ""};
    case "PUNISHER SIX": {_return = ""};
    case "PUNISHER SEVEN": {_return = ""};

    case "BANDIT ONE": {_return = "Cav_Insignia_Charlie_1_1"};
    case "BANDIT TWO": {_return = "Cav_Insignia_Charlie_1_2"};
    case "BANDIT THREE": {_return = "Cav_Insignia_Charlie_1_3"};
    case "BANDIT FOUR": {_return = "Cav_Insignia_Charlie_1_4"};
    case "BANDIT FIVE": {_return = "Cav_Insignia_Charlie_1"};
    case "BANDIT SIX": {_return = "Cav_Insignia_Charlie_1"};
    case "BANDIT SEVEN": {_return = "Cav_Insignia_Charlie_1"};

    case "MISFIT ONE": {_return = "Cav_Insignia_Charlie_2_1"};
    case "MISFIT TWO": {_return = "Cav_Insignia_Charlie_2"};
    case "MISFIT THREE": {_return = "Cav_Insignia_Charlie_2"};
    case "MISFIT FOUR": {_return = "Cav_Insignia_Charlie_2"};
    case "MISFIT FIVE": {_return = "Cav_Insignia_Charlie_2"};
    case "MISFIT SIX": {_return = "Cav_Insignia_Charlie_2"};
    case "MISFIT SEVEN": {_return = "Cav_Insignia_Charlie_2"};

    // Ranger
    case "ROUGHNECK ONE": {_return = "Cav_Insignia_Specialized_Ranger"};
    case "ROUGHNECK TWO": {_return = "Cav_Insignia_Specialized_Ranger"};
    case "ROUGHNECK THREE": {_return = "Cav_Insignia_Specialized_Ranger"};
    case "ROUGHNECK FOUR": {_return = "Cav_Insignia_Specialized_Ranger"};
    case "ROUGHNECK SIX": {_return = "Cav_Insignia_Specialized_Ranger"};
    case "PHANTOM ONE": {_return = "Cav_Insignia_Specialized_Ranger"};
    case "PHANTOM TWO": {_return = "Cav_Insignia_Specialized_Ranger"};

    case "ZEUS": {_return = "Curator"};

    default {_return = ""};
};

_return;
