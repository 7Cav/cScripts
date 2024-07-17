#define DEBUG_MODE
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
 * List of Items <ARRAY>
 *
 * Example:
 * ["ACE_EarPlugs"] call cScripts_fnc_getFilteredItem;
 *
 * Public: No
 */

params[["_item", "", [""]]];

if (_item isEqualTo "") exitWith {
    SHOW_WARNING("getFilteredItem","No item provided");
    "";
};

private _return = ace_common_itemReplacements getVariable [_item, [_item]];

_return 