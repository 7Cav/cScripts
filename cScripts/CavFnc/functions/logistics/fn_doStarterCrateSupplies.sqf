/*
 * Author: CPL.Brostrom.A
 * This function changes the inventory of a given object and gives it a new.
 *
 * Arguments:
 * 0: Crate <OBJECT>
 * 1: Set platoon type.
 *
 * Example:
 * [this,0.5] call cScripts_fnc_doStarterCrateSupplies;
 * [this,1] call cScripts_fnc_doStarterCrateSupplies;
 */

#include "..\script_component.hpp";

if (!isServer) exitWith {};

params [
    ["_crate", objNull, [objNull]],
    ["_platoonSelector", "none"]
];

clearweaponcargoGlobal _crate;
clearmagazinecargoGlobal _crate;
clearitemcargoGlobal _crate;
clearbackpackcargoGlobal _crate;

//------------------ A L P H A   C O M P A N Y --------------------\\

if (_platoonSelector == "alpha") then {

    //================== RADIOS ==================\\

    _crate addItemCargoGlobal ["ACRE_PRC152",50];
    _crate addItemCargoGlobal ["ACRE_PRC117F",10];

    //================== WEAPONS ==================\\

    _crate addWeaponCargoGlobal ["rhs_weap_m4a1_m320",2];
    _crate addWeaponCargoGlobal ["rhs_weap_m249_pip_L",2];
    _crate addWeaponCargoGlobal ["tf47_at4_HP",6];
    _crate addItemCargoGlobal ["rhsusf_acc_anpeq15_bk_light",50];
    _crate addItemCargoGlobal ["rhsusf_acc_ELCAN",50];

    //================== AMMO ==================\\

    _crate addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY),250];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY_TRACER),50];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_AR0),250];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_SECONDARY0),30];

    //================== GRENADES ==================\\

    _crate addMagazineCargoGlobal [QUOTE(_GRENADE),50];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),50];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_RED),25];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),25];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_GREEN),25];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_ORANGE),25];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_YELLOW),25];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_PURPLE),25];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_IR),25];
    _crate addMagazineCargoGlobal ["ACE_M84",25];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELL0),25];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELL1),25];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKE),25];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKEGREEN),25];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKEYELLOW),25];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKERED),25];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLHUNTIR),25];
    _crate addMagazineCargoGlobal [QUOTE(_GLFLARE),25];
    _crate addMagazineCargoGlobal ["Chemlight_Blue",25];
    _crate addMagazineCargoGlobal ["Chemlight_Red",25];

    //================== EXPLOSIVES ==================\\

    //================== ITEMS ==================\\

    _crate addItemCargoGlobal ["Toolkit",50];
    _crate addItemCargoGlobal ["ACE_Flashlight_MX991",50];
    _crate addItemCargoGlobal ["itemcTabHCam",50];
    _crate addItemCargoGlobal ["ACE_CableTie",50];

    //================== MEDICAL ==================\\

    _crate addItemCargoGlobal ["ACE_EarPlugs",50];

    _crate addItemCargoGlobal ["ACE_quikclot",250];

    _crate addItemCargoGlobal ["ACE_tourniquet",25];

    _crate addItemCargoGlobal ["ACE_surgicalKit",10];

    _crate addItemCargoGlobal ["ACE_morphine",25];

    //================== BACKPACKS ==================\\

    //================== HELMETS ==================\\
    _crate addItemCargoGlobal ["rhsusf_hgu56p_visor_mask_black",12];
    _crate addItemCargoGlobal ["rhsusf_hgu56p_visor_mask_black_skull",12];
    _crate addItemCargoGlobal ["rhsusf_hgu56p_visor_mask_Empire_black",12];
    _crate addItemCargoGlobal ["rhsusf_hgu56p_visor_mask_smiley",12];
    _crate addItemCargoGlobal ["rhsusf_hgu56p_visor_usa",12];
    _crate addItemCargoGlobal ["rhsusf_hgu56p_visor_pink",12];
    _crate addItemCargoGlobal ["rhsusf_hgu56p_visor_mask_pink",12];
    _crate addItemCargoGlobal ["H_PilotHelmetFighter_B",6];
};

