#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function export objects to clipboard from a given object. Primarly used for the Cav Arsenal function.
 * The function retun a array or strings as well as clipboard export.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Return Value:
 * Equipment <ARRAY of STRINGS>
 *
 * Example:
 * [cursorTarget] call cScripts_fnc_exportContainerToArsenal
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
_exportList append _weapons;

private _magazines = getMagazineCargo _object;
_magazines = _magazines select 0;
_exportList append _magazines;

private _items = getItemCargo _object;
_items = _items select 0;
_exportList append _items;

private _backpacks = getBackpackCargo _object;
_backpacks = _backpacks select 0;
_exportList append _backpacks;

_return = _exportList;

private _weaponsString = "// Crate Weapons Export" + _br + str _weapons + "," + _br;
private _magazinesString = "// Crate Magazines Export" + _br + str _magazines + "," + _br;
private _itemsString = "// Crate Items Export" + _br + str _items + "," + _br;
private _backpacksString = "// Crate Backpacks Export" + _br + str _backpacks + _br;

private _export = _weaponsString + _magazinesString + _itemsString + _backpacksString;
_export = _export splitString "[]" joinString "";

["Exported!", "", nil, player, 2] call ace_common_fnc_displayTextPicture;

copyToClipboard _export;
_return;