#include "..\script_component.hpp"
/*
 * Author: CPL.Brostrom.A
 * This function return true or false if the tag is a equipmentTag or not
 *
 * Arguments:
 * 0: Tag <STRING>
 *
 * Return Value:
 * True/False <BOOLEAN>
 *
 * Example:
 * call cScripts_fnc_gear_isTag
 *
 */

params [["_item","",[]]];

private _cfgMagazines = getText (configFile >> 'CfgMagazines' >> _item >> 'displayName');
private _cfgWeapons = getText (configFile >> 'CfgWeapons' >> _item >> 'displayName');
private _cfgVehicles = getText (configFile >> 'CfgVehicles' >> _item >> 'displayName');
private _cfgEquipmentTags = isArray (missionConfigFile >> "CfgEquipmentTags" >> _item);

if (_cfgMagazines != "") exitWith {false};
if (_cfgWeapons != "") exitWith {false};
if (_cfgVehicles != "") exitWith {false};

if (_cfgEquipmentTags) exitWith {true};

false