#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function export a given company or a classname loadout. Primarly used for the Cav Arsenal function.
 * The function retun a array or strings as well as clipboard export.
 *
 * Arguments:
 * 0: Company <STRING>    ["cfgLoadoutsClassname","alpha","bravo","charlie"]
 *
 * Return Value:
 * Equipment <ARRAY of STRINGS>
 *
 * Example:
 * ["charlie"] call cScripts_fnc_exportLoadoutContentToArsenal
 *
 * Public: Yes
 */

params[["_loadout","",[""]]];

if !(isServer) exitWith {};
if (_loadout == "") exitWith {};

_loadout = toUpper(_loadout);

private _return = [];
private _exportList = [];

private _weaponsList = [];
private _magazinesList = [];
private _itemsList = [];
private _gearList = [];
private _backpacksList = [];

private _br = toString[13,10];

_companyList = ["ALPHA","BRAVO","CHARLIE"];

// Get specified loadout
if !(_loadout in _companyList) then {
    private _typeOfExport = _loadout;

    private _weaponsP = getArray (getMissionConfig "CfgLoadouts" >> _loadout >> "primary");
    _weaponsList append _weaponsP;
    private _weaponsS = getArray (getMissionConfig "CfgLoadouts" >> _loadout >> "secondary");
    _weaponsList append _weaponsS;
    private _weaponsL = getArray (getMissionConfig "CfgLoadouts" >> _loadout >> "launcher");
    _weaponsList append _weaponsL;

    _weaponsList = _weaponsList arrayIntersect _weaponsList;
    _exportList append _weaponsList;


    private _magazines = getArray (getMissionConfig "CfgLoadouts" >> _loadout >> "magazines");
    _magazinesList append _magazines;

    _magazinesList = _magazinesList arrayIntersect _magazinesList;
    _exportList append _magazinesList;


    private _items = getArray (getMissionConfig "CfgLoadouts" >> _loadout >> "items");
    _itemsList append _items;
    private _items = getArray (getMissionConfig "CfgLoadouts" >> _loadout >> "binoculars");
    _itemsList append _items;
    private _items = getArray (getMissionConfig "CfgLoadouts" >> _loadout >> "ItemCompass");
    _itemsList append _items;
    private _items = getArray (getMissionConfig "CfgLoadouts" >> _loadout >> "gps");
    _itemsList append _items;
    private _items = getArray (getMissionConfig "CfgLoadouts" >> _loadout >> "map");
    _itemsList append _items;
    private _items = getArray (getMissionConfig "CfgLoadouts" >> _loadout >> "watch");
    _itemsList append _items;

    _itemsList = _itemsList arrayIntersect _itemsList;
    _exportList append _itemsList;


    private _gear = getArray (getMissionConfig "CfgLoadouts" >> _loadout >> "nvgs");
    _gearList append _gear;
    private _gear = getArray (getMissionConfig "CfgLoadouts" >> _loadout >> "headgear");
    _gearList append _gear;
    private _gear = getArray (getMissionConfig "CfgLoadouts" >> _loadout >> "goggles");
    _gearList append _gear;
    private _gear = getArray (getMissionConfig "CfgLoadouts" >> _loadout >> "uniform");
    _gearList append _gear;
    private _gear = getArray (getMissionConfig "CfgLoadouts" >> _loadout >> "vest");
    _gearList append _gear;

    _gearList = _gearList arrayIntersect _gearList;
    _exportList append _gearList;


    private _backpacks = getArray (getMissionConfig "CfgLoadouts" >> _loadout >> "backpack");
    _backpacksList append _backpacks;

    _backpacksList = _backpacksList arrayIntersect _backpacksList;
    _exportList append _backpacksList;
};

