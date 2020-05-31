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

// Player is Passanger
if ( (vehicle player getCargoIndex player) != -1 ) exitWith {
    #ifdef DEBUG_MODE
        [format["%1 allowed to be cargo in %2", player, typeOf vehicle player], "CheckPermissions"] call FUNC(logInfo);
    #endif
    true
};

// Player is Zeus
if ( !isNull (getAssignedCuratorLogic player) ) exitWith {
    #ifdef DEBUG_MODE
        [format["%1 is Zeus and allowed to operate %2", player, typeOf vehicle player], "CheckPermissions"] call FUNC(logInfo);
    #endif
    true
};

// Vehicle Classname is in player permission list
private _vehicleTraining = player getVariable QEGVAR(player,AllowedVehicle);
if (typeOf vehicle player in _vehicleTraining) exitWith {
    #ifdef DEBUG_MODE
        [format["%1 is trained to use %2", player, typeOf vehicle player], "CheckPermissions"] call FUNC(logInfo);
    #endif
    true
};

// Vehicle Type Group
if ( "AllVehicles" in _vehicleTraining && (typeOf vehicle player) isKindOf "AllVehicles" ) exitWith {
    #ifdef DEBUG_MODE
        [format["%1 is trained to use AllVehicles (%2)", player, typeOf vehicle player], "CheckPermissions"] call FUNC(logInfo);
    #endif
    true
};

if ( "Air" in _vehicleTraining && (typeOf vehicle player) isKindOf "Air" ) exitWith {
    #ifdef DEBUG_MODE
        [format["%1 is trained to use all Air (%2)", player, typeOf vehicle player], "CheckPermissions"] call FUNC(logInfo);
    #endif
    true
};
if ( "Helicopter" in _vehicleTraining && (typeOf vehicle player) isKindOf "Helicopter" ) exitWith {
    #ifdef DEBUG_MODE
        [format["%1 is trained to use all Helicopter (%2)", player, typeOf vehicle player], "CheckPermissions"] call FUNC(logInfo);
    #endif
    true
};
if ( "Plane" in _vehicleTraining && (typeOf vehicle player) isKindOf "Plane" ) exitWith {
    #ifdef DEBUG_MODE
        [format["%1 is trained to use all Plane (%2)", player, typeOf vehicle player], "CheckPermissions"] call FUNC(logInfo);
    #endif
    true
};

if ( "Land" in _vehicleTraining && (typeOf vehicle player) isKindOf "Land" ) exitWith {
    #ifdef DEBUG_MODE
        [format["%1 is trained to use all Land (%2)", player, typeOf vehicle player], "CheckPermissions"] call FUNC(logInfo);
    #endif
    true
};
if ( "LandVehicle" in _vehicleTraining && (typeOf vehicle player) isKindOf "LandVehicle" ) exitWith {
    #ifdef DEBUG_MODE
        [format["%1 is trained to use all LandVehicle (%2)", player, typeOf vehicle player], "CheckPermissions"] call FUNC(logInfo);
    #endif
    true
};

if ( "Car" in _vehicleTraining && (typeOf vehicle player) isKindOf "Car" ) exitWith {
    #ifdef DEBUG_MODE
        [format["%1 is trained to use all Car (%2)", player, typeOf vehicle player], "CheckPermissions"] call FUNC(logInfo);
    #endif
    true
};
if ( "Tank" in _vehicleTraining && (typeOf vehicle player) isKindOf "Tank" ) exitWith {
    #ifdef DEBUG_MODE
        [format["%1 is trained to use all Tank (%2)", player, typeOf vehicle player], "CheckPermissions"] call FUNC(logInfo);
    #endif
    true
};

#ifdef DEBUG_MODE
    [format["%1 have no training to operate %2", player, typeOf vehicle player], "CheckPermissions"] call FUNC(logInfo);
#endif
false