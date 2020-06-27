#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function adds equipment to a given item baserd on company type.
 *
 * Arguments:
 * 0: Crate <OBJECT>
 * 1: Set company type. <STRING> ["none","alpha","bravo","charlie","medical","full"]
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [this] call cScripts_fnc_doStarterCrateSupplies;
 * [this,"none"] call cScripts_fnc_doStarterCrateSupplies;
 *
 */

if (!isServer) exitWith {};

params [
    ["_crate", objNull, [objNull]],
    ["_companySelector", "NONE", [""]]
];

// Set upper case
_companySelector = toUpper(_companySelector);

// Container Category
private _officer = ["OFFICER"];
private _alpha   = ["ALPHA", "BUFFALO", "TITAN", "RAIDER", "SPARROW"];
private _bravo   = ["BRAVO", "LANCER", "VIKING", "SABER", "BANSHEE", "ATLAS"];
private _charlie = ["CHARLIE", "BANDIT", "MISFIT"];

if !(_companySelector in (["NONE", "FULL", "ALL"] + _officer + _alpha + _bravo + _charlie)) exitWith {
    [formatText["%1 (Starter Crate Supplies) is using a unsupported cartegory '%2'.", _crate, _companySelector]] call FUNC(logError);
};

// Full selector handler
private _alwaysAvalible = if (_companySelector == 'FULL' or _companySelector == 'ALL') then {true} else {false};

// Clear the crate
clearweaponcargoGlobal _crate;
clearmagazinecargoGlobal _crate;
clearitemcargoGlobal _crate;
clearbackpackcargoGlobal _crate;

if (_companySelector == "" OR _companySelector == "NONE") exitWith {};

//          Starter crate inventory

//          G L O B A L   C A R G O
if !(_companySelector == 'NONE') then {
    // Radios
    _crate addItemCargoGlobal ["ACRE_PRC343",50];
    _crate addItemCargoGlobal ["ACRE_PRC117F",50];
    _crate addItemCargoGlobal ["ACRE_PRC152",50];

    // Basic Rifle attachments
    _crate addItemCargoGlobal ["rhsusf_acc_anpeq15_bk_light", 25];
    _crate addItemCargoGlobal ["rhsusf_acc_m952v", 25];
    _crate addItemCargoGlobal ["rhsusf_acc_anpeq15side_bk", 25];

    // Chemlights
    _crate addMagazineCargoGlobal ["ACE_Chemlight_HiBlue",50];
    _crate addMagazineCargoGlobal ["ACE_Chemlight_HiGreen",50];
    _crate addMagazineCargoGlobal ["ACE_Chemlight_HiRed",50];
    _crate addMagazineCargoGlobal ["ACE_Chemlight_HiWhite",50];
    _crate addMagazineCargoGlobal ["ACE_Chemlight_HiYellow",50];

    // Smoke Grenades
    _crate addMagazineCargoGlobal ["SmokeShell",250];
    _crate addMagazineCargoGlobal ["SmokeShellBlue",250];
    _crate addMagazineCargoGlobal ["SmokeShellGreen",250];
    _crate addMagazineCargoGlobal ["SmokeShellOrange",250];
    _crate addMagazineCargoGlobal ["SmokeShellPurple",250];
    _crate addMagazineCargoGlobal ["SmokeShellRed",250];
    _crate addMagazineCargoGlobal ["SmokeShellYellow",250];
    _crate addMagazineCargoGlobal ["ACE_Chemlight_IR",250];

    // Basic Medical Equipment
    _crate addItemCargoGlobal ["ACE_quikclot",250];
    _crate addItemCargoGlobal ["ACE_tourniquet",50];
    _crate addItemCargoGlobal ["ACE_splint",25];
    
    _crate addItemCargoGlobal ["ACE_personalAidKit",25];
    _crate addItemCargoGlobal ["ACE_surgicalKit",25];

    // Grenades
    _crate addMagazineCargoGlobal ["B_IR_Grenade",50];

    // Misc
    _crate addItemCargoGlobal ["ACE_Chemlight_Shield",50];
    _crate addItemCargoGlobal ["ACE_Flashlight_XL50",50];

    // Spraycan
    _crate addItemCargoGlobal ["ACE_SpraypaintBlack",50];
    _crate addItemCargoGlobal ["ACE_SpraypaintBlue",50];
    _crate addItemCargoGlobal ["ACE_SpraypaintGreen",50];
    _crate addItemCargoGlobal ["ACE_SpraypaintRed",50];

    // Gear and protection
    _crate addItemCargoGlobal ["ACE_EarPlugs",250];

    _crate addItemCargoGlobal ["rhs_googles_black",25];
    _crate addItemCargoGlobal ["rhs_googles_clear",25];
    _crate addItemCargoGlobal ["rhsusf_oakley_goggles_blk",25];
    _crate addItemCargoGlobal ["rhsusf_oakley_goggles_clr",25];
    
    // Tools
    _crate addItemCargoGlobal ["ACE_MapTools",50];

    // Food and water
    if (!isNil {acex_field_rations_enabled}) then {
        _crate addItemCargoGlobal ["ACE_Canteen",100];

        _crate addItemCargoGlobal ["ACE_MRE_BeefStew",50];
        _crate addItemCargoGlobal ["ACE_MRE_ChickenTikkaMasala",50];
        _crate addItemCargoGlobal ["ACE_MRE_ChickenHerbDumplings",50];
        _crate addItemCargoGlobal ["ACE_MRE_CreamChickenSoup",50];
        _crate addItemCargoGlobal ["ACE_MRE_CreamTomatoSoup",50];
        _crate addItemCargoGlobal ["ACE_MRE_LambCurry",50];
        _crate addItemCargoGlobal ["ACE_MRE_MeatballsPasta",50];
        _crate addItemCargoGlobal ["ACE_MRE_SteakVegetables",50];
    };
};

