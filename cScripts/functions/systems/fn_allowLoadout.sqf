#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function return true if you allow to take a loadout.
 *
 * Arguments:
 * 0: Required company <STRING>
 *
 * Return Value:
 * True or False <ANY>
 *
 * Example:
 * ["key"] call cScripts_fnc_allowLoadout;
 *
 * Public: No
 */

params ["_company", "_platoon"];

_company = toLower _company;

// If you dont have a company don't show any.
if (_company == "") exitWith {false};

// There are 4 platoons in a company. 0 is for if there is no difference between the companies.
if (_platoon < 0 || _platoon > 4) exitWith {false};


// Show all loadouts
if (EGVAR(Settings,showAllLoadouts)) exitWith {true};
if (EGVAR(Staging,showAllLoadouts)) exitWith {true};


// Check if player is Zeus or Debug
if (call EFUNC(player,isCurator)) exitWith {true};

// Check if does not have any company
private _playerCompany = call EFUNC(player,getCompany);
if (_playerCompany == "") exitWith {false};

if (_playerCompany == _company) exitWith {true};

false