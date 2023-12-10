#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function setup a loadout categories
 *
 * Arguments:
 * 0: Vehicle/Object/Crate <OBJECT>
 * 1: Ace Action Category <STRING>     (Optional) (Default; ACE_MainActions)
 *
 * Return Value:
 * Main category used for creation <STRING>
 *
 * Example:
 * [this, "ACE_MainActions"] call cScripts_fnc_setupLoadoutCategories;
 * [this, "ACE_SelfActions"] call cScripts_fnc_setupLoadoutCategories;
 *
 * Public: No
 */

 params[
    ["_object", objNull, [objNull]],
    ["_aceCategory", "ACE_MainActions", ["ACE_MainActions"]]
];

// Setup category
private _icon      = "cScripts\Data\Icon\icon_01.paa" call FUNC(getIcon);
private _squadIcon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa" call FUNC(getIcon);
private _speciIcon = "\A3\Ui_f\data\GUI\Cfg\Ranks\lieutenant_gs.paa" call FUNC(getIcon);
private _leadIcon  = "\A3\Ui_f\data\GUI\Cfg\Ranks\captain_gs.paa" call FUNC(getIcon);
private _pilotIcon = "\A3\Ui_f\data\GUI\Cfg\Ranks\colonel_gs.paa" call FUNC(getIcon);
private _iconTank  = "iconTank" call FUNC(getIcon);
private _iconIfv   = "iconAPC" call FUNC(getIcon);
private _iconCrate = "iconCrateWpns" call FUNC(getIcon);
private _iconMedic = "\z\ACE\addons\medical_gui\ui\cross.paa" call FUNC(getIcon);


private _mainCategory = "";
if (_aceCategory == "ACE_SelfActions") then {
    [_object, "cScripts_Loadout_Cat_MainStage", "Staging Zone Loadouts", _icon, [_aceCategory], { call FUNC(checkStagingZone) }] call FUNC(createActionCategory);
    _mainCategory = "cScripts_Loadout_Cat_MainStage";
} else {
    [_object, "cScripts_Loadout_Cat_Main", "Loadouts", _icon, [_aceCategory]] call FUNC(createActionCategory);
    _mainCategory = "cScripts_Loadout_Cat_Main";
};

