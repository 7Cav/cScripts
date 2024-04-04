#include "..\script_component.hpp";
/*
 * Author: Whitsel.M
 * This function add given supplies to a container.
 * If nothing in the array is defined the container will not add anything.
 *
 * Arguments:
 * 0: Vehicle or Crate  <OBJECT>
 * 1: Inventory         <ARRAY>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [MyCrate, [["ACE_EarPlugs", 60]]] call cScripts_fnc_addCargo;
 * [MyTruck, [["ACE_personalAidKit", 8], ["ACE_tourniquet", 10]]] call cScripts_fnc_addCargo;
 *
 * Public: Yes
 */

params [
    ["_vehicle", objNull, [objNull]],
    ["_inventory", [], [[]]]
];

if ( count _inventory < 1 ) exitWith {};

{
    if !(_x isEqualTypeArray ["",0]) then {
        SHOW_WARNING_1("addCargo","Item not added because %1 does not contain the proper format. Must be [STRING, SCALAR].", _x);
        continue;
    };

    _x params [["_item", "", [""]], ["_amount", 0, [0]]];
    if (_item call FUNC(checkItemValidity)) then {
        _vehicle addItemCargoGlobal [_item, _amount];
    };
} forEach _inventory;