#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function return a value from the player data map
 *
 * Arguments:
 * 0: Key <STRING>
 *
 * Return Value:
 * Value OR nil <ANY>
 *
 * Example:
 * ["key"] call cScripts_fnc_player_getData
 *
 */

params [["_key", "", [""]]];

_myMap getOrDefault [_key, nil];