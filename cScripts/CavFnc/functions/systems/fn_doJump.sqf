/*
 * Author: Igi_PL
 * Exported and rewritten: CPL.Brostrom.A
 * This is a exported script from the IGI load mod to get ridd of all the un used system they have.
 * The code is a direct export with some strings renamed and changed.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Player <STRING>
 * 2: Minimum jump altetude <INTEGER>
 * 3: Parachute deploy height <INTEGER>
 *
 * Example:
 * [this,player] call cScripts_fnc_doJump;
 * [this,player,30,150] call cScripts_fnc_doJump;
 */

#include "..\script_component.hpp";

params [
    ["_vehicle", objNull, [objNull]],
    ["_player",player],
    ["_paraChuteOpen_ATL",160]
];

_dist_out_para = 11;

_player allowDamage false;
sleep 0.2;
unassignVehicle _player;
_player action ["EJECT",vehicle _player];
sleep 0.5;

_pos = ([_vehicle, _dist_out_para, ((getDir _vehicle) + 180 + 8)] call BIS_fnc_relPos);
_pos = [_pos select 0, _pos select 1, ((getPosATL _vehicle) select 2)];
_player setPosATL _pos;
_dist = _vehicle distance _player;
while {(_vehicle distance _player) - _dist < 20} do {
    sleep 0.2;
};
if (_paraChuteOpen_ATL > 0) then {
    while {(getPosATL _player) select 2 > _paraChuteOpen_ATL} do {
        sleep 0.2;
    };
};
if !(unitBackpack _player isKindOf "B_Parachute") then {
    _chute = createVehicle ["NonSteerable_Parachute_F", position _player, [], 0, "CAN_COLLIDE"];
    _chute AttachTo [_player, [0,0,0]];
    detach _chute;
    _velocity = velocity _player;
    _player moveInDriver _chute;
    _chute setVelocity _velocity;
};
_player allowDamage true;
