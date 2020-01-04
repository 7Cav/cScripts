#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function is used used to export objects to clipboard from a object to be used in the Cav Arsenal.
 * The function also retun a array or strings as well as clipboard export.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Return Value:
 * Equipment <ARRAY of STRINGS>
 *
 * Example:
 * [cursorTarget] call cScripts_fnc_exportBoxToArsenal
 *
 * Public: Yes
 */

params[["_object", objNull, [objNull]]];

if !(isServer) exitWith {};
if (isNull _object) exitWith {["No object to export from detected!", "", nil, player, 2] call ace_common_fnc_displayTextPicture;};

private _return = [];
private _exportList = [];
private _br = toString[13,10];


private _weapons = getWeaponCargo _object;
_weapons = _weapons select 0;
private _weaponNames = [];
{
	_weaponName = getText (configfile >> "CfgWeapons" >> _x >> "displayName");
	_weaponNames append [_weaponName];
} forEach _weapons;
_exportList append _weaponNames;


private _magazines = getMagazineCargo _object;
_magazines = _magazines select 0;
private _magazineNames = [];
{
	_magazineName = getText (configfile >> "CfgMagazines" >> _x >> "displayName");
	_magazineNames append [_magazineName];
} forEach _magazines;
_exportList append _magazineNames;


private _items = getItemCargo _object;
_items = _items select 0;
private _itemNames = [];
{
	_itemName = getText (configfile >> "CfgWeapons" >> _x >> "displayName");
	_itemNames append [_itemName];
} forEach _items;
_exportList append _itemNames;


private _backpacks = getBackpackCargo _object;
_backpacks = _backpacks select 0;
private _backpackNames = [];
{
	_backpackName = getText (configfile >> "CfgWeapons" >> _x >> "displayName");
	_backpackNames append [_backpackName];
} forEach _backpacks;
_exportList append _backpackNames;


_return = _exportList;

private _weaponsString = _br + "## Weapons" + _br + str _weaponNames + _br;
private _magazinesString = _br + "## Magazines" + _br + str _magazineNames + _br;
private _itemsString = _br + "## Items" + _br + str _items + _br;
private _backpacksString = _br + "## Backpacks" + _br + str _backpackNames + _br;

private _export = _weaponsString + _magazinesString + _itemsString + _backpacksString;
_export = _export splitString "[]" joinString "";
_export = _export splitString '"' joinString "    ";
_export = _export splitString "," joinString _br;

["Exported!", "", nil, player, 2] call ace_common_fnc_displayTextPicture;

copyToClipboard _export;
_return;
