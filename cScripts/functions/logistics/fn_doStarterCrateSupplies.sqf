#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function adds equipment to a given item baserd on company type.
 *
 * Arguments:
 * 0: Crate <OBJECT>
 * 1: Set company type. <STRING> ["none","alpha","bravo","charlie","medical","full"]
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [this] call cScripts_fnc_doStarterCrateSupplies;
 * [this,"none"] call cScripts_fnc_doStarterCrateSupplies;
 *
 */

params [
    ["_crate", objNull, [objNull]],
    ["_companySelector", "NONE"]
];

if (!isServer) exitWith {};

// Set upper case
_companySelector = toUpper(_companySelector);

// Create categories
private _officer = ["OFFICER"];
private _alpha   = ["ALPHA", "BUFFALO", "TITAN", "RAIDER", "SPARROW"];
private _bravo   = ["BRAVO", "LANCER", "VIKING", "SABER", "BANSHEE", "ATLAS"];
private _charlie = ["CHARLIE", "BANDIT", "MISFIT"];

if !(_companySelector in (["NONE", "FULL", "ALL"] + _officer + _alpha + _bravo + _charlie)) exitWith {
    ERROR_2("StarterCrate", "%1 (Starter Crate Supplies) is using a unsupported cartegory '%2'.", _crate, _companySelector);
};

INFO_3("StarterCrate", "Applying %1 items to %2 (%3)", _companySelector, _crate, typeOf _crate);

private _container = switch (_companySelector) do {
    case "BUFFALO";
    case "TITAN";
    case "RAIDER";
    case "SPARROW";
    case "ALPHA": {["alpha_company"] call EFUNC(logistics,getContainer);};

    case "ATLAS": {["bravo_company_atlas"] call EFUNC(logistics,getContainer);};
    case "SABER";
    case "VIKING";
    case "BRAVO": {["bravo_company_viking"] call EFUNC(logistics,getContainer);};

    case "BANDIT";
    case "MISFIT";
    case "CHARLIE": {["charlie_company"] call EFUNC(logistics,getContainer);};

    case "FULL";
    case "ALL": {
        private _fullContainer = [];
        {
            private _items = _x call EFUNC(logistics,getContainer);
            _fullContainer append _items;
        } forEach ["alpha_company", "bravo_company_atlas", "bravo_company_viking", "charlie_company"];
    };

    case "";
    case "NONE": {[]};
    default {[]};
};

[_crate, _container] call FUNC(addCargo);

true