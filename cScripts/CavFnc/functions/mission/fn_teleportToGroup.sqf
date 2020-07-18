#include "..\script_component.hpp";
/*
 * This teleports the player to his group leader.
 * If group leader is in a vehicle, player is teleported into the vehicle.
 * Can only be used once per session
 * Can only teleport to alive player
 * Can't teleport to yourself
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [this] call cScripts_fnc_teleportToGroup
 *
 * Public: Yes
 */

params [
    ["_object", objNull, [objNull]]
];

_object addAction [
    format["<t color='#C9FFC9'>%1</t>", "Teleport to Group"], {
        params ["","","","_dest"];
        private _height = [0,0,0];
        private _dest = leader (group (vehicle player)) ;
        private _usedTeleport = missionNamespace getVariable "usedTeleport";
        private _uid = getPlayerUID player;

        if (isNil "_usedTeleport") then
        {
            _usedTeleport = [];
            missionNamespace setVariable ["usedTeleport", _usedTeleport, true]; 
        };

        _height = getPosASL _dest;
        _height = _height select 2;

        if (alive _dest) then {

            if (player == _dest) then {
                hint "You are group leader, can't teleport to yourself";
            } else {

                if (_uid in _usedTeleport) then {

                    hint "Teleport has already been used";
         
                } else {
                    if (vehicle _dest != _dest) then 
                    {
                        player moveInCargo objectParent _dest;

                    } else {
                        [player, _dest] call CBA_fnc_setPos;
                        [player, _height] call CBA_fnc_setHeight;
                    };

                    _usedTeleport pushBack _uid;
                    missionNamespace setVariable ["usedTeleport", _usedTeleport, true];

                    titleText ["", "BLACK IN", 3];
                    #ifdef DEBUG_MODE
                        [format["%1 have been teleported to %2 at height %3.", name player, _dest, _height]] call FUNC(logInfo);
                    #endif

                };
            };

        } else {
            hint "Group leader is dead";
        };

    }, _dest, 1.5, true, true, "", "true", 10
];