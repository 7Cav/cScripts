#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * Turn off engine and forces the player out of a given vehicle when not permitted usage
 *
 * Arguments:
 * None
 *
 * Return:
 * Allowed to use vehicle <Bool>
 *
 * Example:
 * call cScripts_fnc_requirePermissions
 *
 * Public: No
 */

params [
    ["_unit", objNull, [objNull]]
];

// Don't check AI or remote controlled units
if (!isplayer _unit) exitWith {};

#ifdef DEBUG_MODE
    [format["Checking %1 vehicle permission on %2", player, typeOf vehicle player], "RequirePermissions"] call FUNC(logInfo);
#endif

if ( call FUNC(checkPermissions) ) exitWith {
    #ifdef DEBUG_MODE
        [format["%1 is permitted to operate %2", player, typeOf vehicle player], "RequirePermissions"] call FUNC(logInfo);
    #endif
    false
};

["You dont have propper training to operate this vehicle.", "", nil, player, 2] call ace_common_fnc_displayTextPicture;

#ifdef DEBUG_MODE
    [format["%1 is not permitted to operate %2", player, typeOf vehicle player], "RequirePermissions"] call FUNC(logInfo);
#endif

player action ["engineOff", vehicle player];
player action ["getOut", vehicle player];

true