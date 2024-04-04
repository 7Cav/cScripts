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
 * 4: Rename                <STRING> (Optional)
 *
 * Return Value:
 * Crate   <OBJECT>
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
    ["_resize", nil, [2, nil]],
    ["_name", "", [""]]
];

private _hasCargo = _inventory isEqualType [];
private _isInCargo  = _destination isEqualType objNull;

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

if (_hasCargo) then {
    if (_inventory isEqualTo true) then { _inventory = [] };
    [_crate, _inventory] call FUNC(setCargo);
};

if (_isInCargo) then {
    private _success = [_crate, _destination, true] call ace_cargo_fnc_loadItem;
    if !(_success) then {
        SHOW_WARNING_5("CreateCargoCrate",
            "Failed to load %1 (%2) in to %3 it is to big (Size of crate is %4 and there is only %5 space left.).",
            _crate,
            _classname,
            _destination,
            [_crate] call ace_cargo_fnc_getSizeItem,
            [_destination] call ace_cargo_fnc_getCargoSpaceLeft
        );
    };
};

if (_name isNotEqualTo "") then {
    [_crate, _name] call FUNC(renameObject);
};

_crate;
