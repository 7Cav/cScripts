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

private _fn_getTagItemsList = {
    params [["_tag","",[]]];
    private _equipmentTag = getArray (missionConfigFile >> "CfgEquipmentTags" >> _tag);
    _equipmentTag;
};

private _tagItemList = [_tag] call _fn_getTagItemsList;
INFO_1("EquipmentTag","Tag List: %1", _tagItemList);

private _itemList = [];
{
    if (_forEachIndex > 100) then {
        ERROR("EquipmentTag","Infinet loop detected stopping loop!");
        break;
    };

    LOG_1("DEBUG_TAG","Adding item: %1",_x);

    if ([_x] call EFUNC(gear,isTag)) then {
        LOG_1("DEBUG_TAG","Item: %1 is tag",_x);
        _tagItemList append ([_x] call _fn_getTagItemsList);
        continue
    };
    if (_x in _itemList) exitWith {
        WARNING_1("EquipmentTag","Item '%1' is item already in itemlist.",_x);
        continue
    };
    _itemList append [_x];
} forEach _tagItemList;

_itemList;