//          O F F I C E R   C A R G O
if (_companySelector in _officer or _alwaysAvalible) then {
};

//          A L P H A   C O M P A N Y   C A R G O
if (_companySelector in _alpha or _alwaysAvalible) then {

    // Container Buffalo
    if (_companySelector in ['ALPHA', 'BUFFALO'] or _alwaysAvalible) then {
    };
    // Container Titan
    if (_companySelector in ['ALPHA', 'TITAN'] or _alwaysAvalible) then {
    };
    // Container Raider
    if (_companySelector in ['ALPHA', 'RAIDER'] or _alwaysAvalible) then {
    };
    // Container Sparrow
    if (_companySelector in ['ALPHA', 'SPARROW'] or _alwaysAvalible) then {
    };

    // Container Hog
    if (_companySelector in ['ALPHA', 'EAGLE'] or _alwaysAvalible) then {
    };
    // Container Hog
    if (_companySelector in ['ALPHA', 'HOG'] or _alwaysAvalible) then {
    };
};


//          B R A V O   C O M P A N Y   C A R G O
if (_companySelector in _bravo or _alwaysAvalible) then {

    // Container Bravo
    if (_companySelector in ['BRAVO'] or _alwaysAvalible) then {

        // Magazines
        _crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",250];
        _crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",250];

    };

    // Container Lancer
    if (_companySelector in ['BRAVO', 'LANCER'] or _alwaysAvalible) then {

        _crate addWeaponCargoGlobal ["rhs_weap_m240B",25];
        _crate addWeaponCargoGlobal ["rhs_weap_fim92",50];
        _crate addWeaponCargoGlobal ["rhs_weap_M136_hp",50];
        _crate addWeaponCargoGlobal ["rhs_weap_m72a7",50];

        // Basic Rifle attachments
        _crate addItemCargoGlobal ["rhsusf_acc_anpeq15_bk_light", 25];
        _crate addItemCargoGlobal ["rhsusf_acc_m952v", 25];
        _crate addItemCargoGlobal ["rhsusf_acc_anpeq15side_bk", 25];

        // Magazines
        _crate addMagazineCargoGlobal ["rhsusf_200Rnd_556x45_box",250];
        _crate addMagazineCargoGlobal ["rhsusf_200rnd_556x45_mixed_box",250];

        _crate addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m61_ap",250];

        // Launcher Magazines
        _crate addMagazineCargoGlobal ["cav_m3maaws_heat_cs",50];
        _crate addMagazineCargoGlobal ["tf47_m3maaws_ILLUM",50];
        _crate addMagazineCargoGlobal ["tf47_m3maaws_HE",50];
        _crate addMagazineCargoGlobal ["tf47_m3maaws_HEAT",50];
        _crate addMagazineCargoGlobal ["rhs_fim92_mag",25];
        _crate addMagazineCargoGlobal ["rhs_fgm148_magazine_AT",25];

        // Grenades
        _crate addMagazineCargoGlobal ["HandGrenade",250];
        _crate addMagazineCargoGlobal ["ACE_M84",250];

        // Barrel grenades flares and smokes
        _crate addMagazineCargoGlobal ["rhs_mag_M441_HE",250];
        _crate addMagazineCargoGlobal ["rhs_mag_M433_HEDP",250];
        _crate addMagazineCargoGlobal ["rhs_mag_M397_HET",250];

        _crate addMagazineCargoGlobal ["rhs_mag_M585_white",250];
        _crate addMagazineCargoGlobal ["rhs_mag_m661_green",250];
        _crate addMagazineCargoGlobal ["rhs_mag_m662_red",250];
        _crate addMagazineCargoGlobal ["rhs_mag_m713_Red",250];
        _crate addMagazineCargoGlobal ["rhs_mag_m714_White",250];
        _crate addMagazineCargoGlobal ["rhs_mag_m715_Green",250];
        _crate addMagazineCargoGlobal ["rhs_mag_m716_yellow",250];

        _crate addMagazineCargoGlobal ["1Rnd_SmokeBlue_Grenade_shell",250];
        _crate addMagazineCargoGlobal ["1Rnd_SmokeGreen_Grenade_shell",250];
        _crate addMagazineCargoGlobal ["1Rnd_SmokeOrange_Grenade_shell",250];
        _crate addMagazineCargoGlobal ["1Rnd_SmokePurple_Grenade_shell",250];
        _crate addMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell",250];
        _crate addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell",250];
        _crate addMagazineCargoGlobal ["1Rnd_SmokeYellow_Grenade_shell",250];
        
        _crate addMagazineCargoGlobal ["ACE_HUNTIR_M203",50];

        // Tools
        _crate addItemCargoGlobal ["ACE_wirecutter",10];
        _crate addItemCargoGlobal ["ACE_EntrenchingTool",25];

        // Misc
        _crate addItemCargoGlobal ["ACE_CableTie",250];
    };
    
    // Container Viking
    if (_companySelector in ['BRAVO', 'VIKING'] or _alwaysAvalible) then {
        _crate addItemCargoGlobal ["ToolKit",50];
    };

    // Container Atlas Medical
    if (_companySelector in ['BRAVO', 'ATLAS'] or _alwaysAvalible) then {

        // Medical Equipment
        _crate addItemCargoGlobal ["ACE_tourniquet",50];
        _crate addItemCargoGlobal ["ACE_splint",75];

        //_crate addItemCargoGlobal ["ACE_quikclot",250];
        _crate addItemCargoGlobal ["ACE_fieldDressing",250];
        _crate addItemCargoGlobal ["ACE_elasticBandage",250];
        _crate addItemCargoGlobal ["ACE_packingBandage",250];

        _crate addItemCargoGlobal ["ACE_adenosine",250];
        _crate addItemCargoGlobal ["ACE_epinephrine",250];
        _crate addItemCargoGlobal ["ACE_morphine",250];

        _crate addItemCargoGlobal ["ACE_bloodIV",50];
        _crate addItemCargoGlobal ["ACE_bloodIV_500",100];
        _crate addItemCargoGlobal ["ACE_bloodIV_250",200];

        _crate addItemCargoGlobal ["ACE_plasmaIV",50];
        _crate addItemCargoGlobal ["ACE_plasmaIV_500",100];
        _crate addItemCargoGlobal ["ACE_plasmaIV_250",200];

        _crate addItemCargoGlobal ["ACE_salineIV",50];
        _crate addItemCargoGlobal ["ACE_salineIV_500",100];
        _crate addItemCargoGlobal ["ACE_salineIV_250",200];

        _crate addItemCargoGlobal ["ACE_surgicalKit",75];
        _crate addItemCargoGlobal ["ACE_personalAidKit",75];
        _crate addItemCargoGlobal ["ACE_bodyBag",50];
    };

    // Container Atlas Logistic
    if (_companySelector in ['BRAVO', 'ATLAS'] or _alwaysAvalible) then {
        
        // Demolition
        _crate addItemCargoGlobal ["ACE_M26_Clacker",25];
        _crate addItemCargoGlobal ["rhsusf_m112_mag",50];
        _crate addItemCargoGlobal ["rhsusf_m112x4_mag",50];
        _crate addItemCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag",50];
        
        // Tools
        _crate addItemCargoGlobal ["ACE_DefusalKit",25];
        _crate addItemCargoGlobal ["ACE_Fortify",25];
        _crate addItemCargoGlobal ["ToolKit",50];
        _crate addItemCargoGlobal ["ACE_wirecutter",50];
        _crate addItemCargoGlobal ["ACE_EntrenchingTool",50];
        
    };

    // Container Sabre
    if (_companySelector in ['BRAVO', 'SABER'] or _alwaysAvalible) then {
        _crate addItemCargoGlobal ["ToolKit",50];
    };
    
    // Container Banshee
    if (_companySelector in ['BRAVO', 'BANSHEE'] or _alwaysAvalible) then {
        _crate addItemCargoGlobal ["ToolKit",50];
    };
};

