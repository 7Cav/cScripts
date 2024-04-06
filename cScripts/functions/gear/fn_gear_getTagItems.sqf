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
 * call cScripts_fnc_gear_getTagItems
 *
 */

params [["_tag","",[""]]];

if (_tag isEqualTo "") exitWith {[]};

private _fn_getTagItemsList = {
    params [["_tag","",[]]];
    private _equipmentTag = getArray (missionConfigFile >> "CfgEquipmentTags" >> _tag);
    _equipmentTag
}

private _equipmentTagObjects = [_tag] call _fn_getTagItemsList;

private _itemList = [];
{
    if (call EFUNC(gear,isTag)) then {
        _equipmentTagObjects append [_x];
        continue
    };
    if ([_x] call FUNC(checkItemValidity)) then {
        _itemList append [_x];
        continue
    };
    if (count _equipmentTagObjects >= 100) then {
        SHOW_CHAT_WARNING_1("equipmentTag", "Infinit loop suspected for %1 exiting item list creation!", _tag);
        break;
    }
} forEach _equipmentTagObjects;

_equipmentTag;