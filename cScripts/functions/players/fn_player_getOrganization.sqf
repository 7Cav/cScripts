#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function return your platoon and company
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Organization <ARRAY>
 *
 * Example:
 * call cScripts_fnc_player_getOrganization;
 *
 * Public: No
 */

private _loadout = [player] call EFUNC(gear,getLoadoutName);

private _config = missionConfigFile >> "CfgLoadouts" >> _loadout;

private _configPlatoon = getNumber (_config >> "platoon"); 
private _platoon = GETVAR(player,EGVAR(Player,Platoon),_configPlatoon);

private _configCompany = getText (_config >> "company"); 
private _company = GETVAR(player,EGVAR(Player,Company),_configCompany);
_company = toLower _company;

[_platoon, _company]