//------------------B R A V O   C O M P A N Y --------------------\\

if (_platoonSelector == "bravo") then {
    //================== RADIOS ==================\\

    _crate addItemCargoGlobal ["ACRE_PRC152",50];
    _crate addItemCargoGlobal ["ACRE_PRC117F",10];

    //================== WEAPONS ==================\\

    _crate addItemCargoGlobal ["rhsusf_acc_anpeq15_bk_light",50];
    _crate addItemCargoGlobal ["rhsusf_acc_ELCAN",50];
    _crate additemCargoGlobal ["rhsusf_acc_eotech_552",50];
    _crate additemCargoGlobal ["tf47_optic_m3maaws",10];
    _crate addWeaponCargoGlobal ["rhs_weap_m240B",5];
    _crate addWeaponCargoGlobal ["tf47_m3maaws",10];
    _crate addWeaponCargoGlobal ["tf47_at4_HP",10];

    //================== AMMO ==================\\

    _crate addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY),250];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY_TRACER),250];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_AR0),250];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_AR1),250];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_SECONDARY0),150];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER3),25];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER4),25];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER5),25];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER6),25];

    //================== GRENADES ==================\\

    _crate addMagazineCargoGlobal [QUOTE(_GRENADE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_RED),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_GREEN),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_ORANGE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_YELLOW),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_PURPLE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_IR),250];
    _crate addMagazineCargoGlobal ["ACE_M84",25];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELL0),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELL1),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKEGREEN),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKEYELLOW),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKERED),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLHUNTIR),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLFLARE),250];
    _crate addMagazineCargoGlobal ["Chemlight_Blue",250];
    _crate addMagazineCargoGlobal ["Chemlight_Red",250];

    //================== EXPLOSIVES ==================\\

    //================== ITEMS ==================\\

    _crate addItemCargoGlobal ["rhsusf_ANPVS_14",50];
    _crate addItemCargoGlobal ["Toolkit",10];
    _crate addItemCargoGlobal ["ACE_Flashlight_MX991",50];
    _crate addItemCargoGlobal ["ACE_CableTie",100];
    _crate addItemCargoGlobal ["ACE_wirecutter",10];
    _crate addItemCargoGlobal ["ACE_EntrenchingTool",20];
    _crate addWeaponCargoGlobal ["ACE_IR_Strobe_Item",20];

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
};

//------------------ C H A R L I E   C O M P A N Y --------------------\\

if (_platoonSelector == "charlie") then {
    //================== RADIOS ==================\\

    _crate addItemCargoGlobal ["ACRE_PRC152",50];
    _crate addItemCargoGlobal ["ACRE_PRC117F",10];

    //================== WEAPONS ==================\\

    _crate additemCargoGlobal ["rhsusf_acc_eotech_552",50];
    _crate addItemCargoGlobal ["rhsusf_acc_anpeq15_bk_light",50];
    _crate addItemCargoGlobal ["rhsusf_acc_ELCAN",50];
    _crate additemCargoGlobal ["tf47_optic_m3maaws",10];
    _crate addWeaponCargoGlobal ["tf47_m3maaws",10];
    _crate addWeaponCargoGlobal ["tf47_at4_HP",10];
    _crate addWeaponCargoGlobal ["rhs_weap_m72a7",50];

    //================== AMMO ==================\\

    _crate addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY),250];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY_TRACER),50];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_AR0),250];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER3),50];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER4),50];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER5),50];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER6),50];

    //================== GRENADES ==================\\

    _crate addMagazineCargoGlobal [QUOTE(_GRENADE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_RED),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_GREEN),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_ORANGE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_YELLOW),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_PURPLE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_IR),250];
    _crate addMagazineCargoGlobal ["ACE_M84",25];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELL0),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELL1),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKEGREEN),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKEYELLOW),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKERED),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLHUNTIR),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLFLARE),250];
    _crate addMagazineCargoGlobal ["Chemlight_Blue",250];
    _crate addMagazineCargoGlobal ["Chemlight_Red",250];

    //================== EXPLOSIVES ==================\\

    //================== ITEMS ==================\\

    _crate addItemCargoGlobal ["rhsusf_ANPVS_14",50];
    _crate addItemCargoGlobal ["ACE_Flashlight_MX991",50];
    _crate addItemCargoGlobal ["ACE_CableTie",100];
    _crate addItemCargoGlobal ["ACE_wirecutter",10];
    _crate addItemCargoGlobal ["ACE_EntrenchingTool",20];
    _crate additemCargoGlobal ["ACE_IR_Strobe_Item",20];

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
};

