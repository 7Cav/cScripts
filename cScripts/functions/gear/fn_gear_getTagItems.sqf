#define DEBUG_MODE
#include "..\script_component.hpp"
/*
 * Author: CPL.Brostrom.A
 * This function return given equipment tag items.
 *
 * Arguments:
 * 0: Loadout <STRING>
 *
 * Return Value:
 * Tags <ARRAY>
 *
 * Example:
 * ["CommonDefault"] call cScripts_fnc_gear_getTagItems
 * ["CommonBluforCompanyAlpha"] call cScripts_fnc_gear_getTagItems
 *
 */

params [["_tag","",[""]]];

if (_tag isEqualTo "") exitWith {[]};
INFO_1("EquipmentTag","Adding '%1' to whitelist", _tag);

private _fn_getTagItemsList = {
    params [["_tag","",[]]];
    private _equipmentTag = getArray (missionConfigFile >> "CfgEquipmentTags" >> _tag);
    _equipmentTag;
};

EGVAR(gear,arsenalWhitelistAddedTags) append [_tag];

private _equipmentTagObjects = [_tag] call _fn_getTagItemsList;

private _itemList = [];
{
    INFO_1("EquipmentTag","Checking and adding item %1", _x);
    //FIXME: remove this check when we are stable
    if (_forEachIndex > 100) then {
        ERROR("EquipmentTag","Infinet loop detected stopping loop!");
        break;
    };
    if (_x in EGVAR(gear,arsenalWhitelistAddedTags)) then { continue; };

    if ([_x] call EFUNC(gear,isTag)) then {
        // if items already obtained continue
        _equipmentTagObjects append [_x];
        EGVAR(gear,arsenalWhitelistAddedTags) append [_x];
        continue;
    };
    if (_x in _itemList) exitWith {continue};
    if ([_x] call FUNC(checkItemValidity)) then {
        _itemList append [_x];
        continue;
    };
} forEach _equipmentTagObjects;

_itemList;