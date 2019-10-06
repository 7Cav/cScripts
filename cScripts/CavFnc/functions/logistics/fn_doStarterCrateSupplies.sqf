#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function adds equipment to a given item baserd on company type.
 *
 * Arguments:
 * 0: Crate <OBJECT>
 * 1: Set company type. <STRING> ["none","alpha","bravo","charlie","ranger","medical","full"]
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
    ["_companySelector", "NONE"]
];

// Set upper case
_companySelector = toUpper(_companySelector);

// Create categories
private _officer = ["OFFICER"];
private _alpha   = ["ALPHA", "BUFFALO", "TITAN", "RAIDER", "SPARROW"];
private _bravo   = ["BRAVO", "LANCER", "VIKING", "SABER", "BANSHEE", "APOLLO", "MUSTANG"];
private _charlie = ["CHARLIE", "BANDIT", "MISFIT"];
private _ranger  = ["RANGER", "SNIPER"];

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
    // TEMP REMOVED THIS RELEASE

    // // Radios
    // _crate addItemCargoGlobal ["ACRE_PRC152",10];
    // _crate addItemCargoGlobal ["ACRE_PRC117F",10];
    // _crate addItemCargoGlobal ["ACRE_PRC343",20];
        
    // // Magazines
    // _crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",250];
    // _crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",250];
    // _crate addMagazineCargoGlobal ["rhs_200rnd_556x45_M_SAW",250];
    // _crate addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m61_ap",250];

    // // Grenades
    // _crate addMagazineCargoGlobal ["ACE_Chemlight_HiBlue",50];
    // _crate addMagazineCargoGlobal ["ACE_Chemlight_HiGreen",50];
    // _crate addMagazineCargoGlobal ["ACE_Chemlight_HiRed",50];
    // _crate addMagazineCargoGlobal ["ACE_Chemlight_HiWhite",50];
    // _crate addMagazineCargoGlobal ["ACE_Chemlight_HiYellow",50];

    // _crate addMagazineCargoGlobal ["SmokeShell",50];
    // _crate addMagazineCargoGlobal ["SmokeShellBlue",50];
    // _crate addMagazineCargoGlobal ["SmokeShellGreen",50];
    // _crate addMagazineCargoGlobal ["SmokeShellOrange",50];
    // _crate addMagazineCargoGlobal ["SmokeShellPurple",50];
    // _crate addMagazineCargoGlobal ["SmokeShellRed",50];
    // _crate addMagazineCargoGlobal ["SmokeShellYellow",50];

    // _crate addMagazineCargoGlobal ["HandGrenade",50];
    // _crate addMagazineCargoGlobal ["ACE_M84",50];

    // _crate addMagazineCargoGlobal ["B_IR_Grenade",50];
    // _crate addMagazineCargoGlobal ["ACE_Chemlight_IR",50];

    // // Barrel grenades flares and smokes
    // _crate addMagazineCargoGlobal ["rhs_mag_M441_HE",50];
    // _crate addMagazineCargoGlobal ["rhs_mag_M433_HEDP",50];
    // _crate addMagazineCargoGlobal ["rhs_mag_M397_HET",50];

    // _crate addMagazineCargoGlobal ["rhs_mag_M585_white",50];
    // _crate addMagazineCargoGlobal ["rhs_mag_m661_green",50];
    // _crate addMagazineCargoGlobal ["rhs_mag_m662_red",50];
    // _crate addMagazineCargoGlobal ["rhs_mag_m713_Red",50];
    // _crate addMagazineCargoGlobal ["rhs_mag_m714_White",50];
    // _crate addMagazineCargoGlobal ["rhs_mag_m715_Green",50];
    // _crate addMagazineCargoGlobal ["rhs_mag_m716_yellow",50];

    // _crate addMagazineCargoGlobal ["1Rnd_SmokeBlue_Grenade_shell",50];
    // _crate addMagazineCargoGlobal ["1Rnd_SmokeGreen_Grenade_shell",50];
    // _crate addMagazineCargoGlobal ["1Rnd_SmokeOrange_Grenade_shell",50];
    // _crate addMagazineCargoGlobal ["1Rnd_SmokePurple_Grenade_shell",50];
    // _crate addMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell",50];
    // _crate addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell",50];
    // _crate addMagazineCargoGlobal ["1Rnd_SmokeYellow_Grenade_shell",50];

    // _crate addMagazineCargoGlobal ["ACE_HUNTIR_M203",50];

    // // Medical Equipment
    // _crate addItemCargoGlobal ["ACE_quikclot",250];
    // _crate addItemCargoGlobal ["ACE_tourniquet",50];

    // // Gear and protection
    // _crate addItemCargoGlobal ["rhs_googles_black",25];
    // _crate addItemCargoGlobal ["rhs_googles_clear",25];
    // _crate addItemCargoGlobal ["rhsusf_oakley_goggles_blk",25];
    // _crate addItemCargoGlobal ["rhsusf_oakley_goggles_clr",25];
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

    // Old Container
    if (_companySelector in ['ALPHA', 'BUFFALO', 'TITAN', 'RAIDER', 'SPARROW' ] or _alwaysAvalible) then {
        //================== RADIOS ==================\\
        _crate addItemCargoGlobal ["ACRE_PRC152",50];
        _crate addItemCargoGlobal ["ACRE_PRC117F",10];
        _crate addItemCargoGlobal ["ACRE_PRC343",12];

        //================== WEAPONS ==================\\
        _crate addWeaponCargoGlobal ["rhs_weap_m4a1_m320",2];
        _crate addWeaponCargoGlobal ["rhs_weap_m249_pip_L",2];
        _crate addWeaponCargoGlobal ["rhs_weap_m240B",2];
        _crate addWeaponCargoGlobal ["rhs_weap_M136_hp",6];
        _crate addItemCargoGlobal ["acc_flashlight",50];
        _crate addItemCargoGlobal ["rhsusf_acc_anpeq15_bk_light",50];
        _crate addItemCargoGlobal ["rhsusf_acc_acog_mdo",50];
        _crate addItemCargoGlobal ["rhsusf_acc_ELCAN",50];
        _crate addItemCargoGlobal ["rhsusf_acc_compm4",50];
        _crate addItemCargoGlobal ["rhsusf_acc_acog3",50];
        _crate addItemCargoGlobal ["rhsusf_acc_eotech_xps3",50];

        //================== AMMO ==================\\
        _crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",250];
        _crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",50];
        _crate addMagazineCargoGlobal ["rhs_200rnd_556x45_M_SAW",250];
        _crate addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m62_tracer",250];
        _crate addMagazineCargoGlobal ["rhsusf_mag_15Rnd_9x19_JHP",30];

        //================== GRENADES ==================\\
        _crate addMagazineCargoGlobal ["rhs_mag_m67",50];
        _crate addMagazineCargoGlobal ["SmokeShell",50];
        _crate addMagazineCargoGlobal ["SmokeShellRed",25];
        _crate addMagazineCargoGlobal ["SmokeShellBlue",25];
        _crate addMagazineCargoGlobal ["SmokeShellGreen",25];
        _crate addMagazineCargoGlobal ["SmokeShellOrange",25];
        _crate addMagazineCargoGlobal ["SmokeShellYellow",25];
        _crate addMagazineCargoGlobal ["SmokeShellPurple",25];
        _crate addMagazineCargoGlobal ["B_IR_Grenade",25];
        _crate addMagazineCargoGlobal ["ACE_M84",25];
        _crate addMagazineCargoGlobal ["rhs_mag_M441_HE",25];
        _crate addMagazineCargoGlobal ["rhs_mag_M433_HEDP",25];
        _crate addMagazineCargoGlobal ["rhs_mag_m714_White",25];
        _crate addMagazineCargoGlobal ["rhs_mag_m715_Green",25];
        _crate addMagazineCargoGlobal ["rhs_mag_m716_yellow",25];
        _crate addMagazineCargoGlobal ["rhs_mag_m713_Red",25];
        _crate addMagazineCargoGlobal ["ACE_HUNTIR_M203",25];
        _crate addMagazineCargoGlobal ["rhs_mag_M585_white",25];
        _crate addMagazineCargoGlobal ["rhs_mag_m662_red",250];
        _crate addMagazineCargoGlobal ["Chemlight_green",25];
        _crate addMagazineCargoGlobal ["Chemlight_red",25];
        _crate addMagazineCargoGlobal ["Chemlight_yellow",25];

        //================== ITEMS ==================\\
        _crate addItemCargoGlobal ["Toolkit",50];
        _crate addItemCargoGlobal ["ACE_Flashlight_MX991",50];
        _crate addItemCargoGlobal ["itemcTabHCam",50];
        _crate addItemCargoGlobal ["ACE_CableTie",50];
        _crate addItemCargoGlobal ["ACE_Chemlight_Shield",25];
        _crate addItemCargoGlobal ["ACE_VMH3",20];
        _crate addItemCargoGlobal ["ACE_VMM3",20];
        _crate addItemCargoGlobal ["Flagstack_Red",20];
        _crate addItemCargoGlobal ["Signpack_Mines",20];

        //================== MEDICAL ==================\\
        _crate addItemCargoGlobal ["ACE_EarPlugs",50];
        _crate addItemCargoGlobal ["ACE_quikclot",250];
        _crate addItemCargoGlobal ["ACE_tourniquet",25];
        _crate addItemCargoGlobal ["ACE_surgicalKit",10];
        _crate addItemCargoGlobal ["ACE_morphine",25];

        //================== HELMETS ==================\\
        _crate addItemCargoGlobal ["rhsusf_ihadss",12];
        _crate addItemCargoGlobal ["rhsusf_hgu56p_visor",12];
        _crate addItemCargoGlobal ["rhsusf_hgu56p_visor_green",12];
        _crate addItemCargoGlobal ["rhsusf_hgu56p_visor_mask_black",12];
        _crate addItemCargoGlobal ["H_PilotHelmetFighter_B",6];
        _crate addItemCargoGlobal ["DAR_Beret_Mar",50];
        _crate addItemCargoGlobal ["rhsusf_patrolcap_ocp",50];
    };
};

