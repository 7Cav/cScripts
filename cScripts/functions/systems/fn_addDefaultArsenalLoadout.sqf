#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A 
 * This function creates a default loadouts and adds it to the arsenal based on the config loadout name.
 * The loadout is added to the players arsenal.
 *
 * Arguments:
 * None
 *
 * Return:
 * True on success
 *
 * Example:
 * call cScripts_fnc_addDefaultArsenalLoadout
 */

if (!EGVAR(patches,usesACEArsenal)) exitWith {};

INFO("Default Arsenal", "Setting up default arsenal loadout for unit...");

private _empty = [[],[],[],[],[],[],"","",[],["","","","","",""]];
["<empty>", _empty, false] call ace_arsenal_fnc_addDefaultLoadout;

private _loadout = [player] call EFUNC(gear,getLoadoutName);
if !(isClass (missionConfigFile >> "CfgLoadouts" >> _loadout)) exitWith {
    SHOW_CHAT_WARNING_1("Default Arsenal", "Loadout '%1' does not exist inside of mission config. No default arsenal will be created.", _loadout);
};

private _name = getText (missionConfigFile >> "CfgLoadouts" >> _loadout >> "displayName");
private _company = getText (missionConfigFile >> "CfgLoadouts" >> _loadout >> "company");
private _company = [_company] call CBA_fnc_capitalize;


_name = format["[7CAV] %1 %2 (Default)", _company, _name];
private _loadout = parseSimpleArray getText (missionConfigFile >> "CfgLoadouts" >> _loadout >> "loadout");
if (EGVAR(patches,usesACRE)) then { _loadout = [_loadout] call acre_api_fnc_filterUnitLoadout };

[_name, _loadout, false] call ace_arsenal_fnc_addDefaultLoadout;
INFO_1("Default Arsenal", "Loadout name %1 created for player arsenal", _name);

true