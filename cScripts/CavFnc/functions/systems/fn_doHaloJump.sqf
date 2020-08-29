#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This jump throw a player out of a aircraft and ataches a parashoot.
 *
 * Arguments:
 * 0: Player <PLAYER>
 * 1: Vehicle <OBJECT>
 * 1: Chute Vehicle <OBJECT> (Optional) [Default; "NonSteerable_Parachute_F"]
 *
 * Example:
 * ["bob","my_C130"] call cScripts_fnc_doHaloJump
 * ["bob","my_C130", "NonSteerable_Parachute_F"] call cScripts_fnc_doHaloJump
 *
 */

params [
    ["_player", objNull, [objNull]],
    ["_vehicle", objNull, [objNull]],
    ["_chuteVehicleClass", "B_Parachute"]
];

_player allowDamage false;

private _dir = getDir _vehicle - 50;
moveOut _player;
private _pos = ([_vehicle, 14, ((getDir _vehicle) + 180 + 8)] call BIS_fnc_relPos);
_pos = [_pos select 0, _pos select 1, ((getPosATL _vehicle) select 2)];
_player setPosATL _pos;
_player setDir _dir - 140;

sleep 0.5;

[_player] call FUNC(handleJump);

sleep 0.5;

[_player] call zade_boc_fnc_actionOnChest;

sleep 0.5;

_player addBackpackGlobal _chuteVehicleClass;

sleep 0.5;

_player allowDamage true;
