#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function make sure all the vehicles gets their functions and systems applied
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_init_vehicle
 *
 * Public: No
 */

INFO("InitVehicle","Applying Event Handers (init) to vehicles for function expansions...");

if !(EGVAR(Settings,enableVehicleSystem)) exitWith {};

// Event Handlers
[QEGVAR(EH_Vehicle,addFunctions), {
    params ["_vehicle"];
    INFO_2("EH_InitVehicle_addFunctions", "Applying function to %1 [%2]", _vehicle, typeOf _vehicle);
    _vehicle call EFUNC(vehicle,addFunctions);
}] call CBA_fnc_addEventHandler;

[QEGVAR(EH_Vehicle,addStagingActions), {
    params ["_vehicle"];
    INFO_2("EH_InitVehicle_addStagingActions", "Applying function to %1 [%2]", _vehicle, typeOf _vehicle);
    _vehicle call EFUNC(vehicle,addStagingActions);
}] call CBA_fnc_addEventHandler;


// Vehicle init
["AllVehicles", "init", {
    params ["_vehicle"];
    INFO_2("VehicleInit", "Applying Init to %1 [%2]...", _vehicle, typeOf _vehicle);
    INFO_2("VehicleInit", "Applying Client Init: (%1 [%2])...", _vehicle, typeOf _vehicle);
    _vehicle call EFUNC(vehicle,addFunctions);
    _vehicle call EFUNC(vehicle,addStagingActions);
    INFO_2("VehicleInit", "Init applied to %1 [%2]", _vehicle, typeOf _vehicle);
}, true, ["man"], true] call CBA_fnc_addClassEventHandler;

["AllVehicles", "initPost", {
    params ["_vehicle"];
    INFO_2("VehicleinitPost", "Applying initPost to %1 [%2]...", _vehicle, typeOf _vehicle);
    if (isServer) then {
        INFO_2("VehicleinitPost", "Applying Server Init: (%1 [%2])", _vehicle, typeOf _vehicle);
        _vehicle call EFUNC(vehicle,addDefaultLoadout);
        _vehicle call EFUNC(vehicle,addCosmetics);
        _vehicle call EFUNC(vehicle,addRadio);
        _vehicle call EFUNC(vehicle,addFunctionsGlobal);
    };
    if (local _vehicle) then {
        INFO_2("VehicleinitPost", "Applying Local Init: (%1 [%2])", _vehicle, typeOf _vehicle);
        [{
            params["_vehicle"];
            _vehicle call EFUNC(vehicle,addInventory);
        }, [_vehicle], 1] call CBA_fnc_waitAndExecute;
    };
    INFO_2("VehicleinitPost", "initPost applied to %1 [%2]", _vehicle, typeOf _vehicle);
}, true, ["man"], true] call CBA_fnc_addClassEventHandler;
