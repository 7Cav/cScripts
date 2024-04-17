#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function print messages on player connect.
 *
 * Example:
 * call cScripts_fnc_init_message
 *
 * Public: No
 */

waitUntil {!isNull player && player == player};
if (!isMultiplayer || {is3DENMultiplayer}) exitWith {};
if (!isNil{player getVariable QEGVAR(player,message)}) exitWith {};

if (difficulty <= 1) then {
    SHOW_CHAT_WARNING("Difficulty","Mission difficulty is not set to Veteran or Custom.");
};

if (getPlayerUID player == "76561198102939824") then {
    if (random 10 > 5) then {
        systemChat format["[BattleEye]: Suspicious user %1 [%2] (UID: %3), monitoring user.",name player, typeOf player, getPlayerUID player];
    };
};

player setVariable [QEGVAR(player,message), true];
