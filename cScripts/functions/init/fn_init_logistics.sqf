#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function initzializes the logistical database
 *
 * Return Value:
 * HashMap
 *
 * Example:
 * call cScripts_fnc_init_logistics
 *
 * Public: No
 */

#ifdef DEBUG_MODE
    ["Creating logistical database", "Logistics"] call FUNC(info);
#endif

private _containers = [
    // list my containers
];

// build Database
private _dataArray = [];
{ _dataArray append [_x _y] } forEach _containers;

private _return = createHashMapFromArray _dataArray;

_return;