[_object, "cScripts_Loadout_Cat_Alpha",                   "Alpha Co.", "",                [_aceCategory, _mainCategory]] call FUNC(createActionCategory);
[_object, "cScripts_Loadout_Cat_Alpha_Leadership",        "Leadership", _leadIcon,        [_aceCategory, _mainCategory, "cScripts_Loadout_Cat_Alpha"]] call FUNC(createActionCategory);
[_object, "cScripts_Loadout_Cat_Alpha_TACP",              "TACP", _leadIcon,              [_aceCategory, _mainCategory, "cScripts_Loadout_Cat_Alpha"]] call FUNC(createActionCategory);
[_object, "cScripts_Loadout_Cat_Alpha_FixedWing",         "Fixed Wing", _pilotIcon,       [_aceCategory, _mainCategory, "cScripts_Loadout_Cat_Alpha"]] call FUNC(createActionCategory);
[_object, "cScripts_Loadout_Cat_Alpha_Rotary",            "Rotary", _pilotIcon,           [_aceCategory, _mainCategory, "cScripts_Loadout_Cat_Alpha"]] call FUNC(createActionCategory);
[_object, "cScripts_Loadout_Cat_Bravo",                   "Bravo Co.", "",                [_aceCategory, _mainCategory]] call FUNC(createActionCategory);
[_object, "cScripts_Loadout_Cat_Bravo_Leadership",        "Leadership", _leadIcon,        [_aceCategory, _mainCategory]] call FUNC(createActionCategory);
[_object, "cScripts_Loadout_Cat_Bravo_Viking_Leadership", "Viking Leadership", _leadIcon, [_aceCategory, _mainCategory, "cScripts_Loadout_Cat_Bravo"]] call FUNC(createActionCategory);
[_object, "cScripts_Loadout_Cat_Bravo_Viking_Squad",      "Viking Squad", _squadIcon,     [_aceCategory, _mainCategory, "cScripts_Loadout_Cat_Bravo"]] call FUNC(createActionCategory);
[_object, "cScripts_Loadout_Cat_Bravo_Viking_Weapons",    "Viking Weapons", _speciIcon,   [_aceCategory, _mainCategory, "cScripts_Loadout_Cat_Bravo"]] call FUNC(createActionCategory);
[_object, "cScripts_Loadout_Cat_Bravo_Atlas",             "Atlas", _iconMedic,            [_aceCategory, _mainCategory, "cScripts_Loadout_Cat_Bravo"]] call FUNC(createActionCategory);
[_object, "cScripts_Loadout_Cat_Bravo_Tank",              "Tank", _iconTank,              [_aceCategory, _mainCategory, "cScripts_Loadout_Cat_Bravo"]] call FUNC(createActionCategory);
[_object, "cScripts_Loadout_Cat_Bravo_IFV",               "IFV", _iconIfv,                [_aceCategory, _mainCategory, "cScripts_Loadout_Cat_Bravo"]] call FUNC(createActionCategory);
[_object, "cScripts_Loadout_Cat_Bravo_Weapons",           "Weapons", _squadIcon,          [_aceCategory, _mainCategory, "cScripts_Loadout_Cat_Bravo"]] call FUNC(createActionCategory);
[_object, "cScripts_Loadout_Cat_Bravo_Special",           "Special", _speciIcon,          [_aceCategory, _mainCategory, "cScripts_Loadout_Cat_Bravo"]] call FUNC(createActionCategory);
[_object, "cScripts_Loadout_Cat_Charlie",                 "Charlie Co.", "",              [_aceCategory, _mainCategory]] call FUNC(createActionCategory);
[_object, "cScripts_Loadout_Cat_Charlie_Leadership",      "Leadership", _leadIcon,        [_aceCategory, _mainCategory, "cScripts_Loadout_Cat_Charlie"]] call FUNC(createActionCategory);
[_object, "cScripts_Loadout_Cat_Charlie_Squad",           "Squad", _squadIcon,            [_aceCategory, _mainCategory, "cScripts_Loadout_Cat_Charlie"]] call FUNC(createActionCategory);
[_object, "cScripts_Loadout_Cat_Charlie_Bandit_Squad",    "Bandit Squad", _squadIcon,     [_aceCategory, _mainCategory, "cScripts_Loadout_Cat_Charlie"]] call FUNC(createActionCategory);
[_object, "cScripts_Loadout_Cat_Charlie_Misfit_Squad",    "Misfit Squad", _squadIcon,     [_aceCategory, _mainCategory, "cScripts_Loadout_Cat_Charlie"]] call FUNC(createActionCategory);
[_object, "cScripts_Loadout_Cat_Charlie_Weapons",         "Weapons", _speciIcon,          [_aceCategory, _mainCategory, "cScripts_Loadout_Cat_Charlie"]] call FUNC(createActionCategory);
[_object, "cScripts_Loadout_Cat_Charlie_Special",         "Special", _speciIcon,          [_aceCategory, _mainCategory, "cScripts_Loadout_Cat_Charlie"]] call FUNC(createActionCategory);

[_object, "cScripts_Loadout_Cat_Training",                "Training", "",                 [_aceCategory, _mainCategory]] call FUNC(createActionCategory);

[_object, "cScripts_Loadout_Cat_Other",                   "Other", "",                    [_aceCategory, _mainCategory]] call FUNC(createActionCategory);
[_object, "cScripts_Loadout_Cat_Other_Russian",           "Russian", "",                  [_aceCategory, _mainCategory]] call FUNC(createActionCategory);
[_object, "cScripts_Loadout_Cat_Other_Insurgent",         "Insurgent", "",                [_aceCategory, _mainCategory]] call FUNC(createActionCategory);

_mainCategory