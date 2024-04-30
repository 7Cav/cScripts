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

if !(isClass (missionConfigFile >> "CfgEquipmentTags")) exitWith {
    SHOW_ERROR("Gear","cfgEquipmentTag config does not exist");
    [];
};
if (_tag isEqualTo "") exitWith {[]};

private _fn_getTagItemsList = {
    params [["_tag","",[]]];
    private _equipmentTag = getArray (missionConfigFile >> "CfgEquipmentTags" >> _tag);
    _equipmentTag;
};

private _tagItemList = [_tag] call _fn_getTagItemsList;
INFO_2("EquipmentTag","Handling List: '%1': %2",_tag,_tagItemList);

private _usedTagList = [];
private _itemList = [];
{
    if (_forEachIndex > 900) then {
        SHOW_ERROR("EquipmentTag","Infinet loop detected stopping loop!");
        break;
    };
    if (_x in _usedTagList) then {
        WARNING_1("EquipmentTag","Tag collection '%1' is item already handled skipping.",_x);
        continue;
    };
    
    INFO_1("EquipmentTag","Adding item: %1",_x);

    if ([_x] call EFUNC(gear,isTag)) then {
        INFO_1("EquipmentTag","Item: %1 is tag",_x);
        _tagItemList append ([_x] call _fn_getTagItemsList);
        _usedTagList append [_x];
        continue;
    };
    if (_x in _itemList) exitWith {
        WARNING_1("EquipmentTag","Item '%1' is item already in itemlist.",_x);
        continue;
    };
    _itemList append [_x];
} forEach _tagItemList;

_itemList;