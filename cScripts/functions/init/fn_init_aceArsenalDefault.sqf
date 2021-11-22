#include "..\script_component.hpp";
/* 
 * Author: CPL.Brostrom.A
 * This function initzialise ace arsenal default loadouts in eden and in mission.
 *
 * Example:
 * call cScripts_fnc_init_aceArsenalDefault
 *
 * Public: No
 */

if (isServer) exitWith {};
if (!EGVAR(patches,usesACEArsenal)) exitWith {};

#ifdef DEBUG_MODE
    ["Setting up Default ACE Arsenal loadouts.", if (is3DEN) then { "EDEN Arsenal"} else {"Arsenal"}] call FUNC(info);
#endif

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

    #ifdef DEBUG_MODE
        [format["Setting up default arsenal loadout '%1'.", _displayName], if (is3DEN) then { "EDEN Arsenal"} else {"Arsenal"}] call FUNC(info);
    #endif
    // Error if 
    if (_displayName == "") exitWith {
        private _scope = getNumber (missionConfigFile >> 'CfgLoadouts' >> _class >> "scope");
        [format["No displayName for %1 with scope %2.", _class, _scope], if (is3DEN) then { "EDEN Arsenal"} else {"Arsenal"}] call FUNC(error);
    };
    [_name, _loadout] call ace_arsenal_fnc_addDefaultLoadout;
} forEach _classnameList;

#ifdef DEBUG_MODE
    ["Default ACE Arsenal loadouts setup completed.", if (is3DEN) then { "EDEN Arsenal"} else {"Arsenal"}] call FUNC(info);
#endif