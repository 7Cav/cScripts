#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function return your company
 *
 * Arguments:
 * None
 *
 * Return Value:
 * CompanyName <STRING>
 *
 * Example:
 * call cScripts_fnc_player_getLoadoutCompany;
 *
 * Public: No
 */

//FIXME: Mabe not have afterall?
params [["_loadout","",[]]];

private _config = missionConfigFile >> "CfgLoadouts" >> _loadout;
private _company = getArray (_config >> "company");

_company;
