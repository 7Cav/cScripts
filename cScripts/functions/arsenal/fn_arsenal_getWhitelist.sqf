#define DEBUG_MODE;
#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A 
 * This function return a list of items used for arsenal
 *
 * Arguments:
 * None
 *
 * Return:
 * ARRAY of items
 *
 * Example:
 * call cScripts_fnc_arsenal_getWhitelist;
 */

waitUntil {!isNull player && player == player};

private _classname = [player] call EFUNC(gear,getLoadoutName);
if !(isClass (missionConfigFile >> "CfgLoadouts" >> _classname)) exitWith {
    SHOW_CHAT_WARNING_1("ArsenalWhitelist", "Loadout '%1' does not exist inside of mission config. No whitelist will be created.", _classname);
    [];
};

EGVAR(gear,arsenalWhitelistAddedTags) = [];

// Loadout Items
private _loadout = parseSimpleArray getText (missionConfigFile >> "CfgLoadouts" >> _classname >> "loadout");
private _loadoutSpecificItems = str _loadout splitString "[]," joinString ",";
_loadoutSpecificItems = parseSimpleArray ("[" + _loadoutSpecificItems + "]");
_loadoutSpecificItems = _loadoutSpecificItems arrayIntersect _loadoutSpecificItems select {_x isEqualType "" && {_x != ""}};

// Global items
private _anySideCommonItems = ["Common"] call EFUNC(gear,getTagItems);

// Side items
private _side = [side group player] call EFUNC(gear,getSideConfig);
LOG_1("DEBUG","Player side %1",_side);
private _commonSideItems = switch (_side) do {
    case "CommonBlufor":        { ["CommonBlufor"] call EFUNC(gear,getTagItems); };
    case "CommonOpfor":         { ["CommonOpfor"] call EFUNC(gear,getTagItems); };
    case "CommonIndependant":   { ["CommonIndependant"] call EFUNC(gear,getTagItems); };
    case "CommonCivilian":      { ["CommonCivilian"] call EFUNC(gear,getTagItems); };
    default                     { ["CommonDefault"] call EFUNC(gear,getTagItems); };
};

// Side company items
private _company = ([3] call EFUNC(player,getOrganization));
private _titleCompany = [_company] call CBA_fnc_capitalize;
private _companyItems = switch (_side) do {
    case "CommonBlufor":        { [format["CommonBluforCompany",_titleCompany]] call EFUNC(gear,getTagItems); };
    case "CommonOpfor":         { [format["CommonOpforCompany",_titleCompany]] call EFUNC(gear,getTagItems); };
    case "CommonIndependant":   { [format["CommonIndependantCompany",_titleCompany]] call EFUNC(gear,getTagItems); };
    case "CommonCivilian":      { [format["CommonCivilianCompany",_titleCompany]] call EFUNC(gear,getTagItems); };
    default                     { [format["CommonDefaultCompany",_titleCompany]] call EFUNC(gear,getTagItems); };
};

// Side company platoon items
private _companyPlatoon = ([2] call EFUNC(player,getOrganization));
private _companyPlatoonItems = switch (_side) do {
    case "CommonBlufor":        { [format["CommonBluforCompany%1%2",_titleCompany,_companyPlatoon]] call EFUNC(gear,getTagItems); };
    case "CommonOpfor":         { [format["CommonOpforCompany%1%2",_titleCompany,_companyPlatoon]] call EFUNC(gear,getTagItems); };
    case "CommonIndependant":   { [format["CommonIndependantCompany%1%2",_titleCompany,_companyPlatoon]] call EFUNC(gear,getTagItems); };
    case "CommonCivilian":      { [format["CommonCivilianCompany%1%2",_titleCompany,_companyPlatoon]] call EFUNC(gear,getTagItems); };
    default                     { ["CommonDefaultCompany"+_titleCompany+_companyPlatoon] call EFUNC(gear,getTagItems); };
};

// Add loadout equipmnet tag items
private _tagItems = [];
private _equipmentTags = call EGVAR(gear,getLoadoutTags);
{
    private _items = [_x] call EGVAR(gear,getTagItems);
    _tagItemsList append _items;
} forEach _equipmentTags;

// All equipmentTags
private _allEquipmentTags = configProperties [missionConfigFile >> "CfgEquipmentTags"];

// Weapon System Items
private _weaponSystemItems = [];
{
    private _weaponTagName = configName _x;
    private _classPrefix = [_weaponTagName, 0, 5] call BIS_fnc_trimString;
    if (_classPrefix != "class_") then {continue};

    private _classWeaponName = [_weaponTagName, 6] call BIS_fnc_trimString;
    private _primaryWeapon = if (!isNil{_loadout#0#0}) then {_loadout#0#0} else {""};
    private _handgunWeapon = if (!isNil{_loadout#2#0}) then {_loadout#2#0} else {""};
    private _launcherWeapon = if (!isNil{_loadout#1#0}) then {_loadout#1#0} else {""};
    
    if (_primaryWeapon isKindof [_classWeaponName, configFile >> 'CfgWeapons']) then {
        LOG_1("DEBUG","Adding %1 weapon system",_weaponTagName);
        _weaponSystemItems append ([_weaponTagName] call EFUNC(gear,getTagItems));
        continue
    };
    if (_handgunWeapon isKindof [_classWeaponName, configFile >> 'CfgWeapons']) then {
        _weaponSystemItems append ([_weaponTagName] call EFUNC(gear,getTagItems));
        continue
    };
    if (_launcherWeapon isKindof [_classWeaponName, configFile >> 'CfgWeapons']) then {
        _weaponSystemItems append ([_weaponTagName] call EFUNC(gear,getTagItems));
        continue
    };
} forEach _allEquipmentTags;
diag_log format ["cScripts DEBUG: Weapon System: %1", _weaponSystemItems];

private _whitelist = _loadoutSpecificItems + _commonSideItems + _companyItems + _companyPlatoonItems + _weaponSystemItems;


INFO_2("Arsenal", "Whitelist created for %1 [%2].",player,typeof player);

diag_log format["_loadoutSpecificItems: %1",_loadoutSpecificItems isEqualType []];
diag_log format["_commonSideItems: %1",_commonSideItems isEqualType []];
diag_log format["_companyItems: %1",_companyItems isEqualType []];
diag_log format["_companyPlatoonItems: %1",_companyPlatoonItems isEqualType []];
diag_log format["_weaponSystemItems: %1",_weaponSystemItems isEqualType []];
diag_log format["_whitelist: %1",_whitelist isEqualType []];

_whitelist
