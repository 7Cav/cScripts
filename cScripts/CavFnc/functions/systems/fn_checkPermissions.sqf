#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * Return true if a player are allowed to use the vehicle
 *
 * Arguments:
 * None
 *
 * Return:
 * Allowed to use vehicle <Bool>
 *
 * Example:
 * call cScripts_fnc_checkPermissions
 *
 * Public: No
 */

// Is passanger will allway be allowed
if ( (vehicle player getCargoIndex player) != -1 ) exitWith {true};

// Vehicle is in player allowed category variable or classname
if (vehicle player in (player getVariable QEGVAR(player,AllowedVehicle))) exitWith {true};
if (typeOf vehicle player in (player getVariable QEGVAR(player,AllowedVehicle))) exitWith {true};

// check if vehicle class allow player class
// WIP if (typeOf player in ((vehicle player getVariable QEGVAR(player,AllowedVehicle)) exitWith {true};

false