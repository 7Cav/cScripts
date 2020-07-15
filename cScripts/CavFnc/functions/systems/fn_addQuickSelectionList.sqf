#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function contain quick selection buttons and categorys via the arsenal menu.
 * The crates can be filterd via squad, platoon or just ignore filters and write "all".
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Selection type <SIZE> ["none","all","officer","alpha","bravo","charlie"]
 * 2: Require correct company to select loadout. <BOOL> (default: true)
 *
 * Example:
 * [this] call cScripts_fnc_initQuickSelections;
 * [this,"full",true] call cScripts_fnc_initQuickSelections;
 */
params [
    ["_object", objNull, [objNull]],
    ["_companySelectorType", "NONE"],
    ["_allowOnlyForCompany", true],
    ["_aceCategory", ["ACE_MainActions"], [["ACE_MainActions"]]]
];

// Set upper case
_companySelector = toUpper(_companySelectorType);

if (_companySelector == "" OR _companySelector == "NONE") exitWith {};

#ifdef DEBUG_MODE
    [format["Setting up %1 loadouts selecton list on %2...", _companySelector, _object], "Quick Selection"] call FUNC(logInfo);
#endif

// Define the icon to be used
private _catIcon = if (isPlayer _object) then {"cScripts\Data\Icon\icon_00.paa"} else {"cScripts\Data\Icon\icon_01.paa"};
private _icon = "cScripts\Data\Icon\icon_01.paa";

// Create the main selection menu
private _defaultCategory = _aceCategory + ["cScriptQuickSelectionMenu"];
private _lable = if (isPlayer _object) then {"Quick Loadout Selection"} else {"Quick Selection"};
[_object, "cScriptQuickSelectionMenu", _lable, _catIcon, _aceCategory] call FUNC(addAceCategory);

// Create categories
private _officer = ["OFFICER"];
private _alpha   = ["ALPHA", "BUFFALO", "TITAN", "RAIDER", "SPARROW"];
private _bravo   = ["BRAVO", "LANCER", "VIKING", "SABER", "BANSHEE", "ATLAS"];
private _charlie = ["CHARLIE", "BANDIT", "MISFIT"];

if !(_companySelector in (["NONE", "FULL", "ALL"] + _officer + _alpha + _bravo + _charlie)) exitWith {
    [formatText["%1 is using a unsupported cartegory '%2'.", _object, _companySelector],"Quick Selection",true] call FUNC(logError);
};

// Full selector handler
private _alwaysAvalible = if (_companySelector == 'FULL' or _companySelector == 'ALL') then {true} else {false};

// Loadouts
if (_companySelector in _officer or _alwaysAvalible) then {
    private _officerCategory = _defaultCategory + ["cScriptQuickSelection_Officer"];
    [_object, "cScriptQuickSelection_Officer", "Officer", _icon, _defaultCategory] call FUNC(addAceCategory);

    [_object, "Officer", _allowOnlyForCompany, _officerCategory] call FUNC(setupQuickSelections);
};

if (_companySelector in _alpha or _alwaysAvalible) then {
    private _alphaCategory = _defaultCategory + ["cScriptQuickSelection_Alpha"];
    [_object, "cScriptQuickSelection_Alpha", "Alpha", _icon, _alphaCategory] call FUNC(addAceCategory);

    [_object, "Alpha", _allowOnlyForCompany, _defaultCategory] call FUNC(setupQuickSelections);
};

if (_companySelector in _bravo or _alwaysAvalible) then {
    private _bravoCategory = _defaultCategory + ["cScriptQuickSelection_Bravo"];
    [_object, "cScriptQuickSelection_Bravo", "Bravo", _icon, _defaultCategory] call FUNC(addAceCategory);
    [_object, "cScriptQuickSelection_Bravo_Atlas", "Atlas", _icon, _bravoCategory] call FUNC(addAceCategory);
    [_object, "cScriptQuickSelection_Bravo_Atlas_Logistics", "Atlas (Logistics)", _icon, _bravoCategory] call FUNC(addAceCategory);
    [_object, "cScriptQuickSelection_Bravo_Atlas_Medical", "Atlas (Medical)", _icon, _bravoCategory] call FUNC(addAceCategory);
    [_object, "cScriptQuickSelection_Bravo_Viking", "Viking", _icon, _bravoCategory] call FUNC(addAceCategory);
    [_object, "cScriptQuickSelection_Bravo_Viking_Lead", "Viking (Lead)", _icon, _bravoCategory] call FUNC(addAceCategory);
    [_object, "cScriptQuickSelection_Bravo_Viking_Crew", "Viking (Crew)", _icon, _bravoCategory] call FUNC(addAceCategory);
    [_object, "cScriptQuickSelection_Bravo_Lancer", "Lancer", _icon, _bravoCategory] call FUNC(addAceCategory);
    [_object, "cScriptQuickSelection_Bravo_Saber", "Saber", _icon, _bravoCategory] call FUNC(addAceCategory);
    [_object, "cScriptQuickSelection_Bravo_IFV", "IFV", _icon, _bravoCategory] call FUNC(addAceCategory);

    [_object, "Bravo", _allowOnlyForCompany, _defaultCategory] call FUNC(setupQuickSelections);
};

// Charlie Loadouts
if (_companySelector in _charlie or _alwaysAvalible) then {
    private _charlieCategory = _defaultCategory + ["cScriptQuickSelection_Charlie"];
    [_object, "cScriptQuickSelection_Charlie", "Charlie", _icon, _defaultCategory] call FUNC(addAceCategory);
    [_object, "cScriptQuickSelection_Charlie_Lead", "Leadership", _icon, _charlieCategory] call FUNC(addAceCategory);
    [_object, "cScriptQuickSelection_Charlie_Squad", "Squad", _icon, _charlieCategory] call FUNC(addAceCategory);
    [_object, "cScriptQuickSelection_Charlie_MMGTeam", "MMG Team", _icon, _charlieCategory] call FUNC(addAceCategory);
    [_object, "cScriptQuickSelection_Charlie_ATTeam", "MAAWS Team", _icon, _charlieCategory] call FUNC(addAceCategory);
    [_object, "cScriptQuickSelection_Charlie_AATeam", "Stinger Team", _icon, _charlieCategory] call FUNC(addAceCategory);
    [_object, "cScriptQuickSelection_Charlie_JavelinTeam", "Javelin Team", _icon, _charlieCategory] call FUNC(addAceCategory);
    [_object, "cScriptQuickSelection_Charlie_MortarTeam", "Mortar Team", _icon, _charlieCategory] call FUNC(addAceCategory);
    
    [_object, "Charlie", _allowOnlyForCompany, _defaultCategory] call FUNC(setupQuickSelections);
};

#ifdef DEBUG_MODE
    [format["Setup of %1 loadouts selecton list on %2 is completed.", _companySelector, _object], "Quick Selection"] call FUNC(logInfo);
#endif
