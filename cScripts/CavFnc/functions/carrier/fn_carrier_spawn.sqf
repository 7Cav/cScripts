/*
 * Author: CPL.Brostrom.A
 * This function spawn a given classname on a specific position on a carrier rotates it and release it.
 *
 * Arguments:
 * 0: Carrier   <OBJECT>
 * 1: ClassName <OBJECT>
 * 2: Postion   <ARRAY>
 * 3: Direction <NUMBER>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [carrier,"FIR_F16C_Blank",[35.5,122,25.5],-90] call cScripts_fnc_carrier_spawn
 * [carrier,"FIR_F16C_Blank",[-32,75,25.5],90] call cScripts_fnc_carrier_spawn
 * [carrier,"FIR_F16C_Blank",[-32,-11.5,25.5],90] call cScripts_fnc_carrier_spawn

 * [carrier,"RHS_UH60M",[6,140,26.5],180] call cScripts_fnc_carrier_spawn
 * [carrier,"RHS_UH60M",[6,95,26.5],180] call cScripts_fnc_carrier_spawn
 * [carrier,"RHS_UH60M",[6,50,26.5],180] call cScripts_fnc_carrier_spawn
 *
 * Public: No
 */

#include "..\script_component.hpp";
#define DEBUG_MODE

params [
    ["_carrier", objNull],
    ["_vehicle", objNull],
    ["_pos",[0,0,0]],
    ["_dir",0]
];

if (!isServer) exitWith {};
//if (_carrier == "") exitWith {[formatText["There are no carrier defined..."]] call FUNC(logError);};

#ifdef DEBUG_MODE
    [formatText["Spawning classname %1 at %2 rotated %3 on %4.", _vehicle, _pos, _dir, _carrier]] call FUNC(logInfo);
#endif

private _veh = _vehicle createVehicle [0,0,0];
//[_veh, [_carrier, _pos]] remoteExec ["attachTo", _veh];
//[_dir] remoteExecCall ["setDir", _veh];

_veh attachTo [_carrier, _pos];
_veh setDir _dir;
_veh setvectorUp [0,0,1];

[{
    params ["_veh"];
    //[_veh] remoteExec ["detach", _veh];
    detach _veh;
}, [_veh], 2] call CBA_fnc_waitAndExecute;


#ifdef DEBUG_MODE
    [formatText["%1 have been spawned at %2.", _veh, getPosASL _veh]] call FUNC(logInfo);
#endif