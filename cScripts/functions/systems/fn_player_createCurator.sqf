#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function creates a zeus and attaches it for the for a defined player
 *
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Example:
 * cScripts_fnc_player_createCurator
 *
 * Public: No
 */

params [
    ["_player", player, [objNull]]
];

if (!isServer) exitWith {};
if (!isNull (getAssignedCuratorLogic _player)) exitWith { WARNING("Zeus", "Player already assigned as curator"); };


private _curator = "curator" createVehicle [0,0,0];
_curator addCuratorAddons activatedAddons;
_player assignCurator _curator;

SHOW_INFO_CHAT_2("Zeus", "Curator created for %1 [%2]", player, typeOf _player);

_curator addCuratorEditableObjects [[allPlayers], true];