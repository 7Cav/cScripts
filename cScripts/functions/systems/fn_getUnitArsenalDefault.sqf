#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A 
 * This function creates a defualt loadout based on your current selected loadout class
 *
 * Arguments:
 * None
 *
 * Return:
 * Nothing
 *
 * Example:
 * [] call cScripts_fnc_getUnitArsenalDefault;
 */

private _empty = [[],[],[],[],[],[],"","",[],["","","","","",""]];
["<empty>", _empty, false] call ace_arsenal_fnc_addDefaultLoadout;

private _loadout = call EFUNC(gear,getCurrentLoadout);
if !(isClass (missionConfigFile >> "CfgLoadouts" >> _loadout)) exitWith {
    [format["Loadout '%1' does not exist inside of mission config. No default arsenal will be created.", _loadout], "Arsenal Default", true] call FUNC(warning);
};

private _name = getText (missionConfigFile >> "CfgLoadouts" >> _loadout >> "displayName");
private _company = getText (missionConfigFile >> "CfgLoadouts" >> _loadout >> "company");
private _company = [_company] call CBA_fnc_capitalize;


_name = format["[7CAV] %1 %2 (Default)", _company, _name];
private _loadout = parseSimpleArray getText (missionConfigFile >> "CfgLoadouts" >> _loadout >> "loadout");
if (EGVAR(patches,usesACRE)) then { _loadout = [_loadout] call acre_api_fnc_filterUnitLoadout };

[_name, _loadout, false] call ace_arsenal_fnc_addDefaultLoadout;