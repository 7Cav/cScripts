/*
 * Author: CPL.Brostrom.A (With the help from; 654wak654)
 * Move the player outside the passanger door on the right side.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * [this] call cScripts_fnc_doGetOutUH60Right;
 */

#include "..\script_component.hpp";

params [["_vehicle", objNull, [objNull]]];

if(_vehicle doorPhase "doorRB" ==0)then{
    _vehicle animateDoor ["doorRB",1];
}else{
    if(_vehicle doorPhase "doorRB" !=0)then{
        [_vehicle,"doorRB"] spawn rhs_fnc_doorHandler;
    };
};
sleep 1;

// Right
private _dir = getDir _vehicle + 50;
private _posASL = (getPosASL _vehicle) vectorAdd [sin _dir * 2.5, cos _dir * 2.5, 0];
moveOut player;
player setPosASL _posASL;
player setDir _dir + 40;
