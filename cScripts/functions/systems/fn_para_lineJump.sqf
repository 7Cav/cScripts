#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This jump throw a player out of a aircraft and attaches a parashoot.
 *
 * Arguments:
 * 0: Player <PLAYER>
 * 1: Vehicle <OBJECT>
 * 2: Chute Vehicle <OBJECT> (Optional) [Default; "NonSteerable_Parachute_F"]
 * 3: Staggared Jump <BOOL> (Optional) [Default; false]
 *
 * Example:
 * ["bob","my_C130"] call cScripts_fnc_para_lineJump
 * ["bob","my_C130", "NonSteerable_Parachute_F", false] call cScripts_fnc_para_lineJump
 *
 */

params [
    ["_player", objNull, [objNull]],
    ["_vehicle", objNull, [objNull]],
    ["_chuteVehicleClass", "NonSteerable_Parachute_F"],
    ["_allowStaggared", false, [false]]
];

private _offset = if (_allowStaggared) then {
    if (GETVAR(_vehicle,EGVAR(VehicleFunc,StaggaredSide),true)) then {
        12+(random [-5,0,5]);
    } else {
        -12+(random [-5,0,5]);
    };
} else {
    random [-14,0,14];
};

if (_allowStaggared) then {
    private _side = GETVAR(_vehicle,EGVAR(VehicleFunc,StaggaredSide),true);
    SETPVAR(_vehicle,EGVAR(VehicleFunc,StaggaredSide),!_side);
};

_player allowDamage false;

private _dir = getDir _vehicle - 50; 
moveOut _player; 
private _pos = ([_vehicle, 14, ((getDir _vehicle) + 180 + _offset)] call BIS_fnc_relPos); 
_pos = [_pos#0, _pos#1, ((getPosATL _vehicle)#2)];; 
_player setPosATL _pos; 
_player setDir _dir - 140;

sleep 1.5;
private _velocity = velocity _player;
private _chute = createVehicle [_chuteVehicleClass, (position _player), [], 0, "CAN_COLLIDE"];
_chute AttachTo [_player, [0,0,0]];
detach _chute;
_player moveInDriver _chute;
_chute setVelocity _velocity;

[_player] call EFUNC(para,equipment);

sleep 0.5;

_player allowDamage true;
