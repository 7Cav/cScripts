#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function sets the player information.
 *
 * Arguments:
 * 0: player <STRING>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [player] call cScripts_fnc_setPlayerDataInit
 *
 */

private _map = createHashMapFromArray [
    ["player", player],
    ["classname", typeOf player],
    ["netId", netId player],
    ["uid", getPlayerUID player],

    ["clanTag", [player] call FUNC(getClanTag)],

    ["usa_rank", [player,'USA'] call FUNC(getPlayerRank)],
    ["bis_rank", [player,'BIS'] call FUNC(getPlayerRank)],

    ["regiment", ""],
    ["company", ""],
    ["squad", ""],
];

_map;