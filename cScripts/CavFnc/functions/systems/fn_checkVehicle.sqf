#include "..\script_component.hpp";
/*
 * This function checks if hte vehicle have a given setting set to it.
 * If it does it return a local messages for the user telling you about them.
 *
 * Arguments:
 * 0: Object
 *
 * Example:
 * [BotyMcBotface] call cScripts_fnc_checkVehicle
 *
 */

params ["_vehicle"];

private _hasJump    = _vehicle getVariable [QEGVAR(Vehicle,Jump),[]];
private _hasHalo    = _vehicle getVariable [QEGVAR(Vehicle,Halo),[]];

private _statement = {
    params ["_target", "_player", "_args"];
    _args params ["_hasJump", "_hasHalo"];

    if !(count _hasJump == 0) then {
        [
            [],
            ["Static Line Jump", 1.2, [0, 1, 0, 1]],
            ["This aircraft is equipped with static"],
            ["line jump equipment!"],
            [""],
            [format ["Max Safe speed: <t color='#ffc61a'>%1 KPH</t>", ((_hasJump select 3) - 10)]],
            [format ["Altetude: <t color='#ffc61a'>%1 to %2 METERS AGL</t>", _hasJump select 1, _hasJump select 2]],
            ["Door or ramp need to be open."],
            [""],
            [""]
        ] call CBA_fnc_notify;
    };
    if !(count _hasHalo == 0) then {
        [
            [],
            ["HALO jump", 1.2, [0, 1, 0, 1]],
            ["This aircraft is equipped for high"],
            ["altitude low opening (HALO) jumping."],
            [""],
            [format ["Minimum altetude: <t color='#ffc61a'>%1 METERS AGL</t>", _hasHalo select 1]],
            ["Door or ramp need to be open."],
            [""],
            [""]
        ] call CBA_fnc_notify;
    };
};

private _checkLabel = if (_vehicle isKindOf "Air") then {"Check Aircraft"} else {"Check Vehicle"};

_action = [QEGVAR(Action,Check), _checkLabel, "", _statement, {true}, {}, [_hasJump, _hasHalo]] call ace_interact_menu_fnc_createAction;
[_vehicle, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;