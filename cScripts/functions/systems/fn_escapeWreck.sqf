#include "..\script_component.hpp";
/*
 * Author: CPL.Turn.J (With heavy influence from CPL.Brostrum.A)
 * This throws moves a player out of a crashed vehicle. Use in case eject does not work.
 *
 * Arguments:
 * 0: Player <PLAYER>
 * 1: Vehicle <OBJECT>
 *
 * Example:
 * 
 * 
 *
 */

params [
	["_player", objNull, [objNull]],
	["_vehicle", objNull, [objNull]]
];

_player allowDamage false;

private _dir = getDir _vehicle + 50;

private _posASL = (getPosASL _vehicle) vectorAdd [sin _dir * 2.5, cos _dir * 2.5, ((getPosATL _vehicle) select 2) * -1];
moveOut _player;
_player setPosASL _posASL;

sleep 0.5;
_player allowDamage true;