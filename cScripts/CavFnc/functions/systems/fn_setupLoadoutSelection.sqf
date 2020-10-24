
#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function setup a quick loadout selection bases on config
 *
 * Arguments:
 * 0: Vehicle/Object/Crate <OBJECT>
 * 1: Allow Only For Company </BOOL> (Optional) (Default; true)
 * 2: Ace Interact Category <STRING> (Optional) (Default; ACE_MainActions)
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [this, "Charlie", true, "ACE_MainActions"] call cScripts_fnc_setupLoadoutSelection;
 * [this, "Charlie", true, "ACE_SelfActions"] call cScripts_fnc_setupLoadoutSelection;
 *
 * Public: No
 */

params[
    ["_object", objNull, [objNull]],
    ["_allowOnlyForCompany", true, [true]],
    ["_aceCategory", "ACE_MainActions", ["ACE_MainActions"]]
];

#ifdef DEBUG_MODE
    [formatText["Setting up loadout selections on %1.", _object], "LoadoutSelector"] call FUNC(logInfo);
#endif

// Setup categories
private _mainCategory = [_object, _aceCategory] call FUNC(setupLoadoutCategories);

// Setup loadouts
private _classnameList = configProperties [missionconfigfile >> "CfgLoadouts", "getNumber (_x >> 'scope') >= 2", true];
{
    private _class = configName _x;
    private _displayName = getText (missionConfigFile >> 'CfgLoadouts' >> _class >> "displayName");
    private _classname = configName (missionConfigFile >> 'CfgLoadouts' >> _class);
    private _company = getText (missionConfigFile >> 'CfgLoadouts' >> _class >> "company");
    private _category = getArray (missionConfigFile >> 'CfgLoadouts' >> _class >> "category");
    #ifdef DEBUG_MODE
        [formatText["Setting up %1 loadout on %2.", _displayName, _object], "LoadoutSelector"] call FUNC(logInfo);
    #endif
    _category = [_aceCategory, _mainCategory] + _category;
    [_object, _displayName, _classname, "", _category, _company, _allowOnlyForCompany] call FUNC(addLoadoutSelection);
} forEach _classnameList;

#ifdef DEBUG_MODE
    [formatText["Done setting up quick selections on %1.", _object]] call FUNC(logInfo);
#endif 