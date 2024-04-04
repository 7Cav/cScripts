#include "..\script_component.hpp";
/*
 * Author: Whitsel.M
 * This function sets given supplies to a container.
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
 * [MyCrate, [["ACE_EarPlugs", 60]]] call cScripts_fnc_setCargo;
 * [MyTruck, [["ACE_personalAidKit", 8], ["ACE_tourniquet", 10]]] call cScripts_fnc_setCargo;
 *
 * Public: Yes
 */

params [
    ["_vehicle", objNull, [objNull]],
    ["_inventory", [], [[]]]
];

clearWeaponCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearItemCargoGlobal _vehicle;
clearBackpackCargoGlobal _vehicle;

[_vehicle, _inventory] call FUNC(addCargo);