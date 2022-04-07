#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function throw a player out from a airplane and replaces their current backpack with a parachute.
 *
 * Arguments:
 * 0: Player <player>
 * 1: Vehicle <OBJECT>
 * 2: Chute Vehicle <OBJECT> (Optional) [Default; "NonSteerable_Parachute_F"]
 *
 * Example:
 * ["bob","my_C130"] call cScripts_fnc_para_haloJump
 * ["bob","my_C130", "NonSteerable_Parachute_F"] call cScripts_fnc_para_haloJump
 *
 */

params [
    ["_player", objNull, [objNull]],
    ["_vehicle", objNull, [objNull]],
    ["_chuteBackpackClass", "B_Parachute"]
];

_player allowDamage false;

private _dir = getDir _vehicle - 50;
moveOut _player;
private _pos = ([_vehicle, 14, ((getDir _vehicle) + 180 + 8)] call BIS_fnc_relPos);
_pos = [_pos select 0, _pos select 1, ((getPosATL _vehicle) select 2)];
_player setPosATL _pos;
_player setDir _dir - 140;

sleep 1.5;

[_player, true] call EFUNC(para,equipment);

sleep 0.5;

[_player] call EFUNC(para,backpack);

sleep 0.5;

_player allowDamage true;
