#include "..\script_component.hpp";
/*
 * Author: myName, aGuyThatFixedTheFuctionName 
 * Description of my function.
 *
 * Arguments:
 * 0: Vehicle/Object/Crate <OBJECT>
 * 1: DescriptionOnParam <OBJECT/BOOL/NUMBER/STRING/ARRAY/CODE> (Optional) (Default; MyDefaultValue) 
 * 2: DescriptionOnParam <OBJECT/BOOL/NUMBER/STRING/ARRAY/CODE> (Optional) 
 *
 * Return Value:
 * PotentialReturnValueDescriprion <BOOL/NUMBER/STRING>
 *
 * Example:
 * [this, "Charlie", ['ACE_MainActions', 'cScriptQuickSelectionMenu', 'cScriptQuickSelection_Charlie'], true] call cScripts_fnc_setupQuickSelections;
 *
 * Public: No
 */

#define DEBUG_MODE
params[
    ["_object", objNull, [objNull]],
    ["_loadoutCompany", "", [""]],
    ["_allowOnlyForCompany", true, [true]],
    ["_aceCategory", ["ACE_MainActions"], [["ACE_MainActions"]]]
];

#ifdef DEBUG_MODE
    [formatText["Setting up %1 quick selections on %2.", _loadoutCompany, _object]] call FUNC(logInfo);
#endif

_loadoutCompany = toLower(_loadoutCompany);

private _classnameList = configProperties [missionconfigfile >> "CfgLoadouts", "getText (_x >> 'displayName') != ''", true];
{
    private _class = configName _x;
    private _displayName = getText (missionConfigFile >> 'CfgLoadouts' >> _class >> "displayName");
    private _classname = configName (missionConfigFile >> 'CfgLoadouts' >> _class);
    private _company = getText (missionConfigFile >> 'CfgLoadouts' >> _class >> "company");
    private _category = getArray (missionConfigFile >> 'CfgLoadouts' >> _class >> "category");
    _category = _aceCategory + _category;

    if (_loadoutCompany == _company) then {
        [_object, _displayName, _classname, "", _category, _company, _allowOnlyForCompany] call FUNC(addQuickSelection);
    };
} forEach _classnameList;

#ifdef DEBUG_MODE
    [formatText["Done setting up quick selections on %1.", _object]] call FUNC(logInfo);
#endif