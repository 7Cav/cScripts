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

private _pylonDataMap = createHashMapFromArray _dataArray;

{
    _x params ["_vehicleKind"];
    private _vehiclePylons = _pylonDataMap getOrDefault [_vehicleKind, []];
    private _vehiclePylonsMap = createHashMapFromArray _vehiclePylons;
    _pylonDataMap set [_vehicleKind, _vehiclePylonsMap];
    {
        _x params ["_pylonType"];
        _pylonItem = _vehiclePylonsMap getOrDefault [_pylonType, []];
        _pylonItemMap = createHashMapFromArray _pylonItem;
        _vehiclePylonsMap set [_pylonType, _pylonItemMap];
    } forEach keys _vehiclePylonsMap;
    _pylonDataMap set [_vehicleKind, _vehiclePylonsMap];
} forEach keys _pylonDataMap;

if (!(_pylonDataMap isEqualType createHashMap)) exitWith {
    SHOW_CHAT_ERROR_1("LogisticsDatabase", "Fatal error creating database (database base type faulty %1)...", typeName _return);
    createHashMapFromArray [["", []]];
};

_pylonDataMap;
