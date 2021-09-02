#include "..\script_component.hpp";
/*
 * Author: Whitsel.M
 * This function add given supplies to a container.
 * If nothing in the array is defined the container will be empty.
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

if (!isServer) exitwith {}; 

clearWeaponCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearItemCargoGlobal _vehicle;
clearBackpackCargoGlobal _vehicle;

if ( count _inventory < 1 ) exitWith {};

{
    _x params [["_item", "", [""]], ["_amount", 0, [0]]];
    if (_item call FUNC(checkItemValidity)) then {
        _vehicle addItemCargoGlobal [_item, _amount];
    };
} forEach _inventory;