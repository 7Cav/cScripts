#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * Throw out and shut the vehicle off if a player is not allowed to use the vehicle
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

if ( call FUNC(checkPermissions) ) exitWith {false};

["You dont have propper training to operate this vehicle.", "", nil, player, 2] call ace_common_fnc_displayTextPicture;

player action ["engineOff", vehicle player];
player action ["getOut", vehicle player];

true