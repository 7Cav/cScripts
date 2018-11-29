#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function is used used to export a companies loadouts to be used in the Cav Arsenal function.
 * The function also retun a array or strings as well as clipboard export.
 *
 * Arguments:
 * 0: Company <STRING>    ["cfgLoadoutsClassname","alpha","bravo","charlie","heavyweapons","ranger","medical","full"]
 *
 * Return Value:
 * Equipment <ARRAY of STRINGS>
 *
 * Example:
 * ["charlie"] call cScripts_fnc_exportLoadoutsToArsenal
 *
 * Public: Yes
 */

params[["_loadout","",[""]]];

if !(isServer) exitWith {};
if (_loadout == "") exitWith {};

private _return = [];
private _exportList = [];

private _weaponsList = [];
private _magazinesList = [];
private _itemsList = [];
private _gearList = [];
private _backpacksList = [];

private _br = toString[13,10];

_companyList = ["alpha","bravo","charlie","heavyweapons","medical","ranger","sniper"];

if !(_loadout in _companyList) then {
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

if (_loadout in _companyList) then {
    private _company = [];
    private _companyAl = ["CAV_Alpha_Helo_PILOT","CAV_Alpha_Helo_COPILOT","CAV_Alpha_Helo_CHIEF","CAV_Alpha_Helo_GNR","CAV_Alpha_Helo_PILOT_ATT","CAV_Alpha_Helo_COPILOT_ATT","CAV_Alpha_Fixed_PILOT"];
    private _companyBr = ["CAV_Bravo_OFFCR","CAV_Bravo_Crew_CDR","CAV_Bravo_Crew_GNR","CAV_Bravo_Crew_CREW","CAV_Bravo_SL","CAV_Bravo_TL","CAV_Bravo_AR","CAV_Bravo_GR","CAV_Bravo_RM","CAV_Bravo_CLS","CAV_Bravo_Weapons_TL","CAV_Bravo_Weapons_MG","CAV_Bravo_Weapons_GNR"];
    private _companyCh = ["CAV_Charlie_OFFCR","CAV_Charlie_JFO","CAV_Charlie_SL","CAV_Charlie_TL","CAV_Charlie_AR","CAV_Charlie_GR","CAV_Charlie_RM","CAV_Charlie_CLS","CAV_Charlie_Weapons_SL","CAV_Charlie_Weapons_TL","CAV_Charlie_Weapons_AR","CAV_Charlie_Weapons_GR","CAV_Charlie_Weapons_RM","CAV_Charlie_Weapons_CLS"];
    private _companyWe = ["CAV_Bravo_Weapons_TL","CAV_Bravo_Weapons_MG","CAV_Bravo_Weapons_GNR","CAV_Charlie_Weapons_SL","CAV_Charlie_Weapons_TL","CAV_Charlie_Weapons_AR","CAV_Charlie_Weapons_GR","CAV_Charlie_Weapons_RM","CAV_Charlie_Weapons_CLS"];
    private _companyMe = ["CAV_Medical_OFFCR","CAV_Medical_PLMEDIC","CAV_Medical_BONESAW"];
    private _companyRa = ["CAV_Ranger_OIC","CAV_Ranger_2IC","CAV_Ranger_TL","CAV_Ranger_AR","CAV_Ranger_GR","CAV_Ranger_RM","CAV_Ranger_MEDIC"];
    private _companySn = ["CAV_Sniper", "CAV_Spotter"];

    switch (_loadout) do {
        case "alpha": {_company = _companyAl};
        case "bravo": {_company = _companyBr};
        case "charlie": {_company = _companyCh};
        case "heavyweapons": {_company = _companyWe};
        case "medical": {_company = _companyMe};
        case "ranger": {_company = _companyRa};
        case "sniper": {_company = _companySn};
    };

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

_exportList = _exportList arrayIntersect _exportList;

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
