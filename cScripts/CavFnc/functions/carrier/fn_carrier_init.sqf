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
 * ["MyCarrier"] call cScripts_fnc_carrier_init
 *
 * Public: [Yes/No]
 */

#include "..\script_component.hpp";
#define DEBUG_MODE

params [
    ["_object", objNull, [objNull]],
    ["_carrier",""]
];

#ifdef DEBUG_MODE
    [formatText["Carrier Retrieve System is initialized on %1 for %2.", _object, _carrier]] call FUNC(logInfo);
#endif

private _elevatorA = [35.5,122,25.5,-90];
private _elevatorB = [-32,75,25.5,90];
private _elevatorC = [-32,-11.5,25.5,90];
private _landingStripA = [6,140,26.5,180];
private _landingStripB = [6,95,26.5,180];
private _landingStripC = [6,50,26.5,180];

private _icon = "";

[_object,"cScriptCarrierSpawnSystem_Main","Carrier Retrieve System", _icon, ["ACE_MainActions"]] call FUNC(addAceCategory);

[_object,"cScriptCarrierSpawnSystem_Sub_F16","Retrieve F-16", _icon, ["ACE_MainActions","cScriptCarrierSpawnSystem_Main"]] call FUNC(addAceCategory);
[_object,_carrier,"Elevator A","FIR_F16C_Blank", _elevatorA, _icon, "cScriptCarrierSpawnSystem_F16_ElevatarA", ["ACE_MainActions","cScriptCarrierSpawnSystem_Main","cScriptCarrierSpawnSystem_Sub_F16"]] call FUNC(carrier_action);
[_object,_carrier,"Elevator B","FIR_F16C_Blank", _elevatorB, _icon, "cScriptCarrierSpawnSystem_F16_ElevatarB", ["ACE_MainActions","cScriptCarrierSpawnSystem_Main","cScriptCarrierSpawnSystem_Sub_F16"]] call FUNC(carrier_action);
[_object,_carrier,"Elevator C","FIR_F16C_Blank", _elevatorB, _icon, "cScriptCarrierSpawnSystem_F16_ElevatarC", ["ACE_MainActions","cScriptCarrierSpawnSystem_Main","cScriptCarrierSpawnSystem_Sub_F16"]] call FUNC(carrier_action);
