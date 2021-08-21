#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function creates a cargo crate with defined loadout and load or places it in a location
 *
 * Arguments:
 * 0: Classname             <STRING>
 * 1: Inventory             <ARRAY/BOOL>
 * 2: Vehicle or Position   <OBJECT, ARRAY>
 * 3: Crate Size            <NUMBER> (Optional)
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * ["B_supplyCrate_F"] call cScripts_fnc_createCargoCrate;
 * ["B_supplyCrate_F", false] call cScripts_fnc_createCargoCrate;
 * ["B_supplyCrate_F", false, MyTruck] call cScripts_fnc_createCargoCrate;
 * ["B_supplyCrate_F", false, [255,300,2]] call cScripts_fnc_createCargoCrate;
 * ["B_supplyCrate_F", [["ACE_personalAidKit", 8], ["ACE_tourniquet", 10]]] call cScripts_fnc_createCargoCrate;
 * ["B_supplyCrate_F", [["ACE_personalAidKit", 8], ["ACE_tourniquet", 10]], MyTruck] call cScripts_fnc_createCargoCrate;
 * ["B_supplyCrate_F", [["ACE_personalAidKit", 8], ["ACE_tourniquet", 10]], [255,300,2]] call cScripts_fnc_createCargoCrate;
 *
 * Public: Yes
 */

params [
    ["_classname", "B_supplyCrate_F", [""]],
    ["_inventory", false, [[], false]],
    ["_destination", objNull, [objNull, []]], 
    ["_resize", nil, [2, nil]]
];

if (!isServer) exitwith {};
private _cargoCheck = if (_inventory isEqualType []) then {true} else {_inventory};
private _destCheck  = if (_destination isEqualType []) then {false} else {true};

private _position = [0,0,0];
private _random = 25;
if (_destination isEqualType []) then {
    _position = _destination;
    _random = 0;
};

private _crate = createVehicle [_classname, _position, [], _random, "NONE"];

if (!isNil{_resize}) then {
    [_crate, -1, _resize] call cScripts_fnc_setCargoAttributes;
};

if (_cargoCheck) then {
    [_crate, _inventory] call FUNC(addCargo);
};

if (_destCheck) then {
    private _success = [_crate, _destination, true] call ace_cargo_fnc_loadItem;
    if !(_success) then {
        [
            format[
                "Failed to load %1 (%2) in to %3 to big (Size of crate i %4)?...",
                _crate, 
                _classname,
                _destination,
                [_crate] call ace_cargo_fnc_getSizeItem
            ],
            "Vehicle Cargo", false
        ] call FUNC(error);
    };
};