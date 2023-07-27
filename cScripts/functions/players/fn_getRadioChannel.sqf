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

if (!EGVAR(Patches,usesACRE) && !EGVAR(Patches,usesTFAR)) exitWith {nil};

if (_group isEqualTo "") exitWith {0};
_group = toUpper(_group);

private _radioMod = if (EGVAR(Patches,usesACRE)) then {"ACRE"} else {"TFAR"};
_radio = toUpper(_radio);

_radioType = switch (_radio) do {
    case "ACRE_PRC343";
    case "TFAR_ANPRC152";
    case "SR": {"SR"};
    default {"LR"};
};

private _srHashMap = [
    ["GODFATHER",       [["ACRE", 4], ["TFAR", 50]]],
    ["GODFATHER-5",     [["ACRE", 4], ["TFAR", 100]]],
    ["GODFATHER-6",     [["ACRE", 4], ["TFAR", 100]]],
    ["GODFATHER-7",     [["ACRE", 4], ["TFAR", 100]]],

    ["WARHORSE",        [["ACRE", 4], ["TFAR", 53]]],
    ["WARHORSE-5",      [["ACRE", 4], ["TFAR", 120.5]]],
    ["WARHORSE-6",      [["ACRE", 4], ["TFAR", 120.5]]],
    ["WARHORSE-7",      [["ACRE", 4], ["TFAR", 120.5]]],

    ["HITMAN",          [["ACRE", 4], ["TFAR", 54]]],
    ["HITMAN-5",        [["ACRE", 4], ["TFAR", 130.5]]],
    ["HITMAN-6",        [["ACRE", 4], ["TFAR", 130.5]]],
    ["HITMAN-7",        [["ACRE", 4], ["TFAR", 130.5]]],

    //["MUSTANG-1",       [["ACRE", 2], ["TFAR", 0]]],
    //["MUSTANG-2",       [["ACRE", 3], ["TFAR", 0]]],

    //["APOLLO-1",        [["ACRE", 1], ["TFAR", 0]]],
    //["APOLLO-5",        [["ACRE", 1], ["TFAR", 0]]],
    //["APOLLO-6",        [["ACRE", 1], ["TFAR", 0]]],

    ["ATLAS",           [["ACRE", 2], ["TFAR", 121]]],
    ["ATLAS-1",         [["ACRE", 2], ["TFAR", 121.1]]],
    ["ATLAS-2",         [["ACRE", 3], ["TFAR", 121.2]]],
    ["ATLAS-3",         [["ACRE", 1], ["TFAR", 121.3]]],
    ["ATLAS-4",         [["ACRE", 1], ["TFAR", 121.4]]],
    ["ATLAS-5",         [["ACRE", 1], ["TFAR", 121.5]]],
    ["ATLAS-6",         [["ACRE", 1], ["TFAR", 121.5]]],
    ["ATLAS-7",         [["ACRE", 1], ["TFAR", 121.5]]],

    //Air   
    ["PEGASUS",         [["ACRE", 1], ["TFAR", 52]]],
    ["PEGASUS-5",       [["ACRE", 1], ["TFAR", 52]]],
    ["PEGASUS-6",       [["ACRE", 1], ["TFAR", 52]]],
    ["PEGASUS-7",       [["ACRE", 1], ["TFAR", 52]]],

    ["BUFFALO",         [["ACRE", 113], ["TFAR", 52.1]]],
    ["BUFFALO-1",       [["ACRE", 113], ["TFAR", 52.1]]],
    ["BUFFALO-2",       [["ACRE", 114], ["TFAR", 52.1]]],
    ["BUFFALO-3",       [["ACRE", 115], ["TFAR", 52.1]]],
    ["BUFFALO-4",       [["ACRE", 116], ["TFAR", 52.1]]],

    ["GRIZZLY",         [["ACRE", 117], ["TFAR", 52.2]]],
    ["GRIZZLY-1",       [["ACRE", 117], ["TFAR", 52.2]]],
    ["GRIZZLY-2",       [["ACRE", 118], ["TFAR", 52.2]]],
    ["GRIZZLY-3",       [["ACRE", 119], ["TFAR", 52.2]]],

    ["RAVEN",           [["ACRE", 120], ["TFAR", 52.3]]],
    ["RAVEN-1",         [["ACRE", 120], ["TFAR", 52.3]]],
    ["RAVEN-2",         [["ACRE", 121], ["TFAR", 52.3]]],
    ["RAVEN-3",         [["ACRE", 122], ["TFAR", 52.3]]],
    ["RAVEN-4",         [["ACRE", 123], ["TFAR", 52.3]]],

    ["SPARROW",         [["ACRE", 1], ["TFAR", 52.4]]],
    ["SPARROW-1",       [["ACRE", 1], ["TFAR", 52.4]]],
    ["SPARROW-1",       [["ACRE", 1], ["TFAR", 52.4]]],
    ["SPARROW-1",       [["ACRE", 1], ["TFAR", 52.4]]],
    ["SPARROW-1",       [["ACRE", 1], ["TFAR", 52.4]]],

    ["RAIDER",          [["ACRE", 124], ["TFAR", 52.5]]],
    ["RAIDER-1",        [["ACRE", 124], ["TFAR", 52.5]]],
    ["RAIDER-2",        [["ACRE", 125], ["TFAR", 52.5]]],

    ["EAGLE",           [["ACRE", 1], ["TFAR", 52.6]]],
    ["EAGLE-1",         [["ACRE", 1], ["TFAR", 52.6]]],
    ["EAGLE-2",         [["ACRE", 1], ["TFAR", 52.6]]],
    ["EAGLE-3",         [["ACRE", 1], ["TFAR", 52.6]]],

    ["LIGHTNING",       [["ACRE", 1], ["TFAR", 52.7]]],
    ["LIGHTNING-1",     [["ACRE", 1], ["TFAR", 52.7]]],
    ["LIGHTNING-2",     [["ACRE", 1], ["TFAR", 52.7]]],
    ["LIGHTNING-3",     [["ACRE", 1], ["TFAR", 52.7]]],

    ["RAPTOR",           [["ACRE", 1], ["TFAR", 52.8]]],
    ["RAPTOR-1",         [["ACRE", 1], ["TFAR", 52.8]]],
    ["RAPTOR-2",         [["ACRE", 1], ["TFAR", 52.8]]],
    ["RAPTOR-3",         [["ACRE", 1], ["TFAR", 52.8]]],

    ["TITAN",           [["ACRE", 129], ["TFAR", 113.1]]],
    ["TITAN-1",         [["ACRE", 129], ["TFAR", 113.1]]],
    ["TITAN-2",         [["ACRE", 130], ["TFAR", 113.1]]],
    ["TITAN-3",         [["ACRE", 131], ["TFAR", 113.1]]],
    ["TITAN-4",         [["ACRE", 132], ["TFAR", 113.1]]],

    ["HOG",             [["ACRE", 1], ["TFAR", 52.9]]],
    ["HOG-1",           [["ACRE", 1], ["TFAR", 52.9]]],
    ["HOG-2",           [["ACRE", 1], ["TFAR", 52.9]]],
    ["HOG-3",           [["ACRE", 1], ["TFAR", 52.9]]],
    ["HOG-4",           [["ACRE", 1], ["TFAR", 52.9]]],

    // Ground
    ["SABER",           [["ACRE", 97], ["TFAR", 123]]],
    ["SABER-1",         [["ACRE", 97], ["TFAR", 123.1]]],
    ["SABER-2",         [["ACRE", 97], ["TFAR", 123.2]]],
    ["SABER-3",         [["ACRE", 98], ["TFAR", 123.3]]],
    ["SABER-4",         [["ACRE", 98], ["TFAR", 123.4]]],

    ["VIKING",          [["ACRE", 65], ["TFAR", 122.1]]],
    ["VIKING-1",        [["ACRE", 65], ["TFAR", 122.1]]],
    ["VIKING-2",        [["ACRE", 66], ["TFAR", 122.2]]],
    ["VIKING-3",        [["ACRE", 67], ["TFAR", 122.3]]],
    ["VIKING-4",        [["ACRE", 68], ["TFAR", 122.4]]],
    ["VIKING-5",        [["ACRE", 69], ["TFAR", 122.5]]],
    ["VIKING-6",        [["ACRE", 69], ["TFAR", 122.5]]],
    ["VIKING-7",        [["ACRE", 69], ["TFAR", 122.5]]],

    //["LANCER-1",        [["ACRE", 81], ["TFAR", 0]]],
    //["LANCER-2",        [["ACRE", 82], ["TFAR", 0]]],
    //["LANCER-3",        [["ACRE", 83], ["TFAR", 0]]],
    //["LANCER-4",        [["ACRE", 84], ["TFAR", 0]]],
    //["LANCER-5",        [["ACRE", 85], ["TFAR", 0]]],
    //["LANCER-6",        [["ACRE", 85], ["TFAR", 0]]],
    //["LANCER-7",        [["ACRE", 85], ["TFAR", 0]]],

    ["BANDIT",          [["ACRE", 17], ["TFAR", 131]]],
    ["BANDIT-1",        [["ACRE", 17], ["TFAR", 131.1]]],
    ["BANDIT-2",        [["ACRE", 18], ["TFAR", 131.2]]],
    ["BANDIT-3",        [["ACRE", 19], ["TFAR", 131.3]]],
    ["BANDIT-4",        [["ACRE", 20], ["TFAR", 131.4]]],
    ["BANDIT-5",        [["ACRE", 21], ["TFAR", 131.5]]],
    ["BANDIT-6",        [["ACRE", 21], ["TFAR", 131.5]]],
    ["BANDIT-7",        [["ACRE", 21], ["TFAR", 131.5]]],

    ["MISFIT",          [["ACRE", 33], ["TFAR", 132]]],
    ["MISFIT-1",        [["ACRE", 33], ["TFAR", 132.1]]],
    ["MISFIT-2",        [["ACRE", 34], ["TFAR", 132.2]]],
    ["MISFIT-3",        [["ACRE", 35], ["TFAR", 132.3]]],
    ["MISFIT-4",        [["ACRE", 36], ["TFAR", 132.4]]],
    ["MISFIT-5",        [["ACRE", 37], ["TFAR", 132.5]]],
    ["MISFIT-6",        [["ACRE", 37], ["TFAR", 132.5]]],
    ["MISFIT-7",        [["ACRE", 37], ["TFAR", 132.5]]],

    //["GUNSLINGER",      [["ACRE", 1], ["TFAR", 132]]],
    //["GUNSLINGER-1",    [["ACRE", 1], ["TFAR", 132.1]]],
    //["GUNSLINGER-2",    [["ACRE", 1], ["TFAR", 132.2]]],
    //["GUNSLINGER-3",    [["ACRE", 1], ["TFAR", 132.3]]],
    //["GUNSLINGER-4",    [["ACRE", 1], ["TFAR", 132.4]]],
    //["GUNSLINGER-5",    [["ACRE", 1], ["TFAR", 132.5]]],
    //["GUNSLINGER-6",    [["ACRE", 1], ["TFAR", 132.5]]],
    //["GUNSLINGER-7",    [["ACRE", 1], ["TFAR", 132.5]]],
    
    // Misc radio volume
    ["BRAVO HQ",        [["ACRE", 1], ["TFAR", 53]]],
    ["CHARLIE HQ",      [["ACRE", 1], ["TFAR", 54]]],
    ["ATLAS",           [["ACRE", 1], ["TFAR", 56]]],
    ["AVIATION",        [["ACRE", 1], ["TFAR", 52]]],

    ["ZEUS",            [["ACRE", 1], ["TFAR", 50]]]
];

