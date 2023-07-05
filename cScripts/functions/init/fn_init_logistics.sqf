#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function initzializes the logistical database
 *
 * Return Value:
 * HashMap
 *
 * Example:
 * call cScripts_fnc_init_logistics
 *
 * Public: No
 */

#ifdef DEBUG_MODE
    ["Creating logistical database", "Logistics"] call FUNC(info);
#endif

private _dataArray = [
    // list my containers
    // TODO:
    // // Starter Crates \\
    // ["starter_alpha", []],
    // ["starter_bravo_viking", []],
    // ["starter_bravo_atlas", []],
    // ["starter_charlie_misfit", []],
    // ["starter_charlie_bandit", []],
    // ["starter_radios", []],


    // Resupply Crates \\
    ["crate_medicalInfantry", [
        // Bandages
        ["ACE_elasticBandage",60],
        ["ACE_packingBandage",90],
        ["ACE_quikclot",150],

        // Tourniquets
        ["ACE_tourniquet",50],
        
        // Fluids
        ["ACE_plasmaIV",20],
        ["ACE_plasmaIV_500",20],
        
        // IV & IO Catheters
        ["kat_IO_FAST",10],
        ["kat_IV_16",20],
        
        // Autoinjector Medication
        ["kat_naloxone",20],
        ["ACE_epinephrine",20],
        ["kat_phenylephrine_inject",24],
        
        // Oral Medication
        ["kat_Painkiller",60],
        
        // Splints
        ["ACE_splint",40],
        
        // Surgical Medication
        ["kat_lidocaine",16],
        
        // Surgical Kits
        ["ACE_surgicalKit",2],
        
        // Body Bags
        ["ACE_bodyBag", 20]
    ]],
    ["crate_medicalAtlas", [
        // AEDs
        ["kat_AED",1],
        ["kat_X_AED",1],
        
        // Bandages
        ["ACE_elasticBandage",150],
        ["ACE_packingBandage",90],
        ["ACE_quikclot",150],
        
        // Tourniquets
        ["ACE_tourniquet",20],
        
        // Fluids
        ["ACE_plasmaIV",30],
        ["ACE_plasmaIV_500",30],
        ["ACE_salineIV_250",20],
        
        // IV & IO Catheters
        ["kat_IO_FAST",20],
        ["kat_IV_16",40],
        
        // Blood Pressure Medication
        ["kat_nitroglycerin",40],
        ["kat_phenylephrine",40],
        ["kat_norepinephrine",40],
        
        // Hemorrhage Control Medication
        ["kat_EACA",40],
        ["kat_TXA",40],
        
        // Oral Medication
        ["kat_carbonate",20],
        ["kat_Painkiller",40],
        
        // Autoinjector & Nasal Spray Medication
        ["kat_naloxone",20],
        ["ACE_morphine",20],
        ["ACE_epinephrine",40],
        ["ACE_phenylephrine_inject",40],
        
        // Splints
        ["ACE_splint",40],
        
        // Surgical Equipment
        ["kat_scalpel",40],
        ["kat_plate",10],
        ["kat_clamp",4],
        ["kat_retractor",4],
        ["kat_vacuum",1],
        
        // Surgical Medication
        ["kat_lidocaine",20],
        ["kat_lorazepam",10],
        ["kat_etomidate",20],
        ["kat_flumazenil",10],
        
        // Surgical Kits
        ["ACE_surgicalKit",8],
        
        // Body Bags
        ["ACE_bodyBag",10],
        
        // E-Tools
        ["ACE_EntrenchingTool",4],
        
        // Smokes
        ["SmokeShell",16],
        ["SmokeShellBlue",8],
        ["SmokeShellGreen",8],
        ["SmokeShellPurple",8],
        
        // Flags and Paint
        ["ace_marker_flags_green",4],
        ["ace_marker_flags_red",4],
        ["ace_marker_flags_blue",4],
        ["ACE_SpraypaintBlue",1],
        ["ACE_SpraypaintRed",1]
    ]],
    ["crate_strykerDragoon", [
        // Rifle Ammo
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 28],
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 21],
        ["ACE_30Rnd_556x45_Stanag_M995_AP_mag", 7],
        
        // MG Ammo
        ["rhsusf_100Rnd_762x51_m62_tracer", 10],

        // AT
        ["rhs_fgm148_magazine_AT", 1],
        
        // M320 Ammo
        ["rhs_mag_m433_HEDP", 20],
        ["rhs_mag_m397_HET", 10],
        ["rhs_mag_M664_red_cluster", 5],
        ["rhs_mag_m714_White", 5],
        ["ACE_40mm_Flare_IR", 5],
        ["ACE_HUNTIR_M203", 5],

        // Offensive/Defensive Grenades
        ["HandGrenade", 9],

        // Smoke Grenades
        ["SmokeShell", 27],
        ["SmokeShellRed", 4],
        ["SmokeShellBlue", 4],
        ["SmokeShellYellow", 4],
        ["SmokeShellGreen", 4],
        
        // Medical
        ["ACE_quikclot", 50],
        ["ACE_tourniquet", 18]
    ]],
    ["resupply_crate_general", [
        // Rifle Ammo
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",70],
        
        // MG Ammo
        ["rhsusf_200rnd_556x45_mixed_soft_pouch",15],
        ["rhsusf_100Rnd_762x51_m62_tracer",15],

        // AT
        ["rhs_fgm148_magazine_AT",3],
        ["rhs_mag_maaws_HEAT",4],
        ["rhs_mag_maaws_HE",4],
        ["rhs_weap_M136_hedp",8],
        
        // AA
        ["rhs_fim92_mag",3],
        
        // M320 Ammo
        ["rhs_mag_M433_HEDP",40],
        ["rhs_mag_m714_White",20],
        ["ACE_HUNTIR_M203",5],
        ["ACE_40mm_Flare_white",10],
        ["ACE_40mm_Flare_IR",10],

        // Mortar Ammo
        ["NDS_M_6Rnd_60mm_HE_0",5],
        ["NDS_M_6Rnd_60mm_HE",5],
        ["NDS_M_6Rnd_60mm_SMOKE",2],
        ["NDS_M_6Rnd_60mm_ILLUM",2],
        
        // Offensive/Defensive Hand Grenades
        ["HandGrenade",20],

        // LTL Hand Grenades
        ["ACE_M84",10],

        // Smoke Grenades
        ["SmokeShell",30],
        ["SmokeShellRed",10],
        ["SmokeShellBlue",10],

        // Chemlights
        ["ACE_Chemlight_HiRed",15],
        ["ACE_Chemlight_HiBlue",15],
        ["ACE_Chemlight_IR",15],

        // Explosives
        ["SatchelCharge_Remote_Mag",2],
        ["DemoCharge_Remote_Mag",4]
    ]],

    // Alpha Vehicles \\
    ["vehicle_heliTransport", [
        ["ToolKit", 2],
        ["ACE_quikclot", 32],
        ["ACE_tourniquet", 8],
        ["ACE_splint", 8],
        ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 32],
        ["SmokeShell", 8]
    ]],

    // Bravo Vehicles \\
    ["vehicle_medicalAtlas", [
        // AEDs
        ["kat_AED",1],

        // Bandages
        ["ACE_elasticBandage",150],
        ["ACE_packingBandage",90],
        ["ACE_quikclot",150],

        // Tourniquets
        ["ACE_tourniquet",20],

        // Fluids
        ["ACE_plasmaIV",30],
        ["ACE_plasmaIV_500",30],
        ["ACE_salineIV_250",20],

        // IV & IO Catheters
        ["kat_IO_FAST",20],
        ["kat_IV_16",40],

        // Blood Pressure Medication
        ["kat_nitroglycerin",40],
        ["kat_phenylephrine",40],
        ["kat_norepinephrine",40],

        // Hemorrhage Control Medication
        ["kat_EACA",40],
        ["kat_TXA",40],

        // Oral Medication
        ["kat_carbonate",20],
        ["kat_Painkiller",40],

        // Autoinjector & Nasal Spray Medication
        ["kat_naloxone",20],
        ["ACE_morphine",20],
        ["ACE_epinephrine",40],
        ["ACE_phenylephrine_inject",40],

        // Splints
        ["ACE_splint",20],

        // Surgical Equipment
        ["kat_scalpel",40],
        ["kat_plate",10],
        ["kat_clamp",1],
        ["kat_retractor",1],
        ["kat_vacuum",1],

        // Surgical Medication
        ["kat_lidocaine",20],
        ["kat_lorazepam",10],
        ["kat_etomidate",20],
        ["kat_flumazenil",10],

        // Surgical Kits
        ["ACE_surgicalKit",4],

        // Body Bags
        ["ACE_bodyBag",10],

        // E-Tools
        ["ACE_EntrenchingTool",4],

        // Smoke Grenades
        ["SmokeShell",16],
        ["SmokeShellBlue",4],
        ["SmokeShellGreen",4],
        ["SmokeShellPurple",4],

        // Flags and Paint
        ["ace_marker_flags_green",4],
        ["ace_marker_flags_red",4],
        ["ace_marker_flags_blue",4],
        ["ACE_SpraypaintBlue",1],
        ["ACE_SpraypaintRed",1],

        // Rifle Ammo
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG",24], // M855A1 PMAGs
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",8] // M856A1 PMAGs
    ]],
    ["vehicle_strykerDragoon", [
        // AT
        ["rhs_weap_fgm148", 1],
        ["rhs_fgm148_magazine_AT", 2],
        ["rhs_weap_M136_heat", 2],

        // M32 Rotary Grenade Launcher
        ["rhs_weap_m32", 1],
        ["rhsusf_mag_6Rnd_M397_HET", 2],
        ["rhsusf_mag_6Rnd_M433_HEDP", 3],
        ["rhsusf_mag_6Rnd_m4009", 3],
        ["rhsusf_mag_6Rnd_M713_red", 2],
        
        // UAV Equipment
        ["ACE_UAVBattery", 4],
        
        // Tools
        ["ACE_wirecutter", 1]
    ]],

    // Charlie Vehicles \\
    ["vehicle_HMMWV", [
        // Rifle Ammo
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",42],
        
        // MG Ammo
        ["rhsusf_200Rnd_556x45_mixed_soft_pouch",5],
        ["rhsusf_100Rnd_762x51_m62_tracer",5],

        // AT
        ["rhs_weap_fgm148",1],
        ["rhs_fgm148_magazine_AT",1],
        ["rhs_mag_maaws_HE",2],
        ["rhs_mag_maaws_HEAT",2],

        // M320 Ammo
        ["rhsusf_mag_M433_HEDP",20],
        ["rhs_mag_m714_White",6],
        ["ACE_HuntIR_M203",1],
        ["ACE_40mm_Flare_ir",2],

        // Offensive/Defensive Hand Grenades
        ["HandGrenade",8],

        // Smoke Grenades
        ["SmokeShell",10],
        ["SmokeShellBlue",2],
        ["SmokeShellGreen",2],

        // Chemlights
        ["ACE_Chemlight_HiGreen",2],
        ["ACE_Chemlight_HiRed",2],
        ["ACE_Chemlight_IR",4],
        
        // Misc
        ["ACE_SpareBarrel",1]
    ]],

    

    // Specialized \\
    ["crate_mortar_60mm", [
        ["NDS_M_6Rnd_60mm_HE_0",5],
        ["NDS_M_6Rnd_60mm_HE",5],
        ["NDS_M_6Rnd_60mm_SMOKE",2],
        ["NDS_M_6Rnd_60mm_ILLUM",2]
    ]],
    // ["demolitions", []],
    // ["radios", []],

    // No longer used \\
    ["vehicle_bradley", [
        ["rhs_weap_fgm148", 1],
        ["rhs_fgm148_magazine_AT", 2],
        ["rhs_weap_m32", 1],
        ["rhsusf_mag_6Rnd_M397_HET", 2],
        ["rhsusf_mag_6Rnd_M433_HEDP", 3],
        ["rhsusf_mag_6Rnd_m4009", 3],
        ["rhsusf_mag_6Rnd_M713_red", 2],
        ["rhs_weap_M136_heat", 4],
        ["B_UAV_01_backpack_F", 2],
        ["B_UavTerminal", 1],
        ["ACE_UAVBattery", 4],
        ["ACE_wirecutter", 1]
    ]]
];

// build Database
// private _dataArray = [];
// { 
//     [format ["Box: %1", _x]] call FUNC(info);
//     _dataArray append [_x, _y];

// } forEach _containers;

private _return = createHashMapFromArray _dataArray;

_return;
