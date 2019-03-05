#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function fetch a squad name of a unit variable squad name
 *
 * Arguments:
 *
 * Return Value:
 * Squad Name <STRING>
 *
 * Example:
 * [] call cScripts_fnc_getCavSquadName
 *
 * Public: No
 */

private _return = '';

private _cavGroup = [
    "GODFATHER-5",
    "GODFATHER-6",
    "GODFATHER-7",
    "MUSTANG-1",
    "MUSTANG-2",
    "APOLLO-1",
    "APOLLO-5",
    "APOLLO-6",
    "PEGASUS-2",
    "BUFFALO-1",
    "BUFFALO-2",
    "BUFFALO-3",
    "BUFFALO-4",
    "GRIZZLY-1",
    "GRIZZLY-2",
    "GRIZZLY-3",
    "RAVEN-1",
    "RAVEN-2",
    "RAVEN-3",
    "RAVEN-4",
    "EAGLE-1",
    "EAGLE-2",
    "EAGLE-3",
    "HOG-1",
    "HOG-2",
    "HOG-3",
    "HOG-4",
    "RAIDER-1",
    "RAIDER-2",
    "TITAN-1",
    "TITAN-2",
    "TITAN-3",
    "TITAN-4",
    "SABER-1",
    "SABER-2",
    "SABER-3",
    "SABER-4",
    "SABER-7",
    "VIKING-1",
    "VIKING-2",
    "VIKING-3",
    "VIKING-4",
    "VIKING-5",
    "VIKING-6",
    "VIKING-7",
    "PUNISHER-1",
    "PUNISHER-2",
    "PUNISHER-3",
    "PUNISHER-4",
    "PUNISHER-5",
    "PUNISHER-6",
    "PUNISHER-7",
    "BANDIT-1",
    "BANDIT-2",
    "BANDIT-3",
    "BANDIT-4",
    "BANDIT-5",
    "BANDIT-6",
    "BANDIT-7",
    "MISFIT-1",
    "MISFIT-2",
    "MISFIT-3",
    "MISFIT-4",
    "MISFIT-5",
    "MISFIT-6",
    "MISFIT-7",
    "ROUGHNECK-1",
    "ROUGHNECK-2",
    "ROUGHNECK-3",
    "ROUGHNECK-4",
    "ROUGHNECK-6",
    "PHANTOM-1",
    "PHANTOM-2",
    "GODFATHER FIVE",
    "GODFATHER SIX",
    "GODFATHER SEVEN",
    "MUSTANG ONE",
    "MUSTANG TWO",
    "APOLLO ONE",
    "APOLLO FIVE",
    "APOLLO SIX",
    "PEGASUS TWO",
    "BUFFALO ONE",
    "BUFFALO TWO",
    "BUFFALO THREE",
    "BUFFALO FOUR",
    "GRIZZLY ONE",
    "GRIZZLY TWO",
    "GRIZZLY THREE",
    "RAVEN ONE",
    "RAVEN TWO",
    "RAVEN THREE",
    "RAVEN FOUR",
    "EAGLE ONE",
    "EAGLE TWO",
    "EAGLE THREE",
    "HOG ONE",
    "HOG TWO",
    "HOG THREE",
    "HOG FOUR",
    "RAIDER ONE",
    "RAIDER TWO",
    "TITAN ONE",
    "TITAN TWO",
    "TITAN THREE",
    "TITAN FOUR",
    "SABER ONE",
    "SABER TWO",
    "SABER THREE",
    "SABER FOUR",
    "SABER SEVEN",
    "VIKING ONE",
    "VIKING TWO",
    "VIKING THREE",
    "VIKING FOUR",
    "VIKING FIVE",
    "VIKING SIX",
    "VIKING SEVEN",
    "PUNISHER ONE",
    "PUNISHER TWO",
    "PUNISHER THREE",
    "PUNISHER FOUR",
    "PUNISHER FIVE",
    "PUNISHER SIX",
    "PUNISHER SEVEN",
    "BANDIT ONE",
    "BANDIT TWO",
    "BANDIT THREE",
    "BANDIT FOUR",
    "BANDIT FIVE",
    "BANDIT SIX",
    "BANDIT SEVEN",
    "MISFIT ONE",
    "MISFIT TWO",
    "MISFIT THREE",
    "MISFIT FOUR",
    "MISFIT FIVE",
    "MISFIT SIX",
    "MISFIT SEVEN",
    "ROUGHNECK ONE",
    "ROUGHNECK TWO",
    "ROUGHNECK THREE",
    "ROUGHNECK FOUR",
    "ROUGHNECK SIX",
    "PHANTOM ONE",
    "PHANTOM TWO",
    "ZEUS"
];

_group = groupId (group player);
_group = toUpper(_group);

private _groupVar = '';
if !(isNil {player getVariable QEGVAR(Player,Unit)}) then {
    _groupVar = player getVariable QEGVAR(Player,Unit);
    _groupVar = toUpper(_groupVar);
};

if (_groupVar in _cavGroup) exitWith {
    _groupVar;
};

if (_group in _cavGroup) exitWith {
    _group;
};

_return