//------------------ M E D I C A L   P L A T O O N --------------------\\

if (_platoonSelector == "medical") then {
    //================== RADIOS ==================\\

    _crate addItemCargoGlobal ["ACRE_PRC152",10];
    _crate addItemCargoGlobal ["ACRE_PRC117F",5];

    //================== WEAPONS ==================\\

    _crate additemCargoGlobal ["rhsusf_acc_eotech_552",10];
    _crate addItemCargoGlobal ["rhsusf_acc_anpeq15_bk_light",50];
    _crate addItemCargoGlobal ["rhsusf_acc_ELCAN",50];

    //================== AMMO ==================\\

    _crate addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY),250];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY_TRACER),250];

    //================== GRENADES ==================\\

    _crate addMagazineCargoGlobal [QUOTE(_GRENADE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_RED),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_GREEN),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_ORANGE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_YELLOW),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_PURPLE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_IR),250];
    _crate addMagazineCargoGlobal ["ACE_M84",25];
    _crate addMagazineCargoGlobal [QUOTE(_GLFLARE),250];
    _crate addMagazineCargoGlobal ["Chemlight_Blue",250];
    _crate addMagazineCargoGlobal ["Chemlight_Red",250];

    //================== EXPLOSIVES ==================\\


    //================== ITEMS ==================\\

    _crate addItemCargoGlobal ["rhsusf_ANPVS_14",50];
    _crate addItemCargoGlobal ["ACE_Flashlight_MX991",50];
    _crate addItemCargoGlobal ["ACE_CableTie",100];
    _crate addItemCargoGlobal ["ACE_wirecutter",10];
    _crate addItemCargoGlobal ["ACE_EntrenchingTool",20];
    _crate additemCargoGlobal ["ACE_IR_Strobe_Item",20];

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
};

//------------------ H E A V Y   W E A P O N S --------------------\\

if (_platoonSelector == "heavyweapons") then {
    //================== RADIOS ==================\\

    _crate addItemCargoGlobal ["ACRE_PRC152",50];
    _crate addItemCargoGlobal ["ACRE_PRC117F",10];

    //================== WEAPONS ==================\\

    _crate additemCargoGlobal ["rhsusf_acc_eotech_552",50];
    _crate addItemCargoGlobal ["rhsusf_acc_anpeq15_bk_light",50];
    _crate addItemCargoGlobal ["rhsusf_acc_ELCAN",50];
    _crate additemCargoGlobal ["tf47_optic_m3maaws",10];
    _crate addWeaponCargoGlobal ["rhs_weap_m240B",5];
    _crate addWeaponCargoGlobal ["rhs_weap_fim92",10];
    _crate addWeaponCargoGlobal ["rhs_weap_fgm148",10];
    _crate addWeaponCargoGlobal ["tf47_m3maaws",10];
    _crate addWeaponCargoGlobal ["tf47_at4_HP",10];

    //================== AMMO ==================\\

    _crate addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY),250];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY_TRACER),250];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_AR0),250];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_AR1),250];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_SECONDARY0),150];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER0),50];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER1),50];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER2),50];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER3),50];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER4),50];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER5),50];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER6),50];

    //================== GRENADES ==================\\

    _crate addMagazineCargoGlobal [QUOTE(_GRENADE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_RED),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_GREEN),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_ORANGE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_YELLOW),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_PURPLE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_IR),250];
    _crate addMagazineCargoGlobal ["ACE_M84",25];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELL0),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELL1),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKEGREEN),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKEYELLOW),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKERED),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLHUNTIR),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLFLARE),250];
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
    _crate addItemCargoGlobal ["Toolkit",10];
    _crate addItemCargoGlobal ["ACE_M26_Clacker",20];
    _crate addItemCargoGlobal ["ACE_DefusalKit",20];
    _crate addItemCargoGlobal ["ACE_Flashlight_MX991",50];
    _crate addItemCargoGlobal ["ACE_CableTie",50];
    _crate addItemCargoGlobal ["ACE_wirecutter",10];
    _crate addItemCargoGlobal ["ACE_EntrenchingTool",20];
    _crate addItemCargoGlobal ["ACE_RangeTable_82mm",20];
    _crate additemCargoGlobal ["ACE_VMH3",20];
    _crate additemCargoGlobal ["ACE_VMM3",20];
    _crate additemCargoGlobal ["ACE_IR_Strobe_Item",20];
    _crate additemCargoGlobal ["Flagstack_Red",10];
    _crate additemCargoGlobal ["Signpack_Mines",10];
    _crate additemCargoGlobal ["ACE_Fortify",10];

    //================== MEDICAL ==================\\

    _crate addItemCargoGlobal ["ACE_EarPlugs",100];
    _crate addItemCargoGlobal ["ACE_quikclot",250];
    _crate addItemCargoGlobal ["ACE_tourniquet",50];
    _crate addItemCargoGlobal ["ACE_surgicalKit",5];
    _crate addItemCargoGlobal ["ACE_morphine",20];

    //================== BACKPACKS ==================\\

    _crate addBackpackCargoGlobal ["B_Carryall_mcamo",10];
};

