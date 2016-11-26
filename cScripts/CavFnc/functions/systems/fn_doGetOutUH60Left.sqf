/*
 * Author: CPL.Brostrom.A 
 * meh
 *
 * Arguments:
 *
 * Example:
 * this addAction ["Get out (Left side)",{[_this select 0] call cScripts_fnc_getOutUH60Left}];
 */

#include "..\script_component.hpp";

params [["_vehicle", objNull, [objNull]]];

if(_vehicle doorPhase "doorLB" ==0)then{
    _vehicle animateDoor ["doorLB",1];
}else{
    if(_vehicle doorPhase "doorLB" !=0)then{
        [_vehicle,"doorLB"] spawn rhs_fnc_doorHandler;
    };
};
sleep 1;

// Left
private _dir = getDir _vehicle - 50;
private _posASL = (getPosASL _vehicle) vectorAdd [sin _dir * 2.5, cos _dir * 2.5, 0];
player setPosASL _posASL;
player setDir _dir - 40;