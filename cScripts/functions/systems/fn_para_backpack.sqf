#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This save your current objects inside of your backpack as a variable
 * And simulate a packpack on your chest. Action is added to allow you to swap back.
 *
 * Arguments:
 * 0: Player             <PLAYER>
 * 1: ChuteBackpackClass <OBJECT> (Optional) (Default; "B_Parachute")
 *
 * Example:
 * ["bob"] call cScripts_fnc_para_backpack
 * ["bob", "B_Parachute"] call cScripts_fnc_para_backpack
 *
 */

params [
    ["_player", objNull, [objNull]],
    ["_chuteBackpackClass", "B_Parachute", ["B_Parachute"]]
];

private _backpack = backpack _player call BIS_fnc_basicBackpack;

private _cargo = backpackItems _player;

private _backpackAndContent = [_backpack, _cargo];

_player setVariable [QEGVAR(player,backpack), _backpackAndContent];

removeBackpack _player;
_player addBackpack _chuteBackpackClass;

_player forceWalk true;

[
    _player,
    "Put on backpack",
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_unloadDevice_ca.paa",
    "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_unloadDevice_ca.paa",
    format["((count (_this getVariable ['%1', []])) > 1) && ((getPosATL _this)#2 < 2)", QEGVAR(player,backpack)],
    format["((count (_caller getVariable ['%1', []])) > 1) && ((getPosATL _caller)#2 < 5)", QEGVAR(player,backpack)],
    {},
    {},
    {
        params ["_target", "_caller", "_actionId", "_arguments"];
        private _backpackAndContent = _caller getVariable [QEGVAR(player,backpack), []];
        _backpackAndContent params [
            ["_backpack", ""],
            ["_cargo", []]
        ];

        removeBackpack _caller;
        _caller addBackpack _backpack;

        {
            _caller addItemToBackpack _x;
        } forEach _cargo;

        _caller setVariable [QEGVAR(player,backpack), nil];

        _caller forceWalk false;
    },
    {},
    [],
    5,
    0,
    false,
    false
] call BIS_fnc_holdActionAdd;