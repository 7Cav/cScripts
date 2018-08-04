/*
 * Author: CPL.Brostrom.A
 * [Description]
 *
 * Arguments:
 * 0: Argument Name <OBJECT/BOOL/NUMBER/STRING/ARRAY/CODE> (Optional) (Default; MyDefaultValue)
 *
 * Return Value:
 * Return Name <BOOL/NUMBER/STRING>
 *
 * Example:
 * [carrier,"FIR_F16C_Blank",[35.5,122,25.5],-90] call cScripts_fnc_carrier_spawn
 * [carrier,"FIR_F16C_Blank",[-32,75,25.5],90] call cScripts_fnc_carrier_spawn
 * [carrier,"FIR_F16C_Blank",[-32,-11.5,25.5],90] call cScripts_fnc_carrier_spawn

 * [carrier,"RHS_UH60M",[6,140,26.5],180] call cScripts_fnc_carrier_spawn
 * [carrier,"RHS_UH60M",[6,95,26.5],180] call cScripts_fnc_carrier_spawn
 * [carrier,"RHS_UH60M",[6,50,26.5],180] call cScripts_fnc_carrier_spawn
 *
 * Public: [Yes/No]
 */

#include "..\script_component.hpp";
#define DEBUG_MODE

params [
    ["_carrier",""],
    ["_vehicle",""],
    ["_pos",[0,0,0]],
    ["_dir",0]
];

if (_carrier == "") exitWith {[formatText["There are no carrier defined..."]] call FUNC(logError);};

#ifdef DEBUG_MODE
    [formatText["Spawning classname %1 on carrier %2.", _vehicle, _carrier]] call FUNC(logInfo);
#endif

hint formatText["Spawned %1",_vehicle];

private _veh = _vehicle createVehicle [0,0,0];
_veh attachTo [_carrier, _pos];
_veh setDir _dir;
_veh setvectorUp [0,0,1];
[{
    detach (_this select 1);
    (_this select 1);
}, [_veh], 2] call CBA_fnc_waitAndExecute;
