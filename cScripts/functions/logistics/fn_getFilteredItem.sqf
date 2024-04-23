#include "..\script_component.hpp";
/*
 * Author: Whitsel.M
 * This function checks if the item is in the item ace replace array and
 * return the ace filterd item. Based on the inputed item. if item is array it return input item.
 * 
 *
 * Arguments:
 * 0: Item <OBJECT>
 *
 * Return Value:
 * item <STRING>
 *
 * Example:
 * ["ACE_EarPlugs"] call cScripts_fnc_getFilteredItem;
 *
 * Public: No
 */
params[["_item", "", [""]]];

if (_item isEqualTo "") exitWith {
    SHOW_WARN("getFilteredItem","No item provided");
    "";
};

private _fn_testItem = {
    params["_item","_array"];
    _array params ["_oldItem", "_newItem"];
    if (_item isEqualTo _oldItem) then {
        if (_newItem isEqualType []) exitWith {_oldItem};
        _newItem;
    };
    _item;
};

// FIXME: CHECK ace_common_itemReplacements i hope the format is this: [[oldItem,ReplaceItem]]
{
    _x parmas ["_item", "_array"];
    [_item, _array] call _fn_testItem;
    if (_item isNotEqualTo _array#0) exitWith { _array#1 };
} forEach ace_common_itemReplacements;

_item;