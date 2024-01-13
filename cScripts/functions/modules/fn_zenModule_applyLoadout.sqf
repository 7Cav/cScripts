#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This module function apply a loadout selected by zeus
 *
 * Arguments:
 * 0: modulePos <POSITION>
 * 1: objectPos <OBJECT>
 *
 * Example:
 * [getPos logic, this] call cScripts_fnc_zenModule_applyLoadout
 *
 * Public: No
 */

params ["_modulePos", "_objectPos"];

if (!(_objectPos isKindOf "Man")) exitWith {["Not a valid unit"] call zen_common_fnc_showMessage};

private _loadouts = [];
private _displayNames = [];

private _fn_getCompany = {
    params ["_company"];
    _company = switch (_company) do {
        case "alpha": {"Alpha Co."};
        case "bravo": {"Bravo Co."};
        case "charlie": {"Chralie Co."};
        default {"Other"};
    };
    _company
};
private _fn_getDisplayName = {
    params ["_name"];
    if (_name == "") exitWith {"Unknown Loadout"};
    _name
};

// Get unit current loadout
private _currentLoadout = [_objectPos] call EFUNC(gear,getLoadoutName);
private _currentDisplay = [getText (missionConfigFile >> 'CfgLoadouts' >> _currentLoadout >> "displayName")] call _fn_getDisplayName;
private _curretnCompany = [getText (missionConfigFile >> 'CfgLoadouts' >> _currentLoadout >> "company")] call _fn_getCompany;
_currentDisplay = format["Current Loadout - %1 (%2)", _currentDisplay, _curretnCompany];
_loadouts append [_currentLoadout];
_displayNames append [_currentDisplay];

// Get Config Loadouts
private _cfgLoadouts = configProperties [missionconfigfile >> "CfgLoadouts", "getNumber (_x >> 'scope') >= 2", true];
{
    private _class = configName _x;
    private _classname = configName (missionConfigFile >> 'CfgLoadouts' >> _class);
    private _displayName = [getText (missionConfigFile >> 'CfgLoadouts' >> _class >> "displayName")] call _fn_getDisplayName;
    private _company = [getText (missionConfigFile >> 'CfgLoadouts' >> _class >> "company")] call _fn_getCompany;
    
    private _loadoutName = format["%1 - %2", _company, _displayName];
    _loadouts append [_classname];
    _displayNames append [_loadoutName];
} forEach _cfgLoadouts;

// Zen menu
[
    "Apply Loadout", 
    [
        ["LIST", ["Loadout", "Select a loadout to apply"],
            [
                _loadouts,
                _displayNames,
                0,
                12
            ], false
        ]
    ],
    {
        params ["_dialogValues", "_args"];
        _dialogValues params ["_loadout"];
        _args params ["_unit"];
        [QEGVAR(gear,applyLoadout), [_unit,_loadout], _unit] call CBA_fnc_targetEvent;
        [format["Applied loadout to %1", name _unit]] call zen_common_fnc_showMessage;
    },
    {},
    [_objectPos]
] call zen_dialog_fnc_create;