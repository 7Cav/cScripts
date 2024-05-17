#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function returns a vehicle loadout or pylon
 *
 * Arguments:
 * 0: VehicleKind <STRING>
 * 1: LoadoutName <STRING> (Default; "default")
 *
 * Return Value:
 * Vehicle loadout Array <ARRAY>
 *
 * Example:
 * ["rhsusf_m1a1tank_base", "default"] call cScripts_fnc_vehicle_getPylonLoadout;
 *
 * Public: No
 */

params [
    ["_classname", "", [""]],
    ["_loadout", "default", [""]]
];

GVAR(PYLONS) get _classname get _loadout getOrDefault ["loadout", ""]