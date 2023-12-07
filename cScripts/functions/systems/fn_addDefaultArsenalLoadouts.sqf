#include "..\script_component.hpp";
/* 
 * Author: SGT.Brostrom.A
 * This adds default arsenal loadouts based on cfgLoadouts gear system loadouts.
 *
 * Arguments:
 * None
 *
 * Return:
 * True on success
 *
 * Example:
 * call cScripts_fnc_addDefaultArsenalLoadouts
 *
 * Public: No
 */

if (!EGVAR(patches,usesACEArsenal)) exitWith {};

INFO(if (is3DEN) then {"EDEN Default Arsenal"} else {"Default Arsenal"}, "Setting up default arsenal loadouts...");

private _empty = [[],[],[],[],[],[],"","",[],["","","","","",""]];
["<empty>", _empty] call ace_arsenal_fnc_addDefaultLoadout;

private _classnameList = configProperties [missionconfigfile >> "CfgLoadouts", "getNumber (_x >> 'scope') >= 2", true];
{
    private _class = configName _x;
    private _classname = configName (missionConfigFile >> 'CfgLoadouts' >> _class);
    private _company = getText (missionConfigFile >> 'CfgLoadouts' >> _class >> "company");
    _company = [_company] call CBA_fnc_capitalize;
    private _displayName = getText (missionConfigFile >> 'CfgLoadouts' >> _class >> "displayName");
    private _loadout = getText (missionConfigFile >> 'CfgLoadouts' >> _class >> "loadout");
    _loadout = parseSimpleArray _loadout;
    if (EGVAR(patches,usesACRE)) then { _loadout = [_loadout] call acre_api_fnc_filterUnitLoadout };
    private _name = format["[%1] %2 - %3", EGVAR(Settings,primaryClanTag), _company, _displayName];

    INFO_1(if (is3DEN) then {"EDEN Default Arsenal"} else {"Default Arsenal"}, "Setting up default arsenal loadout '%1'.", _displayName);

    // Error if 
    if (_displayName == "") exitWith {
        private _scope = getNumber (missionConfigFile >> 'CfgLoadouts' >> _class >> "scope");
        SHOW_ERROR_2(if (is3DEN) then {"EDEN Default Arsenal"} else {"Default Arsenal"}, "No displayName for %1 with scope %2.", _class, _scope);
    };
    [_name, _loadout] call ace_arsenal_fnc_addDefaultLoadout;
} forEach _classnameList;

true