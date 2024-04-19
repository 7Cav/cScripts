#include "..\script_component.hpp"
/*
 * Author: CPL.Brostrom.A
 * This function return your equipmetTags
 *
 * Arguments:
 * 0: Loadout <STRING>
 *
 * Return Value:
 * Tags <ARRAY>
 *
 * Example:
 * [typeOf player] call cScripts_fnc_gear_getTags
 * [vehicleVarName player] call cScripts_fnc_gear_getTags
 *
 */

params [["_loadout","",[]]];

private _config = missionConfigFile >> "CfgLoadouts" >> _loadout;
private _tags = getArray (_config >> "equipmentTags");

_tags;