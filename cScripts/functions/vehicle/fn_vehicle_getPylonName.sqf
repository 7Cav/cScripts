#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function return a pylon displayname
 *
 * Arguments:
 * 0: VehicleKind <STRING|BOOLEAN>
 * 1: LoadoutName <STRING> (Default; "default")
 *
 * Return Value:
 * DisplayName <STRING>
 *
 * Example:
 * ["rhsusf_m1a1tank_base", "default"] call cScripts_fnc_vehicle_getPylonName;
 *
 * Public: No
 */

params [
    ["_classname", "", [""]],
    ["_loadout", "default", [""]]
];

GVAR(PYLONS) get _classname get _loadout getOrDefault ["displayName", ""]