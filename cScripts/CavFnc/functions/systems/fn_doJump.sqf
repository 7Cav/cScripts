#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This jump throw a player out of a aircraft and ataches a parashoot.
 *
 * Arguments:
 * 0: Player <PLAYER>
 * 1: Vehicle <OBJECT>
 *
 * Example:
 * ["this","my_C130"] call cScripts_fnc_doJump
 *
 */

params [
    ["_player", objNull, [objNull]],
    ["_vehicle", objNull, [objNull]]
];

_player allowDamage false;

private _dir = getDir _vehicle - 50;
moveOut _player;
private _pos = ([_vehicle, 14, ((getDir _vehicle) + 180 + 8)] call BIS_fnc_relPos);
private _pos = [_pos select 0, _pos select 1, ((getPosATL _vehicle) select 2)];
_player setPosATL _pos;
_player setDir _dir - 140;


sleep 1.5;
private _velocity = velocity _player;
private _chute = createVehicle ["NonSteerable_Parachute_F", (position _player), [], 0, "CAN_COLLIDE"];
_chute AttachTo [_player, [0,0,0]];
detach _chute;
_player moveInDriver _chute;
_chute setVelocity _velocity;

sleep 0.5;
_player allowDamage true;