//          C H A R L I E   C O M P A N Y   C A R G O
if (_companySelector in _charlie or _alwaysAvalible) then {

    // Container Charlie
    if (_companySelector in ['CHARLIE'] or _alwaysAvalible) then {
    };

    // Loadouts Bandit & Misfit
    if (_companySelector in ['CHARLIE', 'BANDIT', 'MISFIT'] or _alwaysAvalible) then {

        // Weapons
        _crate addWeaponCargoGlobal ["tf47_m3maaws",25];
        _crate addItemCargoGlobal ["tf47_optic_m3maaws",25];

        _crate addWeaponCargoGlobal ["rhs_weap_m240B",25];
        _crate addWeaponCargoGlobal ["rhs_weap_fim92",50];
        _crate addWeaponCargoGlobal ["rhs_weap_M136_hp",50];
        _crate addWeaponCargoGlobal ["rhs_weap_m72a7",50];

        // Attachments
        _crate addItemCargoGlobal ["rhsusf_acc_elcan_ard",50];
        _crate addItemCargoGlobal ["rhsusf_acc_acog_mdo",50];
        _crate addItemCargoGlobal ["rhsusf_acc_t1_high",50];
        _crate addItemCargoGlobal ["rhsusf_acc_acog_rmr",50];
        _crate addItemCargoGlobal ["rhsusf_acc_acog2",50];
        _crate addItemCargoGlobal ["rhsusf_acc_compm4",50];
        _crate addItemCargoGlobal ["rhsusf_acc_rx01",50];
        _crate addItemCargoGlobal ["rhsusf_acc_eotech_xps3",50];
        _crate addItemCargoGlobal ["rhsusf_acc_eotech_552",50];

        // Magazines
        _crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_PMAG",250];
        _crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",250];
        _crate addMagazineCargoGlobal ["rhsusf_200Rnd_556x45_box",250];
        _crate addMagazineCargoGlobal ["rhsusf_200rnd_556x45_mixed_box",250];
        _crate addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m61_ap",250];
        _crate addMagazineCargoGlobal ["rhsusf_50Rnd_762x51_m61_ap",250];

        // Launcher Magazines
        _crate addMagazineCargoGlobal ["cav_m3maaws_heat_cs",50];
        _crate addMagazineCargoGlobal ["tf47_m3maaws_ILLUM",50];
        _crate addMagazineCargoGlobal ["tf47_m3maaws_HE",50];
        _crate addMagazineCargoGlobal ["tf47_m3maaws_HEAT",50];
        _crate addMagazineCargoGlobal ["rhs_fim92_mag",25];
        _crate addMagazineCargoGlobal ["rhs_fgm148_magazine_AT",25];

        // Grenades
        _crate addMagazineCargoGlobal ["HandGrenade",250];
        _crate addMagazineCargoGlobal ["ACE_M84",250];

        // Barrel grenades flares and smokes
        _crate addMagazineCargoGlobal ["rhs_mag_M441_HE",250];
        _crate addMagazineCargoGlobal ["rhs_mag_M433_HEDP",250];
        _crate addMagazineCargoGlobal ["rhs_mag_M397_HET",250];

        _crate addMagazineCargoGlobal ["rhs_mag_M585_white",250];
        _crate addMagazineCargoGlobal ["rhs_mag_m661_green",250];
        _crate addMagazineCargoGlobal ["rhs_mag_m662_red",250];
        _crate addMagazineCargoGlobal ["rhs_mag_m713_Red",250];
        _crate addMagazineCargoGlobal ["rhs_mag_m714_White",250];
        _crate addMagazineCargoGlobal ["rhs_mag_m715_Green",250];
        _crate addMagazineCargoGlobal ["rhs_mag_m716_yellow",250];

        _crate addMagazineCargoGlobal ["1Rnd_SmokeBlue_Grenade_shell",250];
        _crate addMagazineCargoGlobal ["1Rnd_SmokeGreen_Grenade_shell",250];
        _crate addMagazineCargoGlobal ["1Rnd_SmokeOrange_Grenade_shell",250];
        _crate addMagazineCargoGlobal ["1Rnd_SmokePurple_Grenade_shell",250];
        _crate addMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell",250];
        _crate addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell",250];
        _crate addMagazineCargoGlobal ["1Rnd_SmokeYellow_Grenade_shell",250];
        
        _crate addMagazineCargoGlobal ["ACE_HUNTIR_M203",50];

        // Demolition
        _crate addItemCargoGlobal ["ACE_M26_Clacker",25];
        _crate addItemCargoGlobal ["rhsusf_m112_mag",50];
        _crate addItemCargoGlobal ["rhsusf_m112x4_mag",50];
        _crate addItemCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag",50];

        // Gear and protection
        _crate addItemCargoGlobal ["DAR_Beret_Mar",25];
        _crate addItemCargoGlobal ["rhsusf_ach_helmet_ocp",25];
        _crate addItemCargoGlobal ["rhsusf_ach_helmet_ESS_ocp",25];
        _crate addItemCargoGlobal ["rhsusf_ach_helmet_headset_ocp",25];
        _crate addItemCargoGlobal ["rhsusf_ach_helmet_headset_ess_ocp",25];
        _crate addItemCargoGlobal ["rhsusf_ach_helmet_camo_ocp",25];
        _crate addItemCargoGlobal ["rhsusf_ach_helmet_ocp_norotos",25];

        // Tools
        _crate addItemCargoGlobal ["ACE_wirecutter",10];
        _crate addItemCargoGlobal ["ACE_EntrenchingTool",25];

        // Misc
        _crate addItemCargoGlobal ["ACE_CableTie",250];

    };
};