//------------------ R A N G E R   C O M P A N Y --------------------\\

if (_platoonSelector == "ranger") then {
    //================== RADIOS ==================\\

    _crate addItemCargoGlobal ["ACRE_PRC152",25];
    _crate addItemCargoGlobal ["ACRE_PRC117F",10];

    //================== WEAPONS ==================\\

    _crate additemCargoGlobal ["rhsusf_acc_compm4",50];
    _crate additemCargoGlobal ["rhsusf_acc_ACOG_RMR",50];
    _crate addItemCargoGlobal ["rhsusf_acc_ELCAN",50];
    _crate addItemCargoGlobal ["rhsusf_acc_SpecterDR",50];
    _crate additemCargoGlobal ["rhsusf_acc_eotech_552",50];
    _crate additemCargoGlobal ["rhsusf_acc_anpeq15_bk_light",50];
    _crate additemCargoGlobal ["rhsusf_acc_anpeq15A",50];
    _crate additemCargoGlobal ["rhsusf_acc_nt4_black",50];
    _crate additemCargoGlobal ["rhsusf_acc_harris_bipod",50];
    _crate additemCargoGlobal ["rhsusf_acc_grip1",50];
    _crate additemCargoGlobal ["tf47_optic_m3maaws",50];

    _crate addWeaponCargoGlobal ["rhs_weap_m240B",25];
    _crate addWeaponCargoGlobal ["rhsusf_weap_m9",15];

    _crate addWeaponCargoGlobal ["rhs_weap_fim92",50];
    _crate addWeaponCargoGlobal ["rhs_weap_fgm148",50];
    _crate addWeaponCargoGlobal ["tf47_m3maaws",50];
    _crate addWeaponCargoGlobal ["tf47_at4_HP",50];
    _crate addWeaponCargoGlobal ["rhs_weap_m72a7",50];

    //================== AMMO ==================\\

    _crate addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY),250];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY_TRACER),250];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_AR0),250];
    _crate addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m61_ap",250];
    _crate addMagazineCargoGlobal ["rhsusf_mag_15Rnd_9x19_FMJ",150];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER0),50];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER1),50];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER2),50];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER3),50];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER4),50];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER5),50];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER6),50];

    //================== GRENADES ==================\\

    _crate addMagazineCargoGlobal [QUOTE(_GRENADE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_RED),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_GREEN),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_ORANGE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_YELLOW),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_PURPLE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_IR),250];
    _crate addMagazineCargoGlobal ["ACE_M84",25];
    _crate addMagazineCargoGlobal ["rhs_mag_an_m14_th3",250];
    _crate addMagazineCargoGlobal ["rhs_mag_m7a3_cs",250];
    _crate addMagazineCargoGlobal ["rhs_mag_mk3a2",250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELL0),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELL1),250];
    _crate addMagazineCargoGlobal ["rhs_mag_M397_HET",250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKEGREEN),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKEYELLOW),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKERED),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLHUNTIR),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLFLARE),250];
    _crate addMagazineCargoGlobal ["rhs_mag_m661_green",250];
    _crate addMagazineCargoGlobal ["rhs_mag_m662_red",250];
    _crate addMagazineCargoGlobal ["Chemlight_Blue",250];
    _crate addMagazineCargoGlobal ["Chemlight_Red",250];
    _crate addMagazineCargoGlobal ["ACE_HandFlare_White",250];
    _crate addMagazineCargoGlobal ["ACE_HandFlare_Red",250];
    _crate addMagazineCargoGlobal ["ACE_HandFlare_Green",250];

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
    _crate addItemCargoGlobal ["ACE_Flashlight_MX991",50];
    _crate additemCargoGlobal ["ACE_IR_Strobe_Item",20];
    _crate addItemCargoGlobal ["Toolkit",10];
    _crate addItemCargoGlobal ["ACE_M26_Clacker",20];
    _crate addItemCargoGlobal ["ACE_DefusalKit",20];
    _crate addItemCargoGlobal ["ACE_CableTie",50];
    _crate addItemCargoGlobal ["ACE_RangeTable_82mm",20];
    _crate addItemCargoGlobal ["ACE_EntrenchingTool",20];
    _crate addItemCargoGlobal ["ACE_wirecutter",10];
    _crate additemCargoGlobal ["ACE_VMH3",20];
    _crate additemCargoGlobal ["ACE_VMM3",20];
    _crate additemCargoGlobal ["ACE_ATragMX",20];
    _crate additemCargoGlobal ["ACE_HuntIR_monitor",20];
    _crate additemCargoGlobal ["ACE_Kestrel4500",20];
    _crate additemCargoGlobal ["ACE_UAVBattery",20];
    _crate additemCargoGlobal ["rhs_LaserMag",20];
    _crate additemCargoGlobal ["ACE_Tripod",20];
    _crate additemCargoGlobal ["ACE_SpottingScope",20];
    _crate additemCargoGlobal ["ItemAndroid",20];
    _crate additemCargoGlobal ["ItemcTab",20];
    _crate additemCargoGlobal ["ACE_microDAGR",20];
    _crate additemCargoGlobal ["ACE_Vector",20];
    _crate additemCargoGlobal ["Leupold_Mk4",20];
    _crate additemCargoGlobal ["ACE_MX2A",20];
    _crate additemCargoGlobal ["Laserdesignator_01_khk_F",20];
    _crate additemCargoGlobal ["ACE_Altimeter",20];
    _crate additemCargoGlobal ["B_UavTerminal",20];

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

    _crate addBackpackCargoGlobal ["B_Carryall_mcamo",15];
    _crate addBackpackCargoGlobal ["B_UAV_01_backpack_F",15];
};

