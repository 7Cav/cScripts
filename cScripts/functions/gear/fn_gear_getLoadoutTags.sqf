#include "..\script_component.hpp"
/*
 * Author: CPL.Brostrom.A
 * This function return lodout tags
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Tags <ARRAY>
 *
 * Example:
 * call cScripts_fnc_gear_getLoadoutTags
 *
 */

private _loadout = GETVAR(player,EGVAR(Gear,loadoutClass), typeOf player);

private _config = missionConfigFile >> "CfgLoadouts" >> _loadout;
private _tags = getArray (_config >> "equipmentTags");
if (_tags isEqualTo []) then {[]};

_tags
