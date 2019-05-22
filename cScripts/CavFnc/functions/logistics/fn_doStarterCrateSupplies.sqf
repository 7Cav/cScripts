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
    ["_companySelector", "none"]
];

clearweaponcargoGlobal _crate;
clearmagazinecargoGlobal _crate;
clearitemcargoGlobal _crate;
clearbackpackcargoGlobal _crate;

//------------------ A L P H A   C O M P A N Y --------------------\\

if (_companySelector == "alpha") then {

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
    _crate addMagazineCargoGlobal ["rhs_100Rnd_762x51_m62_tracer",250];
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

    //================== EXPLOSIVES ==================\\

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

    //================== BACKPACKS ==================\\

    //================== HELMETS ==================\\
    _crate addItemCargoGlobal ["rhsusf_ihadss",12];
    _crate addItemCargoGlobal ["rhsusf_hgu56p_visor",12];
    _crate addItemCargoGlobal ["rhsusf_hgu56p_visor_green",12];
    _crate addItemCargoGlobal ["rhsusf_hgu56p_visor_mask_black",12];
    _crate addItemCargoGlobal ["H_PilotHelmetFighter_B",6];
    _crate addItemCargoGlobal ["DAR_Beret_Mar",50];
    _crate addItemCargoGlobal ["rhsusf_patrolcap_ocp",50];
};

//------------------B R A V O   C O M P A N Y --------------------\\

