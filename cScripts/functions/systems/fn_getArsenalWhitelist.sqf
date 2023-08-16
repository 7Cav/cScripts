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
 * [] call cScripts_fnc_getArsenalWhitelist;
 */

private _classname = call EFUNC(gear,getCurrentLoadout);
if !(isClass (missionConfigFile >> "CfgLoadouts" >> _classname)) exitWith {
    [format["Loadout '%1' does not exist inside of mission config. No whitelist will be created.", _classname], "Arsenal Whitelist", true] call FUNC(warning);
    [];
};

private _loadout = parseSimpleArray getText (missionConfigFile >> "CfgLoadouts" >> _classname >> "loadout");
private _unitItems = str _loadout splitString "[]," joinString ",";
_unitItems = parseSimpleArray ("[" + _unitItems + "]");
_unitItems = _unitItems arrayIntersect _unitItems select {_x isEqualType "" && {_x != ""}};


private _commonGear = GET_CONTAINER_KEYS(arsenal_common);


private _company = call FUNC(getCompanyVariable);
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
            || _primaryWeapon isKindof ['rhs_weap_m16a4_carryhandle_M203', configFile >> 'CfgWeapons']): {[

        "rhs_weap_m4a1_m320",
        "rhs_weap_mk18_m320",
        "rhs_weap_M320",
        "rhs_weap_m4a1_carryhandle",
        "rhs_weap_m4a1_carryhandle_mstock",
        "rhs_weap_m4a1",
        "rhs_weap_m4a1_mstock",
        "rhs_weap_m4a1_d",
        "rhs_weap_m4a1_d_mstock",
        "rhs_weap_m4a1_wd",
        "rhs_weap_m4a1_wd_mstock",

        "rhs_weap_m4a1_blockII",
        "rhs_weap_m4a1_blockII_KAC",
        "rhs_weap_m4a1_blockII_bk",
        "rhs_weap_m4a1_blockII_KAC_bk",
        "rhs_weap_m4a1_blockII_d",
        "rhs_weap_m4a1_blockII_KAC_d",
        "rhs_weap_m4a1_blockII_wd",
        "rhs_weap_m4a1_blockII_KAC_wd",
        
        "rhs_weap_mk18",
        "rhs_weap_mk18_bk",
        "rhs_weap_mk18_KAC_bk",
        "rhs_weap_mk18_d",
        "rhs_weap_mk18_KAC_d",
        "rhs_weap_mk18_KAC",
        "rhs_weap_mk18_wd",
        "rhs_weap_mk18_KAC_wd",

        //Attachments
        "rhsusf_acc_sf3p556",
        "rhsusf_acc_eotech",
        "rhsusf_acc_g33_t1",
        "rhsusf_acc_g33_xps3",
        "rhsusf_acc_g33_xps3_tan",
        "rhsusf_acc_elcan",
        "rhsusf_acc_acog",
        "rhsusf_acc_acog2",
        "rhsusf_acc_acog3",
        "rhsusf_acc_eotech_552",
        "rhsusf_acc_eotech_552_d",
        "rhsusf_acc_eotech_552_wd",
        "rhsusf_acc_compm4",
        "rhsusf_acc_su230",
        "rhsusf_acc_su230_c",
        "rhsusf_acc_su230_mrds",
        "rhsusf_acc_su230_mrds_c",
        "rhsusf_acc_t1_high",
        "rhsusf_acc_acog_rmr",
        "rhsusf_acc_acog_d",
        "rhsusf_acc_acog_wd",
        "rhsusf_acc_grip2",
        "rhsusf_acc_grip2_tan",
        "rhsusf_acc_grip2_wd",
        "rhsusf_acc_grip1",
        "rhsusf_acc_kac_grip",
        "rhsusf_acc_rvg_blk",
        "rhsusf_acc_rvg_de",
        "rhsusf_acc_tdstubby_blk",
        "rhsusf_acc_tdstubby_tan",
        "rhsusf_acc_grip3",
        "rhsusf_acc_grip3_tan",
        "rhsusf_acc_eotech_xps3"
    ]};

    case (_primaryWeapon isKindof ['rhs_weap_m4a1', configFile >> 'CfgWeapons']
            || _primaryWeapon isKindof ['rhs_weap_m16a4', configFile >> 'CfgWeapons']): {[
        "rhs_weap_m4a1_carryhandle",
        "rhs_weap_m4a1_carryhandle_mstock",
        "rhs_weap_m4a1",
        "rhs_weap_m4a1_mstock",
        "rhs_weap_m4a1_d",
        "rhs_weap_m4a1_d_mstock",
        "rhs_weap_m4a1_wd",
        "rhs_weap_m4a1_wd_mstock",

        "rhs_weap_m4a1_blockII",
        "rhs_weap_m4a1_blockII_KAC",
        "rhs_weap_m4a1_blockII_bk",
        "rhs_weap_m4a1_blockII_KAC_bk",
        "rhs_weap_m4a1_blockII_d",
        "rhs_weap_m4a1_blockII_KAC_d",
        "rhs_weap_m4a1_blockII_wd",
        "rhs_weap_m4a1_blockII_KAC_wd",
        
        "rhs_weap_mk18",
        "rhs_weap_mk18_bk",
        "rhs_weap_mk18_KAC_bk",
        "rhs_weap_mk18_d",
        "rhs_weap_mk18_KAC_d",
        "rhs_weap_mk18_KAC",
        "rhs_weap_mk18_wd",
        "rhs_weap_mk18_KAC_wd",

        //Attachments
        "rhsusf_acc_sf3p556",
        "rhsusf_acc_eotech",
        "rhsusf_acc_g33_t1",
        "rhsusf_acc_g33_xps3",
        "rhsusf_acc_g33_xps3_tan",
        "rhsusf_acc_elcan",
        "rhsusf_acc_acog",
        "rhsusf_acc_acog2",
        "rhsusf_acc_acog3",
        "rhsusf_acc_eotech_552",
        "rhsusf_acc_eotech_552_d",
        "rhsusf_acc_eotech_552_wd",
        "rhsusf_acc_compm4",
        "rhsusf_acc_su230",
        "rhsusf_acc_su230_c",
        "rhsusf_acc_su230_mrds",
        "rhsusf_acc_su230_mrds_c",
        "rhsusf_acc_t1_high",
        "rhsusf_acc_acog_rmr",
        "rhsusf_acc_acog_d",
        "rhsusf_acc_acog_wd",
        "rhsusf_acc_grip2",
        "rhsusf_acc_grip2_tan",
        "rhsusf_acc_grip2_wd",
        "rhsusf_acc_grip1",
        "rhsusf_acc_kac_grip",
        "rhsusf_acc_rvg_blk",
        "rhsusf_acc_rvg_de",
        "rhsusf_acc_tdstubby_blk",
        "rhsusf_acc_tdstubby_tan",
        "rhsusf_acc_grip3",
        "rhsusf_acc_grip3_tan",
        "rhsusf_acc_eotech_xps3"
    ]};

    case (_primaryWeapon isKindof ['rhs_weap_sr25_ec', configFile >> 'CfgWeapons']): {[
        "rhs_weap_sr25_ec",
        "rhs_weap_sr25_ec_d",
        "rhs_weap_sr25_ec_wd",
        
        //Magazines
        "rhsusf_20Rnd_762x51_SR25_m118_special_Mag",
        
        //Attachments
        "rhsusf_acc_harris_bipod",
        "rhsusf_acc_m8541_d",
        "rhsusf_acc_m8541_mrds",
        "rhsusf_acc_elcan_ard",
        "rhsusf_acc_su230a",
        "rhsusf_acc_su230a_c",
        "rhsusf_acc_su230a_mrds",
        "rhsusf_acc_su230a_mrds_c",
        "rhsusf_acc_m8541_wd",
        "rhsusf_acc_acog_mdo"
    ]};

    case (primaryWeapon player isKindof ['rhs_weap_m240_base', configFile >> 'CfgWeapons']): {[
        "rhs_weap_m240B",
        "rhs_weap_m240G",
        
        // Attachments
        "rhsusf_acc_eotech",
        "rhsusf_acc_g33_t1",
        "rhsusf_acc_g33_xps3",
        "rhsusf_acc_g33_xps3_tan",
        "rhsusf_acc_eotech_552",
        "rhsusf_acc_eotech_552_d",
        "rhsusf_acc_eotech_552_wd",
        "rhsusf_acc_compm4",
        "rhsusf_acc_t1_high",
        "rhsusf_acc_elcan_ard",
        "rhsusf_acc_anpeq16a",
        "rhsusf_acc_su230a",
        "rhsusf_acc_su230a_c",
        "rhsusf_acc_su230a_mrds",
        "rhsusf_acc_su230a_mrds_c",
        "rhsusf_acc_acog_mdo"
    ]};

    case (primaryWeapon player isKindof ['rhs_weap_m249_pip', configFile >> 'CfgWeapons']
            || _primaryWeapon isKindof ['rhs_weap_m249_pip_L', configFile >> 'CfgWeapons']
            || _primaryWeapon isKindof ['rhs_weap_m249_pip_S', configFile >> 'CfgWeapons']): {[
        "rhs_weap_m249_pip",
        "rhs_weap_m249_light_L",
        "rhs_weap_m249_pip_L_para",
        "rhs_weap_m249_pip_L",
        "rhs_weap_m249_pip_ris",
        "rhs_weap_m249_light_S",
        "rhs_weap_m249_pip_S_para",
        "rhs_weap_m249_pip_S",

        // Attachements
        "rhsusf_acc_eotech",
        "rhsusf_acc_g33_t1",
        "rhsusf_acc_g33_xps3",
        "rhsusf_acc_g33_xps3_tan",
        "rhsusf_acc_elcan",
        "rhsusf_acc_acog",
        "rhsusf_acc_acog2",
        "rhsusf_acc_acog3",
        "rhsusf_acc_eotech_552",
        "rhsusf_acc_eotech_552_d",
        "rhsusf_acc_eotech_552_wd",
        "rhsusf_acc_compm4",
        "rhsusf_acc_su230",
        "rhsusf_acc_su230_c",
        "rhsusf_acc_su230_mrds",
        "rhsusf_acc_su230_mrds_c",
        "rhsusf_acc_t1_high",
        "rhsusf_acc_acog_rmr",
        "rhsusf_acc_acog_d",
        "rhsusf_acc_acog_wd",
        "rhsusf_acc_kac_grip_saw_bipod",
        "rhsusf_acc_grip4",
        "rhsusf_acc_grip4_bipod",
        "rhsusf_acc_saw_lw_bipod"
    ]};

    default {[]};
};

private _whitelist = _commonGear + _unitItems + _companyItems + _roleSpecific + _medicGear + _weaponSystemSpecific;

_whitelist
