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
 * [this, "Charlie", "ACE_MainActions", true] call cScripts_fnc_setupLoadoutSelection;
 * [this, "Charlie", "ACE_SelfActions", true] call cScripts_fnc_setupLoadoutSelection;
 *
 * Public: No
 */

params[
    ["_object", objNull, [objNull]],
    ["_aceCategory", "ACE_MainActions", ["ACE_MainActions"]],
    ["_allowAllLoadouts", true, [true]]
];


INFO_1("LoadoutSelector", "Setting up loadout selections on %1.", _object);

// Setup categories
private _mainCategory = [_object, _aceCategory] call FUNC(setupLoadoutCategories);

// Setup loadouts
private _classnameList = configProperties [missionconfigfile >> "CfgLoadouts", "getNumber (_x >> 'scope') >= 2", true];
{
    private _class = configName _x;
    private _displayName = getText (missionConfigFile >> 'CfgLoadouts' >> _class >> "displayName");
    private _classname = configName (missionConfigFile >> 'CfgLoadouts' >> _class);
    private _icon = getText (missionConfigFile >> 'CfgLoadouts' >> _class >> "icon") call FUNC(getIcon);
    if (isNil{_icon}) then { _icon = "iconMan" };
    private _company = getText (missionConfigFile >> 'CfgLoadouts' >> _class >> "company");
    private _platoon = getNumber (missionConfigFile >> 'CfgLoadouts' >> _class >> "platoon");
    private _category = getArray (missionConfigFile >> 'CfgLoadouts' >> _class >> "category");
    
    INFO_2("LoadoutSelector", "Setting up %1 loadout on %2.", _displayName, _object);

    _category = [_aceCategory, _mainCategory] + _category;
    [_object, _displayName, _classname, _icon, _category, _company, _platoon, _allowAllLoadouts] call FUNC(addLoadoutSelection);
} forEach _classnameList;

INFO_1("LoadoutSelector", "Done setting up quick selections on %1.", _object);