// Get all loadouts from given company based on cfgLoadouts
if (_loadout in _companyList) then {
    private _typeOfExport = _loadout;
    private _company = [];
    private _companyName = "";

    switch (_loadout) do {
        case "ALPHA": {_companyName = "Cav_B_Alpha_base_F"};
        case "BRAVO": {_companyName = "Cav_B_Bravo_base_F"};
        case "CHARLIE": {_companyName = "Cav_B_Charlie_base_F"};
        default {_companyName = "CommonBlufor"};
    };

    // Get all classnames inherited from company name
    private _company_raw = QUOTE(inheritsFrom _x == (missionConfigFile >> 'CfgLoadouts' >> _companyName)) configClasses (missionConfigFile >> "CfgLoadouts");
    {
        private _class = configName _x;
        _class = configName (missionConfigFile >> 'CfgLoadouts' >> _class);
        _company append [_class];
    } forEach _company_raw;

    // Sort all loadout objects
    {
        private _weaponsP = getArray (getMissionConfig "CfgLoadouts" >> _x >> "primary");
        _weaponsList append _weaponsP;
        private _weaponsS = getArray (getMissionConfig "CfgLoadouts" >> _x >> "secondary");
        _weaponsList append _weaponsS;
        private _weaponsL = getArray (getMissionConfig "CfgLoadouts" >> _x >> "launcher");
        _weaponsList append _weaponsL;

        _weaponsList = _weaponsList arrayIntersect _weaponsList;
        _exportList append _weaponsList;


        private _binoculars = getArray (getMissionConfig "CfgLoadouts" >> _x >> "binoculars");
        _binocularsList append _binoculars;

        _binocularsList = _binocularsList arrayIntersect _binocularsList;
        _exportList append _binocularsList;


        private _magazines = getArray (getMissionConfig "CfgLoadouts" >> _x >> "magazines");
        _magazinesList append _magazines;

        _magazinesList = _magazinesList arrayIntersect _magazinesList;
        _exportList append _magazinesList;


        private _items = getArray (getMissionConfig "CfgLoadouts" >> _x >> "items");
        _itemsList append _items;
        private _items = getArray (getMissionConfig "CfgLoadouts" >> _x >> "ItemCompass");
        _itemsList append _items;
        private _items = getArray (getMissionConfig "CfgLoadouts" >> _x >> "gps");
        _itemsList append _items;
        private _items = getArray (getMissionConfig "CfgLoadouts" >> _x >> "map");
        _itemsList append _items;
        private _items = getArray (getMissionConfig "CfgLoadouts" >> _x >> "watch");
        _itemsList append _items;

        _itemsList = _itemsList arrayIntersect _itemsList;
        _exportList append _itemsList;


        private _gear = getArray (getMissionConfig "CfgLoadouts" >> _x >> "nvgs");
        _gearList append _gear;
        private _gear = getArray (getMissionConfig "CfgLoadouts" >> _x >> "headgear");
        _gearList append _gear;
        private _gear = getArray (getMissionConfig "CfgLoadouts" >> _x >> "goggles");
        _gearList append _gear;
        private _gear = getArray (getMissionConfig "CfgLoadouts" >> _x >> "uniform");
        _gearList append _gear;
        private _gear = getArray (getMissionConfig "CfgLoadouts" >> _x >> "vest");
        _gearList append _gear;

        _gearList = _gearList arrayIntersect _gearList;
        _exportList append _gearList;


        private _backpacks = getArray (getMissionConfig "CfgLoadouts" >> _x >> "backpack");
        _backpacksList append _backpacks;

        _backpacksList = _backpacksList arrayIntersect _backpacksList;
        _exportList append _backpacksList;

    } forEach _company;
};

// Remove duplicate
_exportList = _exportList arrayIntersect _exportList;

// Remove empty
{ _weaponsList deleteAt (_weaponsList find _x) } forEach [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,""];
{ _binocularsList deleteAt (_binocularsList find _x) } forEach [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,""];
{ _magazinesList deleteAt (_magazinesList find _x) } forEach [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,""];
{ _itemsList deleteAt (_itemsList find _x) } forEach [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,""];
{ _gearList deleteAt (_gearList find _x) } forEach [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,""];
{ _backpacksList deleteAt (_backpacksList find _x) } forEach [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,""];

private _weaponsString = format["// %1 Loadout Weapons Export", _loadout] + _br + str _weaponsList + "," + _br;
private _binocularsString = format["// %1 Loadout Binocular Export", _loadout] + _br + str _binocularsList + "," + _br;
private _magazinesString = format["// %1 Loadout Magazines Export", _loadout] + _br + str _magazinesList + "," + _br;
private _itemsString = format["// %1 Loadout Items Export", _loadout] + _br + str _itemsList + "," + _br;
private _gearString = format["// %1 Loadout Gear Export", _loadout] + _br + str _gearList + "," + _br;
private _backpacksString = format["// %1 Loadout Backpacks Export", _loadout] + _br + str _backpacksList + _br;

private _export = _weaponsString + _magazinesString + _itemsString + _gearString + _backpacksString;
_export = _export splitString "[]" joinString "";

_return = _exportList;

["Exported!", "", nil, player, 2] call ace_common_fnc_displayTextPicture;

copyToClipboard _export;
_return;