//          B R A V O   C O M P A N Y   C A R G O
if (_companySelector in _bravo or _alwaysAvalible) then {

    // Container Lancer
    if (_companySelector in ['BRAVO', 'LANCER'] or _alwaysAvalible) then {
    };
    // Container Viking
    if (_companySelector in ['BRAVO', 'VIKING'] or _alwaysAvalible) then {
    };
    // Container Mustang
    if (_companySelector in ['BRAVO', 'MUSTANG'] or _alwaysAvalible) then {
        //================== RADIOS ==================\\

        _crate addItemCargoGlobal ["ACRE_PRC152",10];
        _crate addItemCargoGlobal ["ACRE_PRC117F",5];
        _crate addItemCargoGlobal ["ACRE_PRC343",12];

        //================== WEAPONS ==================\\

        _crate addItemCargoGlobal ["rhsusf_acc_eotech_552",10];
        _crate addItemCargoGlobal ["rhsusf_acc_anpeq15_bk_light",50];
        _crate addItemCargoGlobal ["acc_flashlight",50];
        _crate addItemCargoGlobal ["rhsusf_acc_ELCAN",50];
        _crate addItemCargoGlobal ["rhsusf_acc_compm4",50];
        _crate addItemCargoGlobal ["rhsusf_acc_acog3",50];
        _crate addItemCargoGlobal ["rhsusf_acc_eotech_xps3",50];

        //================== AMMO ==================\\

        _crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",250];
        _crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",250];

        //================== GRENADES ==================\\

        _crate addMagazineCargoGlobal ["rhs_mag_m67",250];
        _crate addMagazineCargoGlobal ["SmokeShell",250];
        _crate addMagazineCargoGlobal ["SmokeShellRed",250];
        _crate addMagazineCargoGlobal ["SmokeShellBlue",250];
        _crate addMagazineCargoGlobal ["SmokeShellGreen",250];
        _crate addMagazineCargoGlobal ["SmokeShellOrange",250];
        _crate addMagazineCargoGlobal ["SmokeShellYellow",250];
        _crate addMagazineCargoGlobal ["SmokeShellPurple",250];
        _crate addMagazineCargoGlobal ["B_IR_Grenade",250];
        _crate addMagazineCargoGlobal ["ACE_M84",25];
        _crate addMagazineCargoGlobal ["rhs_mag_M585_white",250];
        _crate addMagazineCargoGlobal ["rhs_mag_m662_red",250];
        _crate addMagazineCargoGlobal ["Chemlight_Blue",250];
        _crate addMagazineCargoGlobal ["Chemlight_Red",250];

        //================== EXPLOSIVES ==================\\


        //================== ITEMS ==================\\

        _crate addItemCargoGlobal ["rhsusf_ANPVS_14",50];
        _crate addItemCargoGlobal ["ACE_Flashlight_MX991",50];
        _crate addItemCargoGlobal ["ACE_CableTie",100];
        _crate addItemCargoGlobal ["ACE_wirecutter",10];
        _crate addItemCargoGlobal ["ACE_EntrenchingTool",20];
        _crate addItemCargoGlobal ["ACE_IR_Strobe_Item",20];
        _crate addItemCargoGlobal ["ACE_Chemlight_Shield",25];

        //================== MEDICAL ==================\\

        _crate addItemCargoGlobal ["ACE_EarPlugs",250];

        _crate addItemCargoGlobal ["ACE_FieldDressing",250];
        _crate addItemCargoGlobal ["ACE_packingBandage",250];
        _crate addItemCargoGlobal ["ACE_elasticBandage",250];
        _crate addItemCargoGlobal ["ACE_quikclot",250];

        _crate addItemCargoGlobal ["ACE_tourniquet",250];

        _crate addItemCargoGlobal ["ACE_personalAidKit",250];
        _crate addItemCargoGlobal ["ACE_surgicalKit",250];

        _crate addItemCargoGlobal ["ACE_bloodIV",250];
        _crate addItemCargoGlobal ["ACE_bloodIV_500",250];
        _crate addItemCargoGlobal ["ACE_salineIV",250];
        _crate addItemCargoGlobal ["ACE_salineIV_500",250];

        _crate addItemCargoGlobal ["ACE_morphine",250];
        _crate addItemCargoGlobal ["ACE_epinephrine",250];
        _crate addItemCargoGlobal ["ACE_adenosine",250];

        _crate addItemCargoGlobal ["ACE_bodyBag",250];


        //================== BACKPACKS ==================\\

        _crate addBackpackCargoGlobal ["B_Carryall_mcamo",10];

        //================== HELMETS ==================\\
        _crate addItemCargoGlobal ["DAR_Beret_Mar",50];
        _crate addItemCargoGlobal ["rhsusf_patrolcap_ocp",50];
    };
    // Container Apollo
    if (_companySelector in ['BRAVO', 'APOLLO'] or _alwaysAvalible) then {
    };
    // Container Sabre
    if (_companySelector in ['BRAVO', 'SABER'] or _alwaysAvalible) then {
    };
    // Container Banshee
    if (_companySelector in ['BRAVO', 'BANSHEE'] or _alwaysAvalible) then {
    };

    // Old Container
    if (_companySelector in ['BRAVO', 'VIKING', 'LANCER', 'APOLLO', 'SABER', 'BANSHEE'] or _alwaysAvalible) then {
        //================== RADIOS ==================\\
        _crate addItemCargoGlobal ["ACRE_PRC152",50];
        _crate addItemCargoGlobal ["ACRE_PRC117F",10];
        _crate addItemCargoGlobal ["ACRE_PRC343",12];

        //================== WEAPONS ==================\\
        _crate addItemCargoGlobal ["rhsusf_acc_anpeq15_bk_light",50];
        _crate addItemCargoGlobal ["rhsusf_acc_ELCAN",50];
        _crate addItemCargoGlobal ["rhsusf_acc_acog_mdo",50];
        _crate addItemCargoGlobal ["acc_flashlight",50];
        _crate addItemCargoGlobal ["rhsusf_acc_compm4",50];
        _crate addItemCargoGlobal ["rhsusf_acc_acog3",50];
        _crate addItemCargoGlobal ["rhsusf_acc_eotech_xps3",50];
        _crate addWeaponCargoGlobal ["rhs_weap_m240B",5];
        _crate addItemCargoGlobal ["tf47_optic_m3maaws",10];
        _crate addWeaponCargoGlobal ["tf47_m3maaws",10];
        _crate addWeaponCargoGlobal ["rhs_weap_M136_hp",10];

        //================== AMMO ==================\\
        _crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",250];
        _crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",250];
        _crate addMagazineCargoGlobal ["rhs_200rnd_556x45_M_SAW",250];
        _crate addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m62_tracer",250];
        _crate addMagazineCargoGlobal ["rhsusf_mag_15Rnd_9x19_JHP",150];
        _crate addMagazineCargoGlobal ["tf47_m3maaws_HEAT",50];
        _crate addMagazineCargoGlobal ["cav_m3maaws_heat_cs",50];
        _crate addMagazineCargoGlobal ["tf47_m3maaws_HE",50];
        _crate addMagazineCargoGlobal ["tf47_m3maaws_HEDP",50];
        _crate addMagazineCargoGlobal ["tf47_m3maaws_ILLUM",50];

        //================== GRENADES ==================\\
        _crate addMagazineCargoGlobal ["rhs_mag_m67",250];
        _crate addMagazineCargoGlobal ["SmokeShell",250];
        _crate addMagazineCargoGlobal ["SmokeShellRed",250];
        _crate addMagazineCargoGlobal ["SmokeShellBlue",250];
        _crate addMagazineCargoGlobal ["SmokeShellGreen",250];
        _crate addMagazineCargoGlobal ["SmokeShellOrange",250];
        _crate addMagazineCargoGlobal ["SmokeShellYellow",250];
        _crate addMagazineCargoGlobal ["SmokeShellPurple",250];
        _crate addMagazineCargoGlobal ["B_IR_Grenade",250];
        _crate addMagazineCargoGlobal ["ACE_M84",25];
        _crate addMagazineCargoGlobal ["rhs_mag_M441_HE",250];
        _crate addMagazineCargoGlobal ["rhs_mag_M433_HEDP",250];
        _crate addMagazineCargoGlobal ["rhs_mag_m714_White",250];
        _crate addMagazineCargoGlobal ["rhs_mag_m715_Green",250];
        _crate addMagazineCargoGlobal ["rhs_mag_m716_yellow",250];
        _crate addMagazineCargoGlobal ["rhs_mag_m713_Red",250];
        _crate addMagazineCargoGlobal ["ACE_HUNTIR_M203",250];
        _crate addMagazineCargoGlobal ["rhs_mag_M585_white",250];
        _crate addMagazineCargoGlobal ["rhs_mag_m662_red",250];
        _crate addMagazineCargoGlobal ["Chemlight_Blue",250];
        _crate addMagazineCargoGlobal ["Chemlight_Red",250];

        //================== EXPLOSIVES ==================\\
        _crate addItemCargoGlobal ["ACE_M26_Clacker",20];
        _crate addMagazineCargoGlobal ["SatchelCharge_Remote_Mag",50];
        _crate addMagazineCargoGlobal ["DemoCharge_Remote_Mag",50];
        _crate addMagazineCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag",50];
        _crate addMagazineCargoGlobal ["APERSMine_Range_Mag",50];
        _crate addMagazineCargoGlobal ["APERSMineDispenser_Mag",50];
        _crate addMagazineCargoGlobal ["APERSBoundingMine_Range_Mag",50];
        _crate addMagazineCargoGlobal ["ACE_FlareTripMine_Mag",50];
        _crate addMagazineCargoGlobal ["SLAMDirectionalMine_Wire_Mag",50];
        _crate addMagazineCargoGlobal ["rhs_mine_M19_mag",50];

        //================== ITEMS ==================\\
        _crate addItemCargoGlobal ["rhsusf_ANPVS_14",50];
        _crate addItemCargoGlobal ["Toolkit",10];
        _crate addItemCargoGlobal ["ACE_Flashlight_MX991",50];
        _crate addItemCargoGlobal ["ACE_CableTie",100];
        _crate addItemCargoGlobal ["ACE_wirecutter",10];
        _crate addItemCargoGlobal ["ACE_EntrenchingTool",20];
        _crate addItemCargoGlobal ["ACE_IR_Strobe_Item",20];
        _crate addItemCargoGlobal ["ACE_Chemlight_Shield",25];
        _crate addItemCargoGlobal ["ACE_VMH3",20];
        _crate addItemCargoGlobal ["ACE_VMM3",20];
        _crate addItemCargoGlobal ["Flagstack_Red",20];
        _crate addItemCargoGlobal ["Signpack_Mines",20];

        //================== MEDICAL ==================\\
        _crate addItemCargoGlobal ["ACE_EarPlugs",100];
        _crate addItemCargoGlobal ["ACE_quikclot",250];
        _crate addItemCargoGlobal ["ACE_tourniquet",50];
        _crate addItemCargoGlobal ["ACE_surgicalKit",5];
        _crate addItemCargoGlobal ["ACE_morphine",20];

        //================== BACKPACKS ==================\\
        _crate addBackpackCargoGlobal ["B_Carryall_mcamo",10];

        //================== HELMETS ==================\\
        _crate addItemCargoGlobal ["rhsusf_cvc_green_helmet",12];
        _crate addItemCargoGlobal ["rhsusf_ach_helmet_headset_ocp",12];
        _crate addItemCargoGlobal ["rhsusf_patrolcap_ocp",50];
    };
};

