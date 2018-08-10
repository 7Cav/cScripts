/*
 * Author: CPL.Brostrom.A
 * This function add a ace action to a given object that give you the ability to spawn a aircraft on a given carrier.
 *
 * Arguments:
 * 0: Object                <OBJECT>
 * 1: Carrier               <OBJECT/STRING>
 * 2: Lable                 <STRING>
 * 3: ClassName             <STRING>
 * 4: Poition and Directon  <ARRAY>         (Default; [0,0,0,0])
 * 5: Icon                  <STRING>        (Default; "")
 * 6: Category Name         <STRING>        (Default; "")
 * 6: Category              <STRING>        (Default; ["ACE_MainActions","cScriptCarrierSpawnSystem_Main"])
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [this,carrier,"Elevator A","FIR_F16C_Blank", [35.5,122,25.5,-90], _icon, "cScriptCarrierSpawnSystem_F16_ElevatarA", ["ACE_MainActions","cScriptCarrierSpawnSystem_Main","cScriptCarrierSpawnSystem_Sub_F16"]] call cScripts_fnc_carrier_action
 * [this,carrier,"Elevator B","FIR_F16C_Blank", [-32,75,25.5,90], _icon, "cScriptCarrierSpawnSystem_F16_ElevatarB", ["ACE_MainActions","cScriptCarrierSpawnSystem_Main","cScriptCarrierSpawnSystem_Sub_F16"]] call cScripts_fnc_carrier_action
 * [this,carrier,"Elevator C","FIR_F16C_Blank", [-32,-11.5,25.5,90], _icon, "cScriptCarrierSpawnSystem_F16_ElevatarC", ["ACE_MainActions","cScriptCarrierSpawnSystem_Main","cScriptCarrierSpawnSystem_Sub_F16"]] call cScripts_fnc_carrier_action
 *
 * //[this,carrier,"RHS_UH60M",[6,140,26.5],180] call cScripts_fnc_carrier_action
 * //[this,carrier,"RHS_UH60M",[6,95,26.5],180] call cScripts_fnc_carrier_action
 * //[this,carrier,"RHS_UH60M",[6,50,26.5],180] call cScripts_fnc_carrier_action
 *
 * Public: No
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
        //[_carrier, _className, [_posX,_posY,_posZ], _dir] remoteExecCall [QFUNC(carrier_spawn), 2, false];
        [_carrier, _className, [_posX,_posY,_posZ], _dir] call FUNC(carrier_spawn);
    }, {true}, {}, [_carrier, _className, _posX, _posY, _posZ, _dir]] call ace_interact_menu_fnc_createAction;
[_object, 0, _category, _carrierSelectAction] call ace_interact_menu_fnc_addActionToObject;
