#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function return your squad insignia based on your squad name or stored value.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Radio Channel <NUMBER>
 *
 * Example:
 * call cScripts_fnc_unit_getSquadInsignia
 *
 * Public: No
 */

private _group = [player] call EFUNC(unit,getSquadName);
_group = toUpper(_group);

private _return = switch (_group) do {
    case "GODFATHER-5";
    case "GODFATHER-6";
    case "GODFATHER-7";
    case "GODFATHER":        {"Cav_Insignia_Custom_Cav_7_ocp"};

    // Alpha
    case "PEGASUS-5";
    case "PEGASUS-6";
    case "PEGASUS-7";
    case "PEGASUS":         {"Cav_Insignia_specialized_pegasus"};

    case "BUFFALO";
    case "BUFFALO-1";
    case "BUFFALO-2";
    case "BUFFALO-3";
    case "BUFFALO-4";
    case "GRIZZLY";
    case "GRIZZLY-1";
    case "GRIZZLY-2";
    case "GRIZZLY-3";
    case "RAVEN";
    case "RAVEN-1";
    case "RAVEN-2";
    case "RAVEN-3";
    case "RAVEN-4";
    case "SPARROW";
    case "SPARROW-1";
    case "SPARROW-1";
    case "SPARROW-1";
    case "SPARROW-1";
    case "RAIDER";
    case "RAIDER-1";
    case "RAIDER-2";
    case "EAGLE";
    case "EAGLE-1";
    case "EAGLE-2";
    case "EAGLE-3";
    case "LIGHTNING";
    case "LIGHTNING-1";
    case "LIGHTNING-2";
    case "LIGHTNING-3";
    case "RAPTOR";
    case "RAPTOR-1";
    case "RAPTOR-2";
    case "RAPTOR-3";
    case "TITAN";
    case "TITAN-1";
    case "TITAN-2";
    case "TITAN-3";
    case "TITAN-4";
    case "HOG";
    case "HOG-1";
    case "HOG-2";
    case "HOG-3";
    case "HOG-4":           {"Cav_Insignia_specialized_pegasus"};


    // Bravo
    case "WARHORSE-5";
    case "WARHORSE-6";
    case "WARHORSE-7";
    case "WARHORSE":        {"Cav_Insignia_Custom_Cav_7_ocp"};

    case "ATLAS-1":         {"Cav_Insignia_Bravo_1_1"};
    case "ATLAS-2":         {"Cav_Insignia_Bravo_1"};
    case "ATLAS-3":         {"Cav_Insignia_Bravo_1_3"};
    case "ATLAS-4":         {"Cav_Insignia_Bravo_1_4"};
    case "ATLAS-5";
    case "ATLAS-6";
    case "ATLAS-7";
    case "ATLAS":           {"Cav_Insignia_Bravo_1"};

    case "VIKING-1":        {"Cav_Insignia_Bravo_2_1"};
    case "VIKING-2":        {"Cav_Insignia_Bravo_2_2"};
    case "VIKING-3":        {"Cav_Insignia_Bravo_2_3"};
    case "VIKING-4":        {"Cav_Insignia_Bravo_2_4"};
    case "VIKING-5";
    case "VIKING-6";
    case "VIKING-7";
    case "VIKING":          {"Cav_Insignia_Bravo_2"};


    // Charlie
    case "HITMAN-5";
    case "HITMAN-6";
    case "HITMAN-7";
    case "HITMAN":          {"Cav_Insignia_Custom_Cav_7_ocp"};

    case "BANDIT-1":        {"Cav_Insignia_Charlie_1_1"};
    case "BANDIT-2":        {"Cav_Insignia_Charlie_1_2"};
    case "BANDIT-3":        {"Cav_Insignia_Charlie_1_3"};
    case "BANDIT-4":        {"Cav_Insignia_Charlie_1_4"};
    case "BANDIT-5";
    case "BANDIT-6";
    case "BANDIT-7";
    case "BANDIT":          {"Cav_Insignia_Charlie_1"};

    case "MISFIT-1":        {"Cav_Insignia_Charlie_2_1"};
    case "MISFIT-2":        {"Cav_Insignia_Charlie_2_2"};
    case "MISFIT-3":        {"Cav_Insignia_Charlie_2_3"};
    case "MISFIT-4":        {"Cav_Insignia_Charlie_2_4"};
    case "MISFIT-5";
    case "MISFIT-6";
    case "MISFIT-7";
    case "MISFIT":          {"Cav_Insignia_Charlie_2"};

    case "ZEUS": {"Curator"};

    default {""};
};

_return;