//          C H A R L I E   C O M P A N Y   C A R G O
if (_companySelector in _charlie or _alwaysAvalible) then {
    // Loadouts Bandit & Misfit
    if (_companySelector in ['CHARLIE', 'BANDIT', 'MISFIT'] or _alwaysAvalible) then {
    };

    _crate addItemCargoGlobal ["DAR_Beret_Mar",25];
    _crate addItemCargoGlobal ["rhsusf_patrolcap_ocp",25];
    _crate addItemCargoGlobal ["rhsusf_ach_helmet_ocp",25];
    _crate addItemCargoGlobal ["rhsusf_ach_helmet_ESS_ocp",25];
    _crate addItemCargoGlobal ["rhsusf_ach_helmet_headset_ocp",25];
    _crate addItemCargoGlobal ["rhsusf_ach_helmet_headset_ess_ocp",25];
    _crate addItemCargoGlobal ["rhsusf_ach_helmet_camo_ocp",25];
    _crate addItemCargoGlobal ["rhsusf_ach_helmet_ocp_norotos",25];
    _crate addItemCargoGlobal ["rhs_googles_black",25];
    _crate addItemCargoGlobal ["rhs_googles_clear",25];
    _crate addItemCargoGlobal ["rhsusf_oakley_goggles_blk",25];
    _crate addItemCargoGlobal ["rhsusf_oakley_goggles_clr",25];

    //================== RADIOS ==================\\

    _crate addItemCargoGlobal ["ACRE_PRC152",50];
    _crate addItemCargoGlobal ["ACRE_PRC117F",10];
    _crate addItemCargoGlobal ["ACRE_PRC343",12];

    //================== WEAPONS ==================\\

    _crate addItemCargoGlobal ["rhsusf_acc_anpeq15_bk_light",50];
    _crate addItemCargoGlobal ["acc_flashlight",50];
    _crate addItemCargoGlobal ["rhsusf_acc_ELCAN",50];
    _crate addItemCargoGlobal ["rhsusf_acc_acog_mdo",50];
    _crate addItemCargoGlobal ["rhsusf_acc_compm4",50];
    _crate addItemCargoGlobal ["rhsusf_acc_acog3",50];
    _crate addItemCargoGlobal ["rhsusf_acc_eotech_xps3",50];
    _crate addItemCargoGlobal ["tf47_optic_m3maaws",10];
    _crate addWeaponCargoGlobal ["tf47_m3maaws",10];
    _crate addWeaponCargoGlobal ["rhs_weap_m240B",5];
    _crate addWeaponCargoGlobal ["rhs_weap_M136_hp",10];
    _crate addWeaponCargoGlobal ["rhs_weap_m72a7",50];

    //================== AMMO ==================\\

    _crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",250];
    _crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",50];
    _crate addMagazineCargoGlobal ["rhs_200rnd_556x45_M_SAW",250];
    _crate addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m62_tracer",250];
    _crate addMagazineCargoGlobal ["tf47_m3maaws_HEAT",50];
    _crate addMagazineCargoGlobal ["cav_m3maaws_heat_cs",50];
    _crate addMagazineCargoGlobal ["tf47_m3maaws_HE",50];
    _crate addMagazineCargoGlobal ["tf47_m3maaws_HEDP",50];
    _crate addMagazineCargoGlobal ["tf47_m3maaws_ILLUM",50];

    //================== GRENADES ==================\\

    _crate addMagazineCargoGlobal ["rhs_mag_m67",250];
    _crate addMagazineCargoGlobal ["SmokeShell",250];
    _crate addMagazineCargoGlobal ["SmokeShellRed",250];
    _crate addMagazineCargoGlobal ["SmokeShellBlue",250];
    _crate addMagazineCargoGlobal ["SmokeShellGreen",250];
    _crate addMagazineCargoGlobal ["SmokeShellOrange",250];
    _crate addMagazineCargoGlobal ["SmokeShellYellow",250];
    _crate addMagazineCargoGlobal ["SmokeShellPurple",250];
    _crate addMagazineCargoGlobal ["B_IR_Grenade",250];
    _crate addMagazineCargoGlobal ["ACE_M84",25];
    _crate addMagazineCargoGlobal ["rhs_mag_M441_HE",250];
    _crate addMagazineCargoGlobal ["rhs_mag_M433_HEDP",250];
    _crate addMagazineCargoGlobal ["rhs_mag_m714_White",250];
    _crate addMagazineCargoGlobal ["rhs_mag_m715_Green",250];
    _crate addMagazineCargoGlobal ["rhs_mag_m716_yellow",250];
    _crate addMagazineCargoGlobal ["rhs_mag_m713_Red",250];
    _crate addMagazineCargoGlobal ["ACE_HUNTIR_M203",250];
    _crate addMagazineCargoGlobal ["rhs_mag_M585_white",250];
    _crate addMagazineCargoGlobal ["rhs_mag_m662_red",250];
    _crate addMagazineCargoGlobal ["Chemlight_Blue",250];
    _crate addMagazineCargoGlobal ["Chemlight_Red",250];

    //================== EXPLOSIVES ==================\\

    _crate addItemCargoGlobal ["ACE_M26_Clacker",20];
    _crate addMagazineCargoGlobal ["SatchelCharge_Remote_Mag",50];
    _crate addMagazineCargoGlobal ["DemoCharge_Remote_Mag",50];
    _crate addMagazineCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag",50];
    _crate addMagazineCargoGlobal ["APERSMine_Range_Mag",50];
    _crate addMagazineCargoGlobal ["APERSMineDispenser_Mag",50];
    _crate addMagazineCargoGlobal ["APERSBoundingMine_Range_Mag",50];
    _crate addMagazineCargoGlobal ["ACE_FlareTripMine_Mag",50];
    _crate addMagazineCargoGlobal ["SLAMDirectionalMine_Wire_Mag",50];
    _crate addMagazineCargoGlobal ["rhs_mine_M19_mag",50];

    //================== ITEMS ==================\\

    _crate addItemCargoGlobal ["rhsusf_ANPVS_14",50];
    _crate addItemCargoGlobal ["ACE_Flashlight_MX991",50];
    _crate addItemCargoGlobal ["ACE_CableTie",100];
    _crate addItemCargoGlobal ["ACE_wirecutter",10];
    _crate addItemCargoGlobal ["ACE_EntrenchingTool",20];
    _crate addItemCargoGlobal ["ACE_IR_Strobe_Item",20];
    _crate addItemCargoGlobal ["ACE_Chemlight_Shield",25];
    _crate addItemCargoGlobal ["ACE_VMH3",20];
    _crate addItemCargoGlobal ["ACE_VMM3",20];
    _crate addItemCargoGlobal ["Flagstack_Red",20];
    _crate addItemCargoGlobal ["Signpack_Mines",20];

    //================== MEDICAL ==================\\

    _crate addItemCargoGlobal ["ACE_EarPlugs",100];
    _crate addItemCargoGlobal ["ACE_quikclot",250];
    _crate addItemCargoGlobal ["ACE_tourniquet",50];
    _crate addItemCargoGlobal ["ACE_surgicalKit",5];
    _crate addItemCargoGlobal ["ACE_morphine",20];

    //================== BACKPACKS ==================\\

    _crate addBackpackCargoGlobal ["B_Carryall_mcamo",10];

};

