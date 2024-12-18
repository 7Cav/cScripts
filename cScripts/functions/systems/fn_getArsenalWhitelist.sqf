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
 * call cScripts_fnc_getArsenalWhitelist;
 */

private _classname = [player] call EFUNC(gear,getLoadoutName);
if !(isClass (missionConfigFile >> "CfgLoadouts" >> _classname)) exitWith {
    SHOW_CHAT_WARNING_1("ArsenalWhitelist", "Loadout '%1' does not exist inside of mission config. No whitelist will be created.", _classname);
    [];
};

private _loadout = parseSimpleArray getText (missionConfigFile >> "CfgLoadouts" >> _classname >> "loadout");
private _unitItems = str _loadout splitString "[]," joinString ",";
_unitItems = parseSimpleArray ("[" + _unitItems + "]");
_unitItems = _unitItems arrayIntersect _unitItems select {_x isEqualType "" && {_x != ""}};


private _commonGear = GET_CONTAINER_KEYS("arsenal_common");


private _organization = call EFUNC(Player,getOrganization);
private _orgItems = switch (_organization#1) do {
    case "alpha": {
        GET_CONTAINER_KEYS("alpha_company");
    };
    case "bravo": {
        // Bravo has two platoons that have different requirements
        private _companyItems = GET_CONTAINER_KEYS("bravo_company");
        private _platoonItems = switch (_organization#0) do {
            case 1: {
                GET_CONTAINER_KEYS("bravo_company_atlas");
            };
            case 2: {
                GET_CONTAINER_KEYS("bravo_company_viking");
            };
            default {[]};
        };
        _companyItems + _platoonItems;
    };
    case "charlie": {
        GET_CONTAINER_KEYS("charlie_company");
    };
    default {GET_CONTAINER_KEYS("arsenal_company_fallback");};
};


private _roleSpecific = switch ([player] call EFUNC(gear,getLoadoutRole)) do {
    case "officer": {GET_CONTAINER_KEYS("arsenal_role_officer");};
    case "squadleader": {GET_CONTAINER_KEYS("arsenal_role_squadleader");};
    case "fireteamleader": {GET_CONTAINER_KEYS("arsenal_role_fireteamleader");};
    case "weapons": {GET_CONTAINER_KEYS("arsenal_role_weapons");};
    case "strykercrew": {GET_CONTAINER_KEYS("arsenal_role_strykercrew");};
    case "pilot";
    case "rotarypilot": {GET_CONTAINER_KEYS("arsenal_role_rotarypilot");};
    case "rotarycrew": {GET_CONTAINER_KEYS("arsenal_role_pilotcrew");};
    case "rotarycls": {
        private _rotaryRole = GET_CONTAINER_KEYS("arsenal_role_pilotcrew");
        private _clsRole = GET_CONTAINER_KEYS("arsenal_role_cls");
        _rotaryRole + _clsRole;
    };
    case "pilotfighter": {GET_CONTAINER_KEYS("arsenal_role_pilotfighter");};
    case "pilottransport": {GET_CONTAINER_KEYS("arsenal_role_pilottransport");};
    case "cls": {GET_CONTAINER_KEYS("arsenal_role_cls");};
    case "medic": {GET_CONTAINER_KEYS("arsenal_role_medic");};
    case "doctor": {GET_CONTAINER_KEYS("arsenal_role_doctor");};
    default {[]};
};


private _primaryWeapon = if (!isNil{_loadout#0#0}) then {_loadout#0#0} else {""};
private _primarySpecific = switch (true) do {
    case (_primaryWeapon isKindof ['rhs_weap_mk18_m320', configFile >> 'CfgWeapons']
            || _primaryWeapon isKindof ['rhs_weap_m16a4_carryhandle_M203', configFile >> 'CfgWeapons']
            || _primaryWeapon isKindof ['rhs_weap_m4a1_m320', configFile >> 'CfgWeapons']): {GET_CONTAINER_KEYS("arsenal_weap_ugl");};

    case (_primaryWeapon isKindof ['rhs_weap_m4a1', configFile >> 'CfgWeapons']
            || _primaryWeapon isKindof ['rhs_weap_m16a4', configFile >> 'CfgWeapons']): {GET_CONTAINER_KEYS("arsenal_weap_m4");};

    case (_primaryWeapon isKindof ['rhs_weap_sr25_ec', configFile >> 'CfgWeapons']): {GET_CONTAINER_KEYS("arsenal_weap_sr25");};

    case (_primaryWeapon isKindof ['rhs_weap_m240_base', configFile >> 'CfgWeapons']): {GET_CONTAINER_KEYS("arsenal_weap_m240");};

    case (_primaryWeapon isKindof ['rhs_weap_m249_pip', configFile >> 'CfgWeapons']
            || _primaryWeapon isKindof ['rhs_weap_m249_pip_L', configFile >> 'CfgWeapons']
            || _primaryWeapon isKindof ['rhs_weap_m249_pip_S', configFile >> 'CfgWeapons']): {GET_CONTAINER_KEYS("arsenal_weap_m249");};
    default {[]};
};

private _handgunWeapon = if (!isNil{_loadout#2#0}) then {_loadout#2#0} else {""};
private _handgunSpecific = switch (true) do {
    case (_handgunWeapon isKindOf ['rhs_weap_M320', configFile >> 'CfgWeapons']): {GET_CONTAINER_KEYS("arsenal_weap_ugl");};
    case (_handgunWeapon isKindOf ['rhsusf_weap_glock17g4', configFile >> 'CfgWeapons']
            || _handgunWeapon isKindOf ['UK3CB_P320_BLK', configFile >> 'CfgWeapons']
            || _handgunWeapon isKindOf ['UK3CB_P320_DES', configFile >> 'CfgWeapons']
            || _handgunWeapon isKindOf ['rhsusf_weap_m1911a1', configFile >> 'CfgWeapons']): {GET_CONTAINER_KEYS("arsenal_weap_sidearm");};
    default {[]};
};

private _launcherWeapon = if (!isNil{_loadout#1#0}) then {_loadout#1#0} else {""};
private _launcherSpecific = switch (true) do {
    case (_launcherWeapon isKindOf ['rhs_weap_fgm148', configFile >> 'CfgWeapons']
            || _launcherWeapon isKindof ['rhs_weap_fim92', configFile >> 'CfgWeapons']
            || _launcherWeapon isKindof ['rhs_weap_maaws', configFile >> 'CfgWeapons']
            || _launcherWeapon isKindof ['launch_MRAWS_green_F', configFile >> 'CfgWeapons']
            || _launcherWeapon isKindof ['launch_MRAWS_sand_F', configFile >> 'CfgWeapons']
            || _launcherWeapon isKindof ['launch_MRAWS_olive_F', configFile >> 'CfgWeapons']): {GET_CONTAINER_KEYS("arsenal_weap_launchers");};
    default {[]};
};

private _whitelist = _commonGear + _unitItems + _orgItems + _roleSpecific + _primarySpecific + _handgunSpecific + _launcherSpecific;

INFO_2("Arsenal", "Whitelist created for %1 [%2].",player,typeof player);

_whitelist