if (_companySelector == "bravo") then {
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
    _crate addMagazineCargoGlobal ["rhs_100Rnd_762x51_m62_tracer",250];
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

//------------------ C H A R L I E   C O M P A N Y --------------------\\

if (_companySelector == "charlie") then {
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
    _crate addMagazineCargoGlobal ["rhs_100Rnd_762x51_m62_tracer",250];
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

    //================== HELMETS ==================\\
    _crate addItemCargoGlobal ["DAR_Beret_Mar",50];
    _crate addItemCargoGlobal ["rhsusf_ach_helmet_camo_ocp",50];
    _crate addItemCargoGlobal ["rhsusf_ach_helmet_headset_ocp",50];
    _crate addItemCargoGlobal ["rhsusf_patrolcap_ocp",50];
};

//------------------ M E D I C A L   P L A T O O N --------------------\\

if (_companySelector == "medical") then {
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

//------------------ H E A V Y   W E A P O N S --------------------\\

if (_companySelector == "heavyweapons") then {
    //================== RADIOS ==================\\

    _crate addItemCargoGlobal ["ACRE_PRC152",50];
    _crate addItemCargoGlobal ["ACRE_PRC117F",10];
    _crate addItemCargoGlobal ["ACRE_PRC343",12];

    //================== WEAPONS ==================\\

    _crate addItemCargoGlobal ["rhsusf_acc_eotech_552",50];
    _crate addItemCargoGlobal ["rhsusf_acc_anpeq15_bk_light",50];
    _crate addItemCargoGlobal ["acc_flashlight",50];
    _crate addItemCargoGlobal ["rhsusf_acc_ELCAN",50];
    _crate addItemCargoGlobal ["rhsusf_acc_compm4",50];
    _crate addItemCargoGlobal ["rhsusf_acc_acog3",50];
    _crate addItemCargoGlobal ["rhsusf_acc_eotech_xps3",50];
    _crate addItemCargoGlobal ["rhsusf_acc_acog_mdo",50];
    _crate addWeaponCargoGlobal ["rhs_weap_m240B",5];
    _crate addWeaponCargoGlobal ["rhs_weap_fim92",10];
    _crate addWeaponCargoGlobal ["rhs_weap_fgm148",10];
    _crate addItemCargoGlobal ["tf47_optic_m3maaws",10];
    _crate addWeaponCargoGlobal ["tf47_m3maaws",10];
    _crate addWeaponCargoGlobal ["rhs_weap_M136_hp",10];

    //================== AMMO ==================\\

    _crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",250];
    _crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",250];
    _crate addMagazineCargoGlobal ["rhs_200rnd_556x45_M_SAW",250];
    _crate addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m61_ap",250];
    _crate addMagazineCargoGlobal ["rhsusf_mag_15Rnd_9x19_JHP",150];
    _crate addMagazineCargoGlobal ["rhs_fgm148_magazine_AT",50];
    _crate addMagazineCargoGlobal ["rhs_fim92_mag",50];
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
    _crate addItemCargoGlobal ["ACE_M26_Clacker",20];
    _crate addItemCargoGlobal ["ACE_DefusalKit",20];
    _crate addItemCargoGlobal ["ACE_Flashlight_MX991",50];
    _crate addItemCargoGlobal ["ACE_CableTie",50];
    _crate addItemCargoGlobal ["ACE_wirecutter",10];
    _crate addItemCargoGlobal ["ACE_EntrenchingTool",20];
    _crate addItemCargoGlobal ["ACE_RangeTable_82mm",20];
    _crate addItemCargoGlobal ["ACE_VMH3",20];
    _crate addItemCargoGlobal ["ACE_VMM3",20];
    _crate addItemCargoGlobal ["ACE_IR_Strobe_Item",20];
    _crate addItemCargoGlobal ["Flagstack_Red",10];
    _crate addItemCargoGlobal ["Signpack_Mines",10];
    _crate addItemCargoGlobal ["ACE_Fortify",10];

    //================== MEDICAL ==================\\

    _crate addItemCargoGlobal ["ACE_EarPlugs",100];
    _crate addItemCargoGlobal ["ACE_quikclot",250];
    _crate addItemCargoGlobal ["ACE_tourniquet",50];
    _crate addItemCargoGlobal ["ACE_surgicalKit",5];
    _crate addItemCargoGlobal ["ACE_morphine",20];

    //================== BACKPACKS ==================\\

    _crate addBackpackCargoGlobal ["B_Carryall_mcamo",10];

    //================== HELMETS ==================\\
    _crate addItemCargoGlobal ["DAR_Beret_Mar",50];
    _crate addItemCargoGlobal ["rhsusf_patrolcap_ocp",50];
};

//------------------ R A N G E R   C O M P A N Y --------------------\\

if (_companySelector == "ranger") then {
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

//------------------ S N I P E R   S E C T I O N --------------------\\

if (_companySelector == "sniper") then {
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

//------------------ F U L L   C R A T E --------------------\\

if (_companySelector == "full") then {

    //================== RADIOS ==================\\

    _crate addItemCargoGlobal ["ACRE_PRC152",10];
    _crate addItemCargoGlobal ["ACRE_PRC117F",10];
    _crate addItemCargoGlobal ["ACRE_PRC343",12];

    //================== WEAPONS ==================\\

    _crate addItemCargoGlobal ["rhsusf_acc_eotech_552",50];
    _crate addItemCargoGlobal ["rhsusf_acc_anpeq15_bk_light",50];
    _crate addItemCargoGlobal ["rhsusf_acc_ELCAN",50];
    _crate addItemCargoGlobal ["rhs_optic_maaws",10];
    _crate addWeaponCargoGlobal ["rhs_weap_m240B",5];
    _crate addWeaponCargoGlobal ["rhs_weap_fim92",10];
    _crate addWeaponCargoGlobal ["rhs_weap_fgm148",10];
    _crate addWeaponCargoGlobal ["rhs_weap_maaws",10];
    _crate addWeaponCargoGlobal ["rhs_weap_M136_hp",10];

    //================== AMMO ==================\\

    _crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",250];
    _crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",250];
    _crate addMagazineCargoGlobal ["rhs_200rnd_556x45_M_SAW",250];
    _crate addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m61_ap",250];
    _crate addMagazineCargoGlobal ["rhsusf_mag_15Rnd_9x19_JHP",150];
    _crate addMagazineCargoGlobal ["rhs_fgm148_magazine_AT",50];
    _crate addMagazineCargoGlobal ["rhs_fim92_mag",50];
    _crate addMagazineCargoGlobal ["rhs_mag_maaws_HEDP",50];
    _crate addMagazineCargoGlobal ["rhs_mag_maaws_HEAT",50];
    _crate addMagazineCargoGlobal ["rhs_mag_maaws_HE",50];

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
    _crate addMagazineCargoGlobal ["Chemlight_Blue",250];
    _crate addMagazineCargoGlobal ["Chemlight_Red",250];

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

    _crate addItemCargoGlobal ["rhsusf_ANPVS_14",50];
    _crate addItemCargoGlobal ["acc_pointer_ir",50];
    _crate addItemCargoGlobal ["Toolkit",10];
    _crate addItemCargoGlobal ["ACE_M26_Clacker",20];
    _crate addItemCargoGlobal ["ACE_DefusalKit",20];
    _crate addItemCargoGlobal ["ACE_Flashlight_MX991",50];
    _crate addItemCargoGlobal ["ACE_CableTie",50];
    _crate addItemCargoGlobal ["ACE_wirecutter",10];
    _crate addItemCargoGlobal ["ACE_EntrenchingTool",20];
    _crate addItemCargoGlobal ["ACE_RangeTable_82mm",20];
    _crate addItemCargoGlobal ["ACE_VMH3",20];
    _crate addItemCargoGlobal ["ACE_VMM3",20];
    _crate addItemCargoGlobal ["ACE_IR_Strobe_Item",20];
    _crate addItemCargoGlobal ["Flagstack_Red",10];
    _crate addItemCargoGlobal ["Signpack_Mines",10];
    _crate addItemCargoGlobal ["ACE_Fortify",10];
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
    _crate addBackpackCargoGlobal ["B_AssaultPack_mcamo",10];

    //================== HELMETS ==================\\
    _crate addItemCargoGlobal ["DAR_Beret_Mar",50];
    _crate addItemCargoGlobal ["rhsusf_patrolcap_ocp",50];
};

if (_companySelector == "none") then {};
