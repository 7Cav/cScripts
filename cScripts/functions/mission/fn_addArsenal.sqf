#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function creates a "CavArsenal".
 * This arsenal is created and destroyed on usage to maek sure the items inside are populated with correct items.
 * (This is a wrapper function)
 *
 * Arguments:
 * 0: aceCategory <ARRAY> (Default: ["ACE_MainActions"])
 *
 * Example:
 * call cScripts_fnc_addArsenal
 * ["ACE_MainActions"] call cScripts_fnc_addArsenal
 */

params [
    ["_category", ["ACE_MainActions"], [["ACE_MainActions"]]]
];

[_category] call EFUNC(arsenal,createAction);