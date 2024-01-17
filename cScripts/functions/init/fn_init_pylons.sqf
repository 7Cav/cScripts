#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function initzializes the pylons database
 *
 * Return Value:
 * HashMap
 *
 * Example:
 * call cScripts_fnc_init_pylons
 *
 * Public: No
 */

INFO("Logistics", "Creating pylons database");
private _dataArray = call compileFinal preprocessfilelinenumbers 'cScripts\cScripts_pylons.sqf';

private _return = createHashMapFromArray _dataArray;

{
    _x params ["_vehicleKind"];
    private _vehiclePylons = _return getOrDefault [_vehicleKind, []];
    private _vehiclePylonsMap = createHashMapFromArray _vehiclePylons;
    _return set [_vehicleKind, _vehiclePylonsMap];
} forEach keys _return;

if (!(_return isEqualType createHashMap)) exitWith {
    SHOW_CHAT_ERROR_1("LogisticsDatabase", "Fatal error creating database (database base type faulty %1)...", typeName _return);
    createHashMapFromArray [["", []]];
};

_return;
