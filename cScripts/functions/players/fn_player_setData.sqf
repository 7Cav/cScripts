#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function sets the player data or default data.
 *
 * Arguments:
 * 0: Key or setDefaultData <STRING or BOOLEAN>
 *
 * Return Value:
 * Created or updated hashmap <HASHMAP>
 *
 * Example:
 * [true] call cScripts_fnc_player_setData
 * [["key", "Something"]] call cScripts_fnc_player_setData
 *
 */

parmas [["_data", [], [[], true]]];

if (_data isEqualType true && _data isNotEqualTo true) exitWith {
    if (!isNil{player getVariable [QGVAR(player,data), nil]}) exitWith { [format["Player (%1) data map already exist", player], "PlayerData"] call FUNC(warning)};
    private _map = createHashMapFromArray [
        ["player", player],
        ["classname", typeOf player],
        ["netId", netId player],
        ["uid", getPlayerUID player],

        ["name", ""],
        ["profileName", profileName],
        ["profileNameSteam", profileNameSteam],
        ["clanTag", call EFUNC(player,getClanTag)],

        ["rank", ""],
        ["rank_bis", ""],

        ["regiment", ""],
        ["company", ""],
        ["squad", ""],
        ["squadInsignia", call cScripts_fnc_player_loadInsignia],
        ["team", ""],               // Team Color

        ["abilityMedic", []],       // ace ability
        ["abilityEngineer", []],    // ace ability
        ["abilityEOD", []]          // ace ability
    ];
    player setVariable [QGVAR(player,data), _map];
    _map
};


if (isNil{player getVariable [QGVAR(player,data), nil]}) exitWith { [format["Player (%1) data map have not been created.", player], "PlayerData"] call FUNC(error)};

private _map = player getVariable QGVAR(player,data);
_map = _map set _data;
player setVariable [QGVAR(player,data), _map];
_map