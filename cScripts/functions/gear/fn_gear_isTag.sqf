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
 * ["ace_banana"] call cScripts_fnc_gear_isTag
 *
 */

params [["_item","",[]]];

private _cfgEquipmentTags = isArray (missionConfigFile >> "CfgEquipmentTags" >> _item);
if (_cfgEquipmentTags) exitWith {true};

false