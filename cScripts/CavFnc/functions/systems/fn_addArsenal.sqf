#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function crates a arsenal on the given object with items used in each company.
 * If full, none, or empty value is given the arsenal will be "full".
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Company <STRING>
 *
 * Example:
 * ["box","full"] call cScripts_fnc_addArsenal
 */

params [
    ["_object", objNull, [objNull]],
    ["_companySelector", ""]
];

private _alpha_arsenal = [];
private _bravo_arsenal = [];
private _charlie_arsenal = [
    // CAV Uniforms
    "rhs_uniform_cu_ocp_1stcav",
    // CAV headgear
    "DAR_Beret_Blk","DAR_Beret_Mar","rhsusf_patrolcap_ocp",
    // CAV Misc
    "ACE_Vector", "Binocular", "rhsusf_bino_m24",

    // Charlie Headgear
    "rhsusf_ach_helmet_ocp","rhsusf_ach_helmet_headset_ocp","rhsusf_ach_helmet_camo_ocp",
    // Charlie Uniforms
    "LOP_U_ISTS_Fatigue_19",
    // Charlie vest
    "rhsusf_spcs_ocp","rhsusf_spcs_ocp_crewman","rhsusf_spcs_ocp_grenadier","rhsusf_spcs_ocp_machinegunner","rhsusf_spcs_ocp_medic", "rhsusf_spcs_ocp_rifleman_alt", "rhsusf_spcs_ocp_rifleman", "rhsusf_spcs_ocp_saw", "rhsusf_spcs_ocp_sniper", "rhsusf_spcs_ocp_squadleader", "rhsusf_spcs_ocp_teamleader_alt", "rhsusf_spcs_ocp_teamleader",
    // Charlie Backpack
    "B_Carryall_mcamo", "B_Kitbag_cbr",
    // Charlie Weapons
    "rhs_weap_m4a1_carryhandle", "rhs_weap_m4a1_carryhandle_m203", "rhs_weap_m4a1_carryhandle_m203S", "rhs_weap_m4a1", "rhs_weap_m4a1_m203", "rhs_weap_m4a1_m203s", "rhs_weap_m4a1_m320",
    "rhs_weap_m249_pip_L_para", "rhs_weap_m249_pip_S_para",
    // Charlie Acc
    "rhsusf_acc_acog_rmr", "rhsusf_acc_anpeq15a", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_anpeq15_bk_light","rhsusf_acc_anpeq15side_bk","rhsusf_acc_anpeq15_bk_top", "rhsusf_acc_m952v",
    // Charlie Misc
    "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_grip3",

    // Crate Weapons Export
    "rhs_weap_maaws","rhs_weap_M136_hp","rhs_weap_m72a7",
    // Crate Magazines Export
    "rhs_mag_30Rnd_556x45_M855A1_Stanag","rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red","rhs_200rnd_556x45_M_SAW","rhs_mag_maaws_HEAT","rhs_mag_maaws_HE","rhs_mag_m67","SmokeShell","SmokeShellRed","SmokeShellBlue","SmokeShellGreen","SmokeShellOrange","SmokeShellYellow","SmokeShellPurple","B_IR_Grenade","ACE_M84","rhs_mag_M441_HE","rhs_mag_M433_HEDP","rhs_mag_m714_White","rhs_mag_m715_Green","rhs_mag_m716_yellow","rhs_mag_m713_Red","ACE_HuntIR_M203","rhs_mag_M585_white","Chemlight_blue","Chemlight_red","SatchelCharge_Remote_Mag","DemoCharge_Remote_Mag",
    // Crate Items Export
    "ACRE_PRC152","ACRE_PRC117F","ACRE_PRC343","rhsusf_acc_eotech_552","rhsusf_acc_anpeq15_bk_light","rhsusf_acc_ELCAN","rhs_optic_maaws","ACE_M26_Clacker","rhsusf_ANPVS_14","ACE_Flashlight_MX991","ACE_CableTie","ACE_wirecutter","ACE_EntrenchingTool","ACE_IR_Strobe_Item","ACE_Chemlight_Shield","ACE_EarPlugs","ACE_quikclot","ACE_tourniquet","ACE_surgicalKit","ACE_morphine","DAR_Beret_Mar",
    // Crate Backpacks Export
    "B_Carryall_mcamo",
    
    // Default
    "rhs_googles_black", "rhs_googles_yellow", "rhs_googles_clear", "rhs_googles_orange", "rhs_ess_black", "rhsusf_oakley_goggles_blk", "rhsusf_oakley_goggles_clr", "rhsusf_oakley_goggles_ylw",
    "ACE_MapTools", "ItemMap", "ItemAndroid", "ItemCompass", "ItemWatch"
];
private _heavyweapons_arsenal = [];
private _medical_arsenal = [];
private _ranger_arsenal = [];
private _sniper_arsenal = [];

switch (_companySelector) do {
    case "alpha": { [_object, _alpha_arsenal] call ace_arsenal_fnc_initBox };
    case "bravo": { [_object, _bravo_arsenal] call ace_arsenal_fnc_initBox };
    case "charlie": { [_object, _charlie_arsenal] call ace_arsenal_fnc_initBox };
    case "heavyweapons": { [_object, _heavyweapons_arsenal] call ace_arsenal_fnc_initBox };
    case "medical": { [_object, _medical_arsenal] call ace_arsenal_fnc_initBox };
    case "ranger": { [_object, _ranger_arsenal] call ace_arsenal_fnc_initBox };
    case "sniper": { [_object, _sniper_arsenal] call ace_arsenal_fnc_initBox };
    default { [_object, true] call ace_arsenal_fnc_initBox };
};
