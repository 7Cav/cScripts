#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function add eventhandelers adding cav functionality to all vehicles.
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_init_player
 *
 * Public: No
 */

if (!GVAR(isPlayer)) exitWith {};

["CAManBase", "Local", {
    params ["_unit"];
    if (_unit == player && {local _unit}) then {
		_unit addEventHandler ["CuratorObjectRegistered", {
			params ["_curator", "_input"];
			if (!isNil{_curator getVariable QEGVAR(player,zeus)}) exitWith {};
			
			#ifdef DEBUG_MODE
				[format["Zeus %1 entered interface.", _curator], "Debug Registered"] call FUNC(info);
			#endif

			_curator addEventHandler ["CuratorObjectPlaced", {
				params ["_curator", "_vehicle"];
				if (_vehicle iskindOf "man") exitWith {};
				#ifdef DEBUG_MODE
					[format ["Object %1 placed by %2", _vehicle, _curator], "Debug ObjPlaced"] call FUNC(info);
				#endif
				waitUntil {!isNull _vehicle && _vehicle == _vehicle;};
				_vehicle remoteExec [QEFUNC(vehicle,reset), 0, true]; 
				_vehicle remoteExec [QEFUNC(vehicle,addFunctions), -2, true];
				_vehicle remoteExec [QEFUNC(vehicle,addInventory), 2];
				_vehicle remoteExec [QEFUNC(vehicle,addDefaultLoadout), 2];
				_vehicle remoteExec [QEFUNC(vehicle,addCosmetics), 2];
				_vehicle remoteExec [QEFUNC(vehicle,addStagingActions), -2];
				_vehicle remoteExec [QEFUNC(vehicle,addRadio), 2];
			}];
			_curator setVariable [QEGVAR(player,zeus), true];
		}];
    };
}] call CBA_fnc_addClassEventHandler;