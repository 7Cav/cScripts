/*
 * Author: CPL.Brostrom.A
 * This make it posssible to start up a HQ system (add a vehicle rack to the given object.)
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Radio <STRING> (Optional) (Default; "ACRE_PRC117F")
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [this] call cScripts_fnc_hq
 * [this,"ACRE_PRC117F"] call cScripts_fnc_hq
 *
 * Public: Yes
 */
#include "..\script_component.hpp";

params [
    ["_vehicle", objNull, [objNull]],
    ["_radio","ACRE_PRC117F", [""]]
];

_vehicle addAction [
    "Setup HQ Radio System", 
    {
        params ["_target", "_caller", "_actionId", "_arguments"];
        [_target, {}] remoteExec ["acre_api_fnc_initVehicleRacks", 2];
        [_target, ["ACRE_VRC103", "HQ Radio", "ERadio", false, ["external"], [], _arguments select 0, [], []],false, {true}] remoteExec ["acre_api_fnc_addRackToVehicle", 2];
        _target setVariable [QEGVAR(object,hq),true];
    },
    [_radio],1.5,true,true, "",
    "(isNil {_target getVariable 'cscripts_object_hq'});",
    10,false,"",""
];