//------------------ S N I P E R   S E C T I O N --------------------\\

if (_platoonSelector == "sniper") then {
    //================== RADIOS ==================\\

    _crate addItemCargoGlobal ["ACRE_PRC152",10];
    _crate addItemCargoGlobal ["ACRE_PRC117F",10];

    //================== WEAPONS ==================\\

    _crate addWeaponCargoGlobal ["rhs_weap_sr25_d",2];
    _crate addWeaponCargoGlobal ["rhs_weap_XM2010",2];
    _crate addWeaponCargoGlobal ["rhs_weap_M107",2];
    _crate addWeaponCargoGlobal ["rhsusf_weap_m9",2];
    _crate additemCargoGlobal ["rhsusf_acc_premier_anpvs27",2];
    _crate additemCargoGlobal ["rhsusf_acc_M8541",2];
    _crate additemCargoGlobal ["rhsusf_acc_M2010S_wd",2];
    _crate additemCargoGlobal ["rhsusf_acc_SR25S",2];
    _crate additemCargoGlobal ["rhsusf_acc_M2010S_wd",2];
    _crate additemCargoGlobal ["rhsusf_acc_M2010S_wd",2];
    _crate additemCargoGlobal ["rhsusf_acc_compm4",2];
    _crate additemCargoGlobal ["rhsusf_acc_ACOG_RMR",2];
    _crate addItemCargoGlobal ["rhsusf_acc_ELCAN",50];
    _crate additemCargoGlobal ["rhsusf_acc_eotech_552",2];
    _crate additemCargoGlobal ["rhsusf_acc_anpeq15_bk_light",2];
    _crate additemCargoGlobal ["rhsusf_acc_anpeq15A",2];
    _crate additemCargoGlobal ["rhsusf_acc_nt4_black",2];
    _crate additemCargoGlobal ["rhsusf_acc_harris_bipod",2];
    _crate additemCargoGlobal ["rhsusf_acc_grip1",2];

    //================== AMMO ==================\\

    _crate addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY),50];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY_TRACER),50];
    _crate addMagazineCargoGlobal ["rhsusf_mag_15Rnd_9x19_FMJ",50];
    _crate addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m62_Mag",50];
    _crate addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010",50];
    _crate addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",50];
    _crate addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m993_Mag",50];
    _crate addMagazineCargoGlobal ["rhsusf_mag_10Rnd_STD_50BMG_M33",50];
    _crate addMagazineCargoGlobal ["rhsusf_mag_10Rnd_STD_50BMG_mk211",50];

    //================== GRENADES ==================\\

    _crate addMagazineCargoGlobal [QUOTE(_GRENADE),50];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),50];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_RED),50];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),50];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_GREEN),50];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_ORANGE),50];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_YELLOW),50];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_PURPLE),50];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_IR),50];
    _crate addMagazineCargoGlobal ["rhs_mag_an_m14_th3",50];
    _crate addMagazineCargoGlobal ["rhs_mag_m7a3_cs",50];
    _crate addMagazineCargoGlobal ["ACE_M84",25];
    _crate addMagazineCargoGlobal ["rhs_mag_mk3a2",50];
    _crate addMagazineCargoGlobal ["Chemlight_Blue",50];
    _crate addMagazineCargoGlobal ["Chemlight_Red",50];
    _crate addMagazineCargoGlobal ["ACE_HandFlare_White",50];
    _crate addMagazineCargoGlobal ["ACE_HandFlare_Red",50];
    _crate addMagazineCargoGlobal ["ACE_HandFlare_Green",50];

    //================== EXPLOSIVES ==================\\

    //================== ITEMS ==================\\

    _crate addItemCargoGlobal ["rhsusf_ANPVS_15",50];
    _crate addItemCargoGlobal ["ACE_Flashlight_MX991",50];
    _crate additemCargoGlobal ["ACE_IR_Strobe_Item",20];
    _crate addItemCargoGlobal ["Toolkit",10];
    _crate addItemCargoGlobal ["ACE_M26_Clacker",20];
    _crate addItemCargoGlobal ["ACE_DefusalKit",20];
    _crate addItemCargoGlobal ["ACE_CableTie",50];
    _crate addItemCargoGlobal ["ACE_RangeTable_82mm",20];
    _crate addItemCargoGlobal ["ACE_EntrenchingTool",20];
    _crate addItemCargoGlobal ["ACE_wirecutter",10];
    _crate additemCargoGlobal ["ACE_VMH3",20];
    _crate additemCargoGlobal ["ACE_VMM3",20];
    _crate additemCargoGlobal ["ACE_ATragMX",20];
    _crate additemCargoGlobal ["ACE_HuntIR_monitor",20];
    _crate additemCargoGlobal ["ACE_Kestrel4500",20];
    _crate additemCargoGlobal ["ACE_UAVBattery",20];
    _crate addMagazineCargoGlobal ["rhs_LaserMag",20];
    _crate additemCargoGlobal ["ACE_Tripod",20];
    _crate additemCargoGlobal ["ACE_SpottingScope",20];
    _crate additemCargoGlobal ["ItemAndroid",20];
    _crate additemCargoGlobal ["ItemcTab",20];
    _crate additemCargoGlobal ["ACE_microDAGR",20];
    _crate additemCargoGlobal ["ACE_Vector",20];
    _crate additemCargoGlobal ["Leupold_Mk4",20];
    _crate additemCargoGlobal ["ACE_MX2A",20];
    _crate additemCargoGlobal ["Laserdesignator_01_khk_F",20];
    _crate additemCargoGlobal ["ACE_Altimeter",20];

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

    _crate addBackpackCargoGlobal ["B_Carryall_mcamo",15];

    //================== GHILLIE ==================\\
    _crate addItemCargoGlobal ["U_B_FullGhillie_ard",2];
    _crate addItemCargoGlobal ["U_B_T_FullGhillie_tna_F",2];
    _crate addItemCargoGlobal ["U_B_FullGhillie_lsh",2];
    _crate addItemCargoGlobal ["U_B_FullGhillie_sard",2];
};

