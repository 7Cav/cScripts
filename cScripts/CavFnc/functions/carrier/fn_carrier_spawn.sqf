#include "..\script_component.hpp";
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

#define DEBUG_MODE

params [
    ["_carrier", objNull],
    ["_vehicle", objNull],
    ["_pos",[0,140,25.5]],
    ["_dir",180]
];

if (!isServer) exitWith {};

#ifdef DEBUG_MODE
    [formatText["Prepering to spawn %1 at %2 rotated %3 on %4.", _vehicle, _pos, _dir, _carrier]] call FUNC(logInfo);
#endif

private _veh = _vehicle createVehicle [0,0,0];

[{
    _args = params ["_veh", "_carrier", "_pos", "_dir"];

    #ifdef DEBUG_MODE
        [formatText["%1 is spawned and located at %2.", _veh, getPosASL _veh]] call FUNC(logInfo);
    #endif

    [{
        _args = params ["_veh", "_carrier", "_pos", "_dir"];

        #ifdef DEBUG_MODE
            [formatText["Attaching %1 to %2 on %3 with the %4 direction.", _veh, _carrier, _pos, _dir]] call FUNC(logInfo);
        #endif

        _veh attachTo [_carrier, _pos];
        _veh setDir _dir;
        _veh setvectorUp [0,0,1];

    }, [_veh, _carrier, _pos, _dir], 1] call CBA_fnc_waitAndExecute;

    [{
        _args = params ["_veh","_carrier"];

        detach _veh;
        
        #ifdef DEBUG_MODE
            [formatText["Detachig %1 from the %2 new postion is %3.", _veh, _carrier, getPosASL _veh]] call FUNC(logInfo);
        #endif

    }, [_veh, _carrier], 2] call CBA_fnc_waitAndExecute;

}, [_veh, _carrier, _pos, _dir]] call CBA_fnc_execNextFrame;
