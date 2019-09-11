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
private _group = [player] call FUNC(getSquadName);
_group = toUpper(_group);

switch (_group) do {
    case "GODFATHER FIVE";
    case "GODFATHER-5": {_return = ""};
    case "GODFATHER SIX";
    case "GODFATHER-6": {_return = ""};
    case "GODFATHER SEVEN";
    case "GODFATHER-7": {_return = ""};

    case "MUSTANG ONE";
    case "MUSTANG-1": {_return = ""};
    case "MUSTANG TWO";
    case "MUSTANG-2": {_return = ""};

    case "APOLLO ONE";
    case "APOLLO-1": {_return = ""};
    case "APOLLO FIVE";
    case "APOLLO-5": {_return = ""};
    case "APOLLO SIX";
    case "APOLLO-6": {_return = ""};
    
    //Air
    case "PEGASUS ONE";
    case "PEGASUS-1": {_return = ""};
    case "PEGASUS TWO";
    case "PEGASUS-2": {_return = ""};

    case "BUFFALO ONE";
    case "BUFFALO-1": {_return = ""};
    case "BUFFALO TWO";
    case "BUFFALO-2": {_return = ""};
    case "BUFFALO THREE";
    case "BUFFALO-3": {_return = ""};
    case "BUFFALO FOUR";
    case "BUFFALO-4": {_return = ""};

    case "GRIZZLY ONE";
    case "GRIZZLY-1": {_return = ""};
    case "GRIZZLY TWO";
    case "GRIZZLY-2": {_return = ""};
    case "GRIZZLY THREE";
    case "GRIZZLY-3": {_return = ""};

    case "RAVEN ONE";
    case "RAVEN-1": {_return = ""};
    case "RAVEN TWO";
    case "RAVEN-2": {_return = ""};
    case "RAVEN THREE";
    case "RAVEN-3": {_return = ""};
    case "RAVEN FOUR";
    case "RAVEN-4": {_return = ""};

    case "EAGLE ONE";
    case "EAGLE-1": {_return = ""};
    case "EAGLE TWO";
    case "EAGLE-2": {_return = ""};
    case "EAGLE THREE";
    case "EAGLE-3": {_return = ""};

    case "HOG ONE";
    case "HOG-1": {_return = ""};
    case "HOG TWO";
    case "HOG-2": {_return = ""};
    case "HOG THREE";
    case "HOG-3": {_return = ""};
    case "HOG FOUR";
    case "HOG-4": {_return = ""};

    case "RAIDER ONE";
    case "RAIDER-1": {_return = ""};
    case "RAIDER TWO";
    case "RAIDER-2": {_return = ""};

    case "TITAN ONE";
    case "TITAN-1": {_return = ""};
    case "TITAN TWO";
    case "TITAN-2": {_return = ""};
    case "TITAN THREE";
    case "TITAN-3": {_return = ""};
    case "TITAN FOUR";
    case "TITAN-4": {_return = ""};

    // Ground
    case "SABER ONE";
    case "SABER-1": {_return = ""};
    case "SABER TWO";
    case "SABER-2": {_return = ""};
    case "SABER THREE";
    case "SABER-3": {_return = ""};
    case "SABER FOUR";
    case "SABER-4": {_return = ""};
    case "SABER FIVE";
    case "SABER-5": {_return = ""};
    case "SABER SIX";
    case "SABER-6": {_return = ""};
    case "SABER SEVEN";
    case "SABER-7": {_return = ""};

    case "VIKING ONE";
    case "VIKING-1": {_return = "Cav_Insignia_Bravo_2_1"};
    case "VIKING TWO";
    case "VIKING-2": {_return = "Cav_Insignia_Bravo_2"};
    case "VIKING THREE";
    case "VIKING-3": {_return = "Cav_Insignia_Bravo_2"};
    case "VIKING FOUR";
    case "VIKING-4": {_return = "Cav_Insignia_Bravo_2"};
    case "VIKING FIVE";
    case "VIKING-5": {_return = "Cav_Insignia_Bravo_2"};
    case "VIKING SIX";
    case "VIKING-6": {_return = "Cav_Insignia_Bravo_2"};
    case "VIKING SEVEN";
    case "VIKING-7": {_return = "Cav_Insignia_Bravo_2"};

    case "PUNISHER ONE";
    case "PUNISHER-1": {_return = ""};
    case "PUNISHER TWO";
    case "PUNISHER-2": {_return = ""};
    case "PUNISHER THREE";
    case "PUNISHER-3": {_return = ""};
    case "PUNISHER FOUR";
    case "PUNISHER-4": {_return = ""};
    case "PUNISHER FIVE";
    case "PUNISHER-5": {_return = ""};
    case "PUNISHER SIX";
    case "PUNISHER-6": {_return = ""};
    case "PUNISHER SEVEN";
    case "PUNISHER-7": {_return = ""};

    case "BANDIT ONE";
    case "BANDIT-1": {_return = "Cav_Insignia_Charlie_1_1"};
    case "BANDIT TWO";
    case "BANDIT-2": {_return = "Cav_Insignia_Charlie_1_2"};
    case "BANDIT THREE";
    case "BANDIT-3": {_return = "Cav_Insignia_Charlie_1_3"};
    case "BANDIT FOUR";
    case "BANDIT-4": {_return = "Cav_Insignia_Charlie_1_4"};
    case "BANDIT FIVE";
    case "BANDIT-5": {_return = "Cav_Insignia_Charlie_1"};
    case "BANDIT SIX";
    case "BANDIT-6": {_return = "Cav_Insignia_Charlie_1"};
    case "BANDIT SEVEN";
    case "BANDIT-7": {_return = "Cav_Insignia_Charlie_1"};

    case "MISFIT ONE";
    case "MISFIT-1": {_return = "Cav_Insignia_Charlie_2_1"};
    case "MISFIT TWO";
    case "MISFIT-2": {_return = "Cav_Insignia_Charlie_2_2"};
    case "MISFIT THREE";
    case "MISFIT-3": {_return = "Cav_Insignia_Charlie_2"};
    case "MISFIT FOUR";
    case "MISFIT-4": {_return = "Cav_Insignia_Charlie_2_4"};
    case "MISFIT FIVE";
    case "MISFIT-5": {_return = "Cav_Insignia_Charlie_2"};
    case "MISFIT SIX";
    case "MISFIT-6": {_return = "Cav_Insignia_Charlie_2"};
    case "MISFIT SEVEN";
    case "MISFIT-7": {_return = "Cav_Insignia_Charlie_2"};

    // Ranger
    case "ROUGHNECK ONE";
    case "ROUGHNECK-1": {_return = "Cav_Insignia_Specialized_Ranger"};
    case "ROUGHNECK TWO";
    case "ROUGHNECK-2": {_return = "Cav_Insignia_Specialized_Ranger"};
    case "ROUGHNECK THREE";
    case "ROUGHNECK-3": {_return = "Cav_Insignia_Specialized_Ranger"};
    case "ROUGHNECK FOUR";
    case "ROUGHNECK-4": {_return = "Cav_Insignia_Specialized_Ranger"};
    case "ROUGHNECK FIVE";
    case "ROUGHNECK-6": {_return = "Cav_Insignia_Specialized_Ranger"};

    case "PHANTOM ONE";
    case "PHANTOM-1": {_return = "Cav_Insignia_Specialized_Ranger"};
    case "PHANTOM TWO";
    case "PHANTOM-2": {_return = "Cav_Insignia_Specialized_Ranger"};
    
    case "ZEUS": {_return = "Curator"};

    default {_return = ""};
};

_return;
