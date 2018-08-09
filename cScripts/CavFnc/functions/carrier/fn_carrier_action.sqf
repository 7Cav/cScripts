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
 * [carrier,"FIR_F16C_Blank",[35.5,122,25.5],-90] call cScripts_fnc_carrier_action
 * [carrier,"FIR_F16C_Blank",[-32,75,25.5],90] call cScripts_fnc_carrier_action
 * [carrier,"FIR_F16C_Blank",[-32,-11.5,25.5],90] call cScripts_fnc_carrier_action

 * [carrier,"RHS_UH60M",[6,140,26.5],180] call cScripts_fnc_carrier_action
 * [carrier,"RHS_UH60M",[6,95,26.5],180] call cScripts_fnc_carrier_action
 * [carrier,"RHS_UH60M",[6,50,26.5],180] call cScripts_fnc_carrier_action
 *
 * Public: [Yes/No]
 */

#include "..\script_component.hpp";
#define DEBUG_MODE

params [
    ["_object", objNull, [objNull]],
    ["_carrier", ""],
    ["_lable", "Unknown action"],
    ["_className", ""],
    ["_posAndDir", [0,0,0,0]],
    ["_icon", ""],
    ["_categoryName", ""],
    ["_category", ["ACE_MainActions","cScriptCarrierSpawnSystem_Main"]]
];

if (_carrier == "") exitWith {[formatText["There are no carrier defined for %1", _object]] call FUNC(logWarning);};

#ifdef DEBUG_MODE
    [formatText["Action %1 added to %2 spawn a vehicle on %3 for carrier %4.", _lable, _object, _posAndDir, _carrier]] call FUNC(logInfo);
#endif

private _posX = _posAndDir select 0;
private _posY = _posAndDir select 1;
private _posZ = _posAndDir select 2;
private _dir = _posAndDir select 3;

private _carrierSelectAction = [_categoryName, _lable, _icon, {
        params ["_target", "_player", "_actionParams"];
        _actionParams params ["_carrier", "_className", "_posX", "_posY","_posZ","_dir"];
        [_carrier, _className, [_posX,_posY,_posZ], _dir] call FUNC(carrier_spawn);
    }, {true}, {}, [_carrier, _className, _posX, _posY, _posZ, _dir]] call ace_interact_menu_fnc_createAction;
[_object, 0, _category, _carrierSelectAction] call ace_interact_menu_fnc_addActionToObject;