private _lrHashMap = [
    ["GODFATHER",       [["ACRE", 20], ["TFAR", 50]]],
    ["GODFATHER-5",     [["ACRE", 20], ["TFAR", 50]]],
    ["GODFATHER-6",     [["ACRE", 20], ["TFAR", 50]]],
    ["GODFATHER-7",     [["ACRE", 20], ["TFAR", 50]]],

    ["WARHORSE",        [["ACRE", 4], ["TFAR", 53]]],
    ["WARHORSE-5",      [["ACRE", 4], ["TFAR", 54]]],
    ["WARHORSE-6",      [["ACRE", 4], ["TFAR", 54]]],
    ["WARHORSE-7",      [["ACRE", 4], ["TFAR", 54]]],

    ["HITMAN",          [["ACRE", 4], ["TFAR", 54]]],
    ["HITMAN-5",        [["ACRE", 4], ["TFAR", 54]]],
    ["HITMAN-6",        [["ACRE", 4], ["TFAR", 54]]],
    ["HITMAN-7",        [["ACRE", 4], ["TFAR", 54]]],

    //["MUSTANG-1",       [["ACRE", 15], ["TFAR", 0]]],
    //["MUSTANG-2",       [["ACRE", 15], ["TFAR", 0]]],

    //["APOLLO-1",        [["ACRE", 15], ["TFAR", 0]]],
    //["APOLLO-5",        [["ACRE", 15], ["TFAR", 0]]],
    //["APOLLO-6",        [["ACRE", 15], ["TFAR", 0]]],

    ["ATLAS",           [["ACRE", 15], ["TFAR", 121]]],
    ["ATLAS-1",         [["ACRE", 15], ["TFAR", 121]]],
    ["ATLAS-2",         [["ACRE", 15], ["TFAR", 121]]],
    ["ATLAS-3",         [["ACRE", 15], ["TFAR", 121]]],
    ["ATLAS-4",         [["ACRE", 15], ["TFAR", 121]]],
    ["ATLAS-5",         [["ACRE", 15], ["TFAR", 121]]],
    ["ATLAS-6",         [["ACRE", 15], ["TFAR", 121]]],
    ["ATLAS-7",         [["ACRE", 15], ["TFAR", 121]]],

    //Air
    ["PEGASUS",         [["ACRE", 2], ["TFAR", 50]]],
    ["PEGASUS-6",       [["ACRE", 2], ["TFAR", 50]]],
    ["PEGASUS-5",       [["ACRE", 2], ["TFAR", 50]]],
    ["PEGASUS-7",       [["ACRE", 2], ["TFAR", 50]]],

    ["BUFFALO",         [["ACRE", 2], ["TFAR", 52]]],
    ["BUFFALO-1",       [["ACRE", 2], ["TFAR", 52]]],
    ["BUFFALO-2",       [["ACRE", 2], ["TFAR", 52]]],
    ["BUFFALO-3",       [["ACRE", 2], ["TFAR", 52]]],
    ["BUFFALO-4",       [["ACRE", 2], ["TFAR", 52]]],

    ["GRIZZLY",         [["ACRE", 2], ["TFAR", 52]]],
    ["GRIZZLY-1",       [["ACRE", 2], ["TFAR", 52]]],
    ["GRIZZLY-2",       [["ACRE", 2], ["TFAR", 52]]],
    ["GRIZZLY-3",       [["ACRE", 2], ["TFAR", 52]]],

    ["RAVEN",           [["ACRE", 2], ["TFAR", 52]]],
    ["RAVEN-1",         [["ACRE", 2], ["TFAR", 52]]],
    ["RAVEN-2",         [["ACRE", 2], ["TFAR", 52]]],
    ["RAVEN-3",         [["ACRE", 2], ["TFAR", 52]]],
    ["RAVEN-4",         [["ACRE", 2], ["TFAR", 52]]],

    ["SPARROW",         [["ACRE", 1], ["TFAR", 52]]],
    ["SPARROW-1",       [["ACRE", 1], ["TFAR", 52]]],
    ["SPARROW-1",       [["ACRE", 1], ["TFAR", 52]]],
    ["SPARROW-1",       [["ACRE", 1], ["TFAR", 52]]],
    ["SPARROW-1",       [["ACRE", 1], ["TFAR", 52]]],

    ["RAIDER",          [["ACRE", 2], ["TFAR", 52]]],
    ["RAIDER-1",        [["ACRE", 2], ["TFAR", 52]]],
    ["RAIDER-2",        [["ACRE", 2], ["TFAR", 52]]],

    ["EAGLE",           [["ACRE", 2], ["TFAR", 52]]],
    ["EAGLE-1",         [["ACRE", 2], ["TFAR", 52]]],
    ["EAGLE-2",         [["ACRE", 2], ["TFAR", 52]]],
    ["EAGLE-3",         [["ACRE", 2], ["TFAR", 52]]],

    ["LIGHTNING",       [["ACRE", 2], ["TFAR", 52]]],
    ["LIGHTNING-1",     [["ACRE", 2], ["TFAR", 52]]],
    ["LIGHTNING-2",     [["ACRE", 2], ["TFAR", 52]]],
    ["LIGHTNING-3",     [["ACRE", 2], ["TFAR", 52]]],

    ["RAPTOR",           [["ACRE", 2], ["TFAR", 52]]],
    ["RAPTOR-1",         [["ACRE", 2], ["TFAR", 52]]],
    ["RAPTOR-2",         [["ACRE", 2], ["TFAR", 52]]],
    ["RAPTOR-3",         [["ACRE", 2], ["TFAR", 52]]],

    ["TITAN",           [["ACRE", 2], ["TFAR", 52]]],
    ["TITAN-1",         [["ACRE", 2], ["TFAR", 52]]],
    ["TITAN-2",         [["ACRE", 2], ["TFAR", 52]]],
    ["TITAN-3",         [["ACRE", 2], ["TFAR", 52]]],
    ["TITAN-4",         [["ACRE", 2], ["TFAR", 52]]],

    ["HOG",             [["ACRE", 2], ["TFAR", 52]]],
    ["HOG-2",           [["ACRE", 2], ["TFAR", 52]]],
    ["HOG-3",           [["ACRE", 2], ["TFAR", 52]]],
    ["HOG-4",           [["ACRE", 2], ["TFAR", 52]]],


    // Ground
    ["SABER",           [["ACRE", 6], ["TFAR", 123]]],
    ["SABER-1",         [["ACRE", 6], ["TFAR", 123]]],
    ["SABER-2",         [["ACRE", 6], ["TFAR", 123]]],
    ["SABER-3",         [["ACRE", 6], ["TFAR", 123]]],
    ["SABER-4",         [["ACRE", 6], ["TFAR", 123]]],

    ["VIKING",          [["ACRE", 2], ["TFAR", 122]]],
    ["VIKING-1",        [["ACRE", 2], ["TFAR", 122]]],
    ["VIKING-2",        [["ACRE", 2], ["TFAR", 122]]],
    ["VIKING-3",        [["ACRE", 2], ["TFAR", 122]]],
    ["VIKING-4",        [["ACRE", 2], ["TFAR", 122]]],
    ["VIKING-5",        [["ACRE", 2], ["TFAR", 122]]],
    ["VIKING-6",        [["ACRE", 2], ["TFAR", 122]]],
    ["VIKING-7",        [["ACRE", 2], ["TFAR", 122]]],

    //["LANCER",          [["ACRE", 3], ["TFAR", 0]]],
    //["LANCER-1",        [["ACRE", 3], ["TFAR", 0]]],
    //["LANCER-2",        [["ACRE", 3], ["TFAR", 0]]],
    //["LANCER-3",        [["ACRE", 3], ["TFAR", 0]]],
    //["LANCER-4",        [["ACRE", 3], ["TFAR", 0]]],
    //["LANCER-5",        [["ACRE", 3], ["TFAR", 0]]],
    //["LANCER-6",        [["ACRE", 3], ["TFAR", 0]]],
    //["LANCER-7",        [["ACRE", 3], ["TFAR", 0]]],

    ["BANDIT",          [["ACRE", 7], ["TFAR", 131]]],
    ["BANDIT-1",        [["ACRE", 7], ["TFAR", 131]]],
    ["BANDIT-2",        [["ACRE", 7], ["TFAR", 131]]],
    ["BANDIT-3",        [["ACRE", 7], ["TFAR", 131]]],
    ["BANDIT-4",        [["ACRE", 7], ["TFAR", 131]]],
    ["BANDIT-5",        [["ACRE", 7], ["TFAR", 131]]],
    ["BANDIT-6",        [["ACRE", 7], ["TFAR", 131]]],
    ["BANDIT-7",        [["ACRE", 7], ["TFAR", 131]]],

    ["MISFIT",          [["ACRE", 8], ["TFAR", 132]]],
    ["MISFIT-1",        [["ACRE", 8], ["TFAR", 132]]],
    ["MISFIT-2",        [["ACRE", 8], ["TFAR", 132]]],
    ["MISFIT-3",        [["ACRE", 8], ["TFAR", 132]]],
    ["MISFIT-4",        [["ACRE", 8], ["TFAR", 132]]],
    ["MISFIT-5",        [["ACRE", 8], ["TFAR", 132]]],
    ["MISFIT-6",        [["ACRE", 8], ["TFAR", 132]]],
    ["MISFIT-7",        [["ACRE", 8], ["TFAR", 132]]],

    //["GUNSLINGER",      [["ACRE", 8], ["TFAR", 132]]],
    //["GUNSLINGER-1",    [["ACRE", 8], ["TFAR", 132]]],
    //["GUNSLINGER-2",    [["ACRE", 8], ["TFAR", 132]]],
    //["GUNSLINGER-3",    [["ACRE", 8], ["TFAR", 132]]],
    //["GUNSLINGER-4",    [["ACRE", 8], ["TFAR", 132]]],
    //["GUNSLINGER-5",    [["ACRE", 8], ["TFAR", 132]]],
    //["GUNSLINGER-6",    [["ACRE", 8], ["TFAR", 132]]],
    //["GUNSLINGER-7",    [["ACRE", 8], ["TFAR", 132]]],

    // Misc radio volume
    ["BRAVO HQ",        [["ACRE", 0], ["TFAR", 53]]],
    ["CHARLIE HQ",      [["ACRE", 0], ["TFAR", 54]]],
    ["ATLAS",           [["ACRE", 0], ["TFAR", 56]]],
    ["AVIATION",        [["ACRE", 0], ["TFAR", 52]]],

    ["ZEUS",            [["ACRE", 18], ["TFAR", 50]]]
];

private _radioHashMap = createHashMapFromArray [
    ["SR", createHashMapFromArray _srHashMap],
    ["LR", createHashMapFromArray _lrHashMap]
];
private _radioMap = _radioHashMap get _radioType;
private _groupNameChannel = _radioMap getOrDefault [_group, [["ACRE", 0], ["TFAR", 0]]];
private _modRadio = createHashMapFromArray _groupNameChannel;

_modRadio getOrDefault [_radioMod, 0];