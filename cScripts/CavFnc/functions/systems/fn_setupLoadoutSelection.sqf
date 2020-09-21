
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
    [formatText["Setting up crate loadout selections on %2.", _object], "LoadoutSelector"] call FUNC(logInfo);
#endif

// Setup category
private _icon      = "cScripts\Data\Icon\icon_01.paa";
private _squadIcon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa";
private _speciIcon = "\A3\Ui_f\data\GUI\Cfg\Ranks\lieutenant_gs.paa";
private _leadIcon  = "\A3\Ui_f\data\GUI\Cfg\Ranks\captain_gs.paa";
private _pilotIcon = "\A3\Ui_f\data\GUI\Cfg\Ranks\colonel_gs.paa";

[_object, "cScripts_Loadout_Cat_Main",                    "Loadouts", _icon,              [_aceCategory]] call FUNC(addAceCategory);
[_object, "cScripts_Loadout_Cat_Alpha",                   "Alpha Co.", "",                [_aceCategory, "cScripts_Loadout_Cat_Main"]] call FUNC(addAceCategory);
[_object, "cScripts_Loadout_Cat_Alpha_Leadership",        "Leadership", _leadIcon,        [_aceCategory, "cScripts_Loadout_Cat_Main", "cScripts_Loadout_Cat_Alpha"]] call FUNC(addAceCategory);
[_object, "cScripts_Loadout_Cat_Alpha_FixedWing",         "Fixed Wing", _pilotIcon,       [_aceCategory, "cScripts_Loadout_Cat_Main", "cScripts_Loadout_Cat_Alpha"]] call FUNC(addAceCategory);
[_object, "cScripts_Loadout_Cat_Alpha_Rotary",            "Rotary", _pilotIcon,           [_aceCategory, "cScripts_Loadout_Cat_Main", "cScripts_Loadout_Cat_Alpha"]] call FUNC(addAceCategory);
[_object, "cScripts_Loadout_Cat_Bravo",                   "Bravo Co.", "",                [_aceCategory, "cScripts_Loadout_Cat_Main"]] call FUNC(addAceCategory);
[_object, "cScripts_Loadout_Cat_Bravo_Viking_Leadership", "Viking Leadership", _leadIcon, [_aceCategory, "cScripts_Loadout_Cat_Main", "cScripts_Loadout_Cat_Bravo"]] call FUNC(addAceCategory);
[_object, "cScripts_Loadout_Cat_Bravo_Viking_Squad",      "Viking Squad", _squadIcon,     [_aceCategory, "cScripts_Loadout_Cat_Main", "cScripts_Loadout_Cat_Bravo"]] call FUNC(addAceCategory);
[_object, "cScripts_Loadout_Cat_Bravo_Tank",              "Tank", _squadIcon,             [_aceCategory, "cScripts_Loadout_Cat_Main", "cScripts_Loadout_Cat_Bravo"]] call FUNC(addAceCategory);
[_object, "cScripts_Loadout_Cat_Bravo_IFV",               "IFV", _squadIcon,              [_aceCategory, "cScripts_Loadout_Cat_Main", "cScripts_Loadout_Cat_Bravo"]] call FUNC(addAceCategory);
[_object, "cScripts_Loadout_Cat_Charlie",                 "Charlie Co.", "",              [_aceCategory, "cScripts_Loadout_Cat_Main"]] call FUNC(addAceCategory);
[_object, "cScripts_Loadout_Cat_Charlie_Leadership",      "Leadership", _leadIcon,        [_aceCategory, "cScripts_Loadout_Cat_Main", "cScripts_Loadout_Cat_Charlie"]] call FUNC(addAceCategory);
[_object, "cScripts_Loadout_Cat_Charlie_Squad",           "Squad", _squadIcon,            [_aceCategory, "cScripts_Loadout_Cat_Main", "cScripts_Loadout_Cat_Charlie"]] call FUNC(addAceCategory);
[_object, "cScripts_Loadout_Cat_Charlie_Special",         "Special", _speciIcon,          [_aceCategory, "cScripts_Loadout_Cat_Main", "cScripts_Loadout_Cat_Charlie"]] call FUNC(addAceCategory);
[_object, "cScripts_Loadout_Cat_Other",                   "Other", "",                    [_aceCategory, "cScripts_Loadout_Cat_Main"]] call FUNC(addAceCategory);
[_object, "cScripts_Loadout_Cat_Other_Russian",           "Russian", "",                  [_aceCategory, "cScripts_Loadout_Cat_Main"]] call FUNC(addAceCategory);
[_object, "cScripts_Loadout_Cat_Other_Insurgent",         "Insurgent", "",                [_aceCategory, "cScripts_Loadout_Cat_Main"]] call FUNC(addAceCategory);

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
    _category = [_aceCategory, "cScripts_Loadout_Cat_Main"] + _category;
    [_object, _displayName, _classname, "", _category, _company, _allowOnlyForCompany] call FUNC(addLoadoutSelection);
} forEach _classnameList;

#ifdef DEBUG_MODE
    [formatText["Done setting up quick selections on %1.", _object]] call FUNC(logInfo);
#endif 