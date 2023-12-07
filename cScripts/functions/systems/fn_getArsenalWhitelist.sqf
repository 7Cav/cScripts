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


private _commonGear = GET_CONTAINER_KEYS(arsenal_common);


private _company = call EFUNC(player,getCompany);
private _companyItems = switch (_company) do {
    case "alpha": {GET_CONTAINER_KEYS(alpha_company);};
    case "bravo": {GET_CONTAINER_KEYS(bravo_company);};
    case "charlie": {GET_CONTAINER_KEYS(charlie_company);};
    default {GET_CONTAINER_KEYS(arsenal_company_fallback);};
};


private _medicRole = getNumber (missionConfigFile >> "CfgLoadouts" >> _classname >> "abilityMedic");
private _medicGear = if (_medicRole >= 1) then {GET_CONTAINER_KEYS(bravo_company_atlas);} else {[]};


private _roleSpecific = switch ([player] call EFUNC(gear,getLoadoutRole)) do {
    case "officer": {GET_CONTAINER_KEYS(arsenal_role_officer);};
    case "squadleader": {GET_CONTAINER_KEYS(arsenal_role_squadleader);};
    case "fireteamleader": {GET_CONTAINER_KEYS(arsenal_role_fireteamleader);};
    case "weapons": {GET_CONTAINER_KEYS(arsenal_role_weapons);};
    case "pilot";
    case "rotarypilot": {GET_CONTAINER_KEYS(arsenal_role_rotarypilot);};
    case "rotarycrew": {GET_CONTAINER_KEYS(arsenal_role_pilotcrew);};
    case "pilotfighter": {GET_CONTAINER_KEYS(arsenal_role_pilotfighter);};
    case "pilottransport": {GET_CONTAINER_KEYS(arsenal_role_pilottransport);};
    default {[]};
};


private _primaryWeapon = if (!isNil{_loadout#0#0}) then {_loadout#0#0} else {""};
private _weaponSystemSpecific = switch (true) do {
    case (_primaryWeapon isKindof ['rhs_weap_mk18_m320', configFile >> 'CfgWeapons']
            || _primaryWeapon isKindof ['rhs_weap_m16a4_carryhandle_M203', configFile >> 'CfgWeapons']): {GET_CONTAINER_KEYS(arsenal_weap_ugl);};

    case (_primaryWeapon isKindof ['rhs_weap_m4a1', configFile >> 'CfgWeapons']
            || _primaryWeapon isKindof ['rhs_weap_m16a4', configFile >> 'CfgWeapons']): {GET_CONTAINER_KEYS(arsenal_weap_m4);};

    case (_primaryWeapon isKindof ['rhs_weap_sr25_ec', configFile >> 'CfgWeapons']): {GET_CONTAINER_KEYS(arsenal_weap_sr25);};

    case (primaryWeapon player isKindof ['rhs_weap_m240_base', configFile >> 'CfgWeapons']): {GET_CONTAINER_KEYS(arsenal_weap_m240);};

    case (primaryWeapon player isKindof ['rhs_weap_m249_pip', configFile >> 'CfgWeapons']
            || _primaryWeapon isKindof ['rhs_weap_m249_pip_L', configFile >> 'CfgWeapons']
            || _primaryWeapon isKindof ['rhs_weap_m249_pip_S', configFile >> 'CfgWeapons']): {GET_CONTAINER_KEYS(arsenal_weap_m249);};

    default {[]};
};

private _whitelist = _commonGear + _unitItems + _companyItems + _roleSpecific + _medicGear + _weaponSystemSpecific;

_whitelist