//------------------ F U L L   C R A T E --------------------\\

if (_platoonSelector == "full") then {

    //================== RADIOS ==================\\

    _crate addItemCargoGlobal ["ACRE_PRC152",10];
    _crate addItemCargoGlobal ["ACRE_PRC117F",10];

    //================== WEAPONS ==================\\

    _crate additemCargoGlobal ["rhsusf_acc_eotech_552",50];
    _crate addItemCargoGlobal ["rhsusf_acc_anpeq15_bk_light",50];
    _crate addItemCargoGlobal ["rhsusf_acc_ELCAN",50];
    _crate additemCargoGlobal ["tf47_optic_m3maaws",10];
    _crate addWeaponCargoGlobal ["rhs_weap_m240B",5];
    _crate addWeaponCargoGlobal ["rhs_weap_fim92",10];
    _crate addWeaponCargoGlobal ["rhs_weap_fgm148",10];
    _crate addWeaponCargoGlobal ["tf47_m3maaws",10];
    _crate addWeaponCargoGlobal ["tf47_at4_HP",10];

    //================== AMMO ==================\\

    _crate addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY),250];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_PRIMARY_TRACER),250];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_AR0),250];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_AR1),250];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_SECONDARY0),150];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER0),50];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER1),50];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER2),50];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER3),50];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER4),50];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER5),50];
    _crate addMagazineCargoGlobal [QUOTE(_MAG_LAUNCHER6),50];

    //================== GRENADES ==================\\

    _crate addMagazineCargoGlobal [QUOTE(_GRENADE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_RED),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_GREEN),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_ORANGE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_YELLOW),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_PURPLE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GRENADE_IR),250];
    _crate addMagazineCargoGlobal ["ACE_M84",25];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELL0),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELL1),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKE),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKEGREEN),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKEYELLOW),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLSMOKERED),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLSHELLHUNTIR),250];
    _crate addMagazineCargoGlobal [QUOTE(_GLFLARE),250];
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
    _crate addItemCargoGlobal ["Toolkit",10];
    _crate addItemCargoGlobal ["ACE_M26_Clacker",20];
    _crate addItemCargoGlobal ["ACE_DefusalKit",20];
    _crate addItemCargoGlobal ["ACE_Flashlight_MX991",50];
    _crate addItemCargoGlobal ["ACE_CableTie",50];
    _crate addItemCargoGlobal ["ACE_wirecutter",10];
    _crate addItemCargoGlobal ["ACE_EntrenchingTool",20];
    _crate addItemCargoGlobal ["ACE_RangeTable_82mm",20];
    _crate additemCargoGlobal ["ACE_VMH3",20];
    _crate additemCargoGlobal ["ACE_VMM3",20];
    _crate additemCargoGlobal ["ACE_IR_Strobe_Item",20];
    _crate additemCargoGlobal ["Flagstack_Red",10];
    _crate additemCargoGlobal ["Signpack_Mines",10];
    _crate additemCargoGlobal ["ACE_Fortify",10];

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

};

if (_platoonSelector == "none") then {};