//          R A N G E R   C O M P A N Y   C A R G O
if (_companySelector in _ranger or _alwaysAvalible) then {

    // Container Ranger
    if (_companySelector in ['RANGER'] or _alwaysAvalible) then {
        //================== RADIOS ==================\\

        _crate addItemCargoGlobal ["ACRE_PRC152",25];
        _crate addItemCargoGlobal ["ACRE_PRC343",25];

        //================== WEAPONS ==================\\

        _crate addItemCargoGlobal ["rhsusf_acc_compm4",50];
        _crate addItemCargoGlobal ["rhsusf_acc_ACOG_RMR",50];
        _crate addItemCargoGlobal ["rhsusf_acc_ELCAN",50];
        _crate addItemCargoGlobal ["rhsusf_acc_SpecterDR",50];
        _crate addItemCargoGlobal ["rhsusf_acc_eotech_552",50];    
        _crate addItemCargoGlobal ["rhsusf_acc_nt4_black",50];
        _crate addItemCargoGlobal ["rhsusf_acc_anpeq15_bk_light",50];
        _crate addItemCargoGlobal ["rhsusf_acc_grip4",50];
        _crate addItemCargoGlobal ["tf47_optic_m3maaws",10];
        _crate addWeaponCargoGlobal ["tf47_m3maaws",10];

        _crate addWeaponCargoGlobal ["rhs_weap_fim92",50];
        _crate addWeaponCargoGlobal ["rhs_weap_fgm148",50];
        _crate addWeaponCargoGlobal ["rhs_weap_M136_hp",50];
        _crate addWeaponCargoGlobal ["rhs_weap_m72a7",50];
        _crate addWeaponCargoGlobal ["rhsusf_weap_glock17g4",50];
        _crate addWeaponCargoGlobal ["rhs_weap_m32",50];

        //================== AMMO ==================\\

        _crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_PMAG",50];
        _crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",50];
        _crate addMagazineCargoGlobal ["rhs_200rnd_556x45_M_SAW",50];
        _crate addMagazineCargoGlobal ["rhsusf_mag_17Rnd_9x19_JHP",50];
        _crate addMagazineCargoGlobal ["rhs_fgm148_magazine_AT",10];
        _crate addMagazineCargoGlobal ["rhs_fim92_mag",10];
        _crate addMagazineCargoGlobal ["tf47_m3maaws_HEAT",50];
        _crate addMagazineCargoGlobal ["cav_m3maaws_heat_cs",50];
        _crate addMagazineCargoGlobal ["tf47_m3maaws_HE",50];
        _crate addMagazineCargoGlobal ["tf47_m3maaws_HEDP",50];
        _crate addMagazineCargoGlobal ["tf47_m3maaws_ILLUM",50];

        //================== GRENADES ==================\\

        _crate addMagazineCargoGlobal ["rhs_mag_m67",50];
        _crate addMagazineCargoGlobal ["SmokeShell",50];
        _crate addMagazineCargoGlobal ["SmokeShellRed",50];
        _crate addMagazineCargoGlobal ["SmokeShellGreen",50];
        _crate addMagazineCargoGlobal ["SmokeShellYellow",50];
        _crate addMagazineCargoGlobal ["ACE_M84",50];
        _crate addMagazineCargoGlobal ["rhs_mag_mk3a2",50];
        _crate addMagazineCargoGlobal ["rhs_mag_M441_HE",50];
        _crate addMagazineCargoGlobal ["rhs_mag_M433_HEDP",50];
        _crate addMagazineCargoGlobal ["rhs_mag_m714_White",50];
        _crate addMagazineCargoGlobal ["rhs_mag_m715_Green",50];
        _crate addMagazineCargoGlobal ["rhs_mag_m716_yellow",50];
        _crate addMagazineCargoGlobal ["rhs_mag_m713_Red",50];
        _crate addMagazineCargoGlobal ["ACE_HUNTIR_M203",50];
        _crate addMagazineCargoGlobal ["UGL_FlareCIR_F",50];
        _crate addMagazineCargoGlobal ["rhs_mag_M585_white",50];
        _crate addMagazineCargoGlobal ["rhs_mag_m661_green",50];
        _crate addMagazineCargoGlobal ["rhs_mag_m662_red",50];
        _crate addMagazineCargoGlobal ["Chemlight_Blue",50];
        _crate addMagazineCargoGlobal ["Chemlight_Red",50];
        _crate addMagazineCargoGlobal ["ACE_HandFlare_White",50];
        _crate addMagazineCargoGlobal ["ACE_HandFlare_Red",50];
        _crate addMagazineCargoGlobal ["ACE_HandFlare_Green",50];
        _crate addMagazineCargoGlobal ["rhsusf_mag_6Rnd_M441_HE",50];
        _crate addMagazineCargoGlobal ["rhsusf_mag_6Rnd_M433_HEDP",50];

        //================== EXPLOSIVES ==================\\

        _crate addMagazineCargoGlobal ["SatchelCharge_Remote_Mag",50];
        _crate addMagazineCargoGlobal ["DemoCharge_Remote_Mag",50];
        _crate addMagazineCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag",50];
        _crate addMagazineCargoGlobal ["APERSMine_Range_Mag",50];
        _crate addMagazineCargoGlobal ["APERSBoundingMine_Range_Mag",50];
        _crate addMagazineCargoGlobal ["ACE_FlareTripMine_Mag",50];
        _crate addMagazineCargoGlobal ["SLAMDirectionalMine_Wire_Mag",50];
        _crate addMagazineCargoGlobal ["rhs_mine_M19_mag",50];

        //================== ITEMS ==================\\

        _crate addItemCargoGlobal ["rhsusf_ANPVS_15",50];
        _crate addItemCargoGlobal ["ACE_IR_Strobe_Item",50];
        _crate addItemCargoGlobal ["ACE_M26_Clacker",50];
        _crate addItemCargoGlobal ["ACE_DefusalKit",50];
        _crate addItemCargoGlobal ["ACE_CableTie",50];
        _crate addItemCargoGlobal ["ACE_EntrenchingTool",50];
        _crate addItemCargoGlobal ["ACE_wirecutter",50];
        _crate addItemCargoGlobal ["ACE_ATragMX",10];
        _crate addItemCargoGlobal ["ACE_HuntIR_monitor",50];
        _crate addItemCargoGlobal ["ACE_Kestrel4500",10];
        _crate addItemCargoGlobal ["ACE_UAVBattery",20];
        _crate addItemCargoGlobal ["ACE_Tripod",20];
        _crate addItemCargoGlobal ["ACE_SpottingScope",20];
        _crate addItemCargoGlobal ["ItemAndroid",20];
        _crate addItemCargoGlobal ["ItemcTab",20];
        _crate addItemCargoGlobal ["ACE_microDAGR",20];
        _crate addItemCargoGlobal ["ACE_Vector",20];
        _crate addItemCargoGlobal ["rhsusf_bino_leopold_mk4",20];
        _crate addItemCargoGlobal ["ACE_MX2A",20];
        _crate addItemCargoGlobal ["Laserdesignator_01_khk_F",20];
        _crate addItemCargoGlobal ["ACE_Altimeter",20];
        _crate addItemCargoGlobal ["B_UavTerminal",20];

        //================== MEDICAL ==================\\

        _crate addItemCargoGlobal ["ACE_EarPlugs",250];

        _crate addItemCargoGlobal ["ACE_FieldDressing",250];
        _crate addItemCargoGlobal ["ACE_packingBandage",250];
        _crate addItemCargoGlobal ["ACE_elasticBandage",250];
        _crate addItemCargoGlobal ["ACE_quikclot",250];

        _crate addItemCargoGlobal ["ACE_tourniquet",250];

        _crate addItemCargoGlobal ["ACE_personalAidKit",50];
        _crate addItemCargoGlobal ["ACE_surgicalKit",50];

        _crate addItemCargoGlobal ["ACE_salineIV",250];
        _crate addItemCargoGlobal ["ACE_salineIV_500",250];

        _crate addItemCargoGlobal ["ACE_morphine",50];
        _crate addItemCargoGlobal ["ACE_epinephrine",50];
        _crate addItemCargoGlobal ["ACE_adenosine",50];

        _crate addItemCargoGlobal ["ACE_bodyBag",50];


        //================== BACKPACKS ==================\\

        _crate addBackpackCargoGlobal ["rhsgref_hidf_alicepack",15];
        _crate addBackpackCargoGlobal ["B_UAV_01_backpack_F",15];
        _crate addBackpackCargoGlobal ["B_AssaultPack_sgg",15];
        _crate addBackpackCargoGlobal ["B_rhsusf_B_BACKPACK",15];

        //================== HELMETS ==================\\
        _crate addItemCargoGlobal ["DAR_Beret_Mar",50];
    };

    // Container Sniper
    if (_companySelector in ['SNIPER'] or _alwaysAvalible) then {
        //================== RADIOS ==================\\

        //================== WEAPONS ==================\\

        _crate addWeaponCargoGlobal ["rhs_weap_sr25_d",6];
        _crate addWeaponCargoGlobal ["rhs_weap_XM2010",6];
        _crate addWeaponCargoGlobal ["rhs_weap_M107",6];
        _crate addItemCargoGlobal ["rhsusf_acc_premier_anpvs27",20];
        _crate addItemCargoGlobal ["rhsusf_acc_M8541",20];
        _crate addItemCargoGlobal ["rhsusf_acc_M2010S_wd",20];
        _crate addItemCargoGlobal ["rhsusf_acc_SR25S",20];
        _crate addItemCargoGlobal ["rhsusf_acc_M2010S_wd",20];
        _crate addItemCargoGlobal ["rhsusf_acc_M2010S_wd",20];
        _crate addItemCargoGlobal ["rhsusf_acc_compm4",20];
        _crate addItemCargoGlobal ["rhsusf_acc_ACOG_RMR",20];
        _crate addItemCargoGlobal ["rhsusf_acc_ELCAN",50];
        _crate addItemCargoGlobal ["rhsusf_acc_eotech_552",20];
        _crate addItemCargoGlobal ["rhsusf_acc_anpeq15_bk_light",20];
        _crate addItemCargoGlobal ["rhsusf_acc_nt4_black",20];
        _crate addItemCargoGlobal ["rhsusf_acc_harris_bipod",20];

        //================== AMMO ==================\\

        _crate addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_SR25_m62_Mag",50];
        _crate addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010",50];
        _crate addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_SR25_m118_special_Mag",50];
        _crate addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_SR25_m993_Mag",50];
        _crate addMagazineCargoGlobal ["rhsusf_mag_10Rnd_STD_50BMG_M33",50];
        _crate addMagazineCargoGlobal ["rhsusf_mag_10Rnd_STD_50BMG_mk211",50];

        //================== GRENADES ==================\\


        //================== EXPLOSIVES ==================\\

        //================== ITEMS ==================\\

        _crate addItemCargoGlobal ["ACE_ATragMX",20];
        _crate addItemCargoGlobal ["ACE_Kestrel4500",20];
        _crate addItemCargoGlobal ["ACE_Tripod",20];
        _crate addItemCargoGlobal ["ItemAndroid",20];
        _crate addItemCargoGlobal ["ItemcTab",20];
        _crate addItemCargoGlobal ["ACE_Vector",20];
        _crate addItemCargoGlobal ["rhsusf_bino_leopold_mk4",20];
        _crate addItemCargoGlobal ["ACE_RangeCard",20];

        //================== BACKPACKS ==================\\

        _crate addBackpackCargoGlobal ["rhsgref_hidf_alicepack",15];
        _crate addBackpackCargoGlobal ["B_UAV_01_backpack_F",15];
        _crate addBackpackCargoGlobal ["B_AssaultPack_sgg",15];
        _crate addBackpackCargoGlobal ["B_rhsusf_B_BACKPACK",15];
        _crate addBackpackCargoGlobal ["ace_gunbag",15];

        //================== GHILLIE ==================\\
        _crate addItemCargoGlobal ["U_B_FullGhillie_ard",2];
        _crate addItemCargoGlobal ["U_B_T_FullGhillie_tna_F",2];
        _crate addItemCargoGlobal ["U_B_FullGhillie_lsh",2];
        _crate addItemCargoGlobal ["U_B_FullGhillie_sard",2];

        //================== HELMETS ==================\\
    };
};

if !(_companySelector in (["FULL", "ALL"] + _officer + _alpha + _bravo + _charlie + _ranger)) then {
    [formatText["%1 (Starter Crate) is using a unsupported cartegory '%2'.", _crate, _companySelector]] call FUNC(logError);
    if (!isMultiplayer || {is3DENMultiplayer}) then { systemChat format["ERROR: %1 (Starter Crate) is using a unsupported cartegory '%2'. This will cause the crate to be empty.", _crate, _companySelector] };
};