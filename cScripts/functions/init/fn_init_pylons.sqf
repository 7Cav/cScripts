#include "..\script_component.hpp";
/*
 * Author: commy2
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

INFO("VehiclePylon", "Creating pylons database");
private _raw = call compileFinal preprocessfilelinenumbers 'cScripts\cScripts_pylons.sqf';
private _processed = createHashMap;

{
    _x params ["_classname", "_loadouts", "_icon"];
    private _map = createHashMap;
    _processed set [_classname, _map];

    {
        _x params ["_loadoutName", "_loadoutInfo"];
        private _loadoutMap = createHashMapFromArray _loadoutInfo;
        if !("displayName" in _loadoutMap) then {
            SHOW_WARNING_1('VehiclePylon',"%1 has no defined displayName.",_classname);
        };
        if !("loadout" in _loadoutMap) then {
            SHOW_WARNING_1('VehiclePylon',"%1 has no defined loadout.",_classname);
        };
        if !("icon" in _loadoutMap) then {
            SHOW_WARNING_1('VehiclePylon',"%1 has no defined icon.",_classname);
        };
        _map set [_loadoutName, _loadoutMap];
    } forEach _loadouts;
} forEach _raw;


if (!(_processed isEqualType createHashMap)) exitWith {
    SHOW_CHAT_ERROR_1("VehiclePylon", "Fatal error creating database (database base type faulty %1)...", typeName _vehicleMap);
    createHashMapFromArray [["", []]];
};

_processed;
