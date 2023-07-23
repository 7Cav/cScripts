#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function changes the inventory of the given vehicle.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Example:
 * ["vic"] call cScripts_fnc_vehicle_addInventory;
 */

params [["_vehicle", objNull, [objNull]]];

if (!isServer) exitWith {};
if (_vehicle iskindOf "man") exitWith {};
if (!EGVAR(Settings,enableVehicleInventory)) exitWith {};
if (!isNil {_vehicle getVariable QEGVAR(Vehicle,Inventory);}) exitWith {[formatText["Vehicle inventory already applied for %1.", _vehicle], "Vehicle"] call FUNC(warning);};
if (!(_vehicle call FUNC(isValidFaction))) exitWith {};

#ifdef DEBUG_MODE
    [formatText["Applying inventory to %1 (%2)", _vehicle, typeOf _vehicle], "Vehicle"] call FUNC(info);
#endif

private _vehicleType = _vehicle getVariable [QEGVAR(Vehicle,Type), typeOf _vehicle];

_vehicle setVariable [QEGVAR(Vehicle,Inventory), true];

if (_vehicleType == "EMPTY") exitWith { [_vehicle, []] call FUNC(addCargo); };


// Inventories
private _medVicInv = [
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

    // Signalling equipment //
    
    // Smokes
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

    // Rifle ammo
    ["rhs_mag_30Rnd_556x45_M855A1_PMAG",24], // M855A1 PMAGs
    ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",8] // M856A1 PMAGs
];

if (_vehicle iskindOf "I_APC_Wheeled_03_cannon_F") then {
    [_vehicle, 17, 38, false, false] call FUNC(setCargoAttributes);
    ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
    ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
   
    switch (_vehicleType) do {
        case "cav_dragoon_A_V4";
        case "cav_dragoon_D_V4";
        case "cav_dragoon_WD_V4": {
            [_vehicle, 17, 38, false, false] call FUNC(setCargoAttributes);
            // Vehicle Inventory
            [_vehicle, [
                ["rhs_weap_fgm148", 1],
                ["rhs_fgm148_magazine_AT", 2],
                ["rhs_weap_M136_heat", 2],
                ["rhs_weap_m32", 1],
                ["rhsusf_mag_6Rnd_M397_HET", 2],
                ["rhsusf_mag_6Rnd_M433_HEDP", 3],
                ["rhsusf_mag_6Rnd_m4009", 3],
                ["rhsusf_mag_6Rnd_M713_red", 2],
                ["ACE_UAVBattery", 4],
                ["ACE_wirecutter", 1],
                ["ace_csw_carryMortarBaseplate", 2],
                ["ace_compat_rhs_usf3_m252_carry", 2]
            ]] call FUNC(addCargo);
            // Supply Crate
            ["Box_NATO_Equip_F", [
                ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 28],
                ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 21],
                ["ACE_30Rnd_556x45_Stanag_M995_AP_mag", 7],
                ["rhsusf_100Rnd_762x51_m62_tracer", 10],
                ["rhs_fgm148_magazine_AT", 1],
                ["rhs_mag_maaws_HE",2],
                ["rhs_mag_maaws_HEAT",2],
                ["MAA_MAAWS_ASM509",2],
                ["MAA_MAAWS_GMM_MT",1],
                ["HandGrenade", 9],
                ["SmokeShell", 27],
                ["SmokeShellRed", 4],
                ["SmokeShellBlue", 4],
                ["SmokeShellYellow", 4],
                ["SmokeShellGreen", 4],
                ["rhs_mag_m433_HEDP", 20],
                ["rhs_mag_m397_HET", 10],
                ["rhs_mag_M664_red_cluster", 5],
                ["rhs_mag_m714_White", 5],
                ["ACE_40mm_Flare_IR", 5],
                ["ACE_HUNTIR_M203", 5],
                ["ACE_quikclot", 50],
                ["ACE_tourniquet", 18],
                ["ace_csw_carryMortarBaseplate", 2],
                ["ace_compat_rhs_usf3_m252_carry", 2]
            ], _vehicle] call FUNC(createCargoCrate);
            
            // 60mm crate
            _mortarCrate = ["Box_Syndicate_WpsLaunch_F", [
                ["avm224_W_M224_mortar_carry",4],
                ["avm224_M_6Rnd_60mm_HE_csw", 50],
                ["avm224_M_6Rnd_60mm_HE_0_csw", 50],
                ["avm224_M_6Rnd_60mm_ILLUM_IR_csw", 25],
                ["avm224_M_6Rnd_60mm_SMOKE_csw", 25]
            ], _vehicle] call FUNC(createCargoCrate);
            // _mortarCrate 
            // 82mm ammo crates
            ["ACE_Box_82mm_Mo_Combo", [
                ["ACE_1Rnd_82mm_Mo_HE", 32],
                ["ACE_1Rnd_82mm_Mo_Illum", 8],
                ["ACE_1Rnd_82mm_Mo_Smoke", 8] 
            ], _vehicle] call FUNC(createCargoCrate);
            ["ACE_Box_82mm_Mo_Combo", [
                ["ACE_1Rnd_82mm_Mo_HE", 32],
                ["ACE_1Rnd_82mm_Mo_Illum", 8],
                ["ACE_1Rnd_82mm_Mo_Smoke", 8] 
            ], _vehicle] call FUNC(createCargoCrate);
        };
        case "cav_dragoon_A_WH7";
        case "cav_dragoon_D_WH7";
        case "cav_dragoon_WD_WH7";
        case "cav_dragoon_A_V5";
        case "cav_dragoon_D_V5";
        case "cav_dragoon_WD_V5": {
            [_vehicle, 17, 38, false, false] call FUNC(setCargoAttributes);
            // Vehicle Inventory
            [_vehicle, [
                ["rhs_weap_fgm148", 1],
                ["rhs_fgm148_magazine_AT", 2],
                ["rhs_weap_M136_heat", 2],
                ["rhs_weap_m32", 1],
                ["rhsusf_mag_6Rnd_M397_HET", 2],
                ["rhsusf_mag_6Rnd_M433_HEDP", 3],
                ["rhsusf_mag_6Rnd_m4009", 3],
                ["rhsusf_mag_6Rnd_M713_red", 2],
                ["ACE_UAVBattery", 4],
                ["ACE_wirecutter", 1]
            ]] call FUNC(addCargo);
            // Supply Crate
            ["Box_NATO_Equip_F", [
                ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 28],
                ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 21],
                ["ACE_30Rnd_556x45_Stanag_M995_AP_mag", 7],
                ["rhsusf_100Rnd_762x51_m62_tracer", 10],
                ["rhs_fgm148_magazine_AT", 1],
                ["rhs_mag_maaws_HE",2],
                ["rhs_mag_maaws_HEAT",2],
                ["MAA_MAAWS_ASM509",2],
                ["MAA_MAAWS_GMM_MT",1],
                ["HandGrenade", 9],
                ["SmokeShell", 27],
                ["SmokeShellRed", 4],
                ["SmokeShellBlue", 4],
                ["SmokeShellYellow", 4],
                ["SmokeShellGreen", 4],
                ["rhs_mag_m433_HEDP", 20],
                ["rhs_mag_m397_HET", 10],
                ["rhs_mag_M664_red_cluster", 5],
                ["rhs_mag_m714_White", 5],
                ["ACE_40mm_Flare_IR", 5],
                ["ACE_HUNTIR_M203", 5],
                ["ACE_quikclot", 50],
                ["ACE_tourniquet", 18]
            ], _vehicle] call FUNC(createCargoCrate);
            
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
        };
        
        case "cav_dragoon_Unarmed_WD";
        case "cav_dragoon_Unarmed_A";
        case "cav_dragoon_Unarmed_D"; 
        case "MED": {
            [_vehicle, _medVicInv] call FUNC(addCargo);
            private _medCrateContents = ["atlas"] call FUNC(getMedicalCrate);
            ["ace_medicalSupplyCrate", _medCrateContents, _vehicle] call FUNC(createCargoCrate);
        };
        default {
            // Vehicle Inventory
            [_vehicle, [
                ["rhs_weap_fgm148", 1],
                ["rhs_fgm148_magazine_AT", 2],
                ["rhs_weap_M136_heat", 2],
                ["rhs_weap_m32", 1],
                ["rhsusf_mag_6Rnd_M397_HET", 2],
                ["rhsusf_mag_6Rnd_M433_HEDP", 3],
                ["rhsusf_mag_6Rnd_m4009", 3],
                ["rhsusf_mag_6Rnd_M713_red", 2],
                ["ACE_UAVBattery", 4],
                ["ACE_wirecutter", 1]
            ]] call FUNC(addCargo);
            // Supply Crate
            ["Box_NATO_Equip_F", [
                ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 28],
                ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 21],
                ["ACE_30Rnd_556x45_Stanag_M995_AP_mag", 7],
                ["rhsusf_100Rnd_762x51_m62_tracer", 10],
                ["rhs_fgm148_magazine_AT", 1],
                ["rhs_mag_maaws_HE",2],
                ["rhs_mag_maaws_HEAT",2],
                ["MAA_MAAWS_ASM509",2],
                ["MAA_MAAWS_GMM_MT",1],
                ["HandGrenade", 9],
                ["SmokeShell", 27],
                ["SmokeShellRed", 4],
                ["SmokeShellBlue", 4],
                ["SmokeShellYellow", 4],
                ["SmokeShellGreen", 4],
                ["rhs_mag_m433_HEDP", 20],
                ["rhs_mag_m397_HET", 10],
                ["rhs_mag_M664_red_cluster", 5],
                ["rhs_mag_m714_White", 5],
                ["ACE_40mm_Flare_IR", 5],
                ["ACE_HUNTIR_M203", 5],
                ["ACE_quikclot", 50],
                ["ACE_tourniquet", 18]
            ], _vehicle] call FUNC(createCargoCrate);
        };
    };

    // Emergency Fuel Tank
    ["FlexibleTank_01_forest_F", false, _vehicle, 1] call FUNC(createCargoCrate);
};

// Vehicles
if (_vehicle iskindOf "MRAP_01_base_F") then {
    
    // Cargo
    switch (true) do {
        case (_vehicle iskindOf "rhsusf_m998_w_2dr"): {
            [_vehicle, 8, 20, false, false] call FUNC(setCargoAttributes);
        };
        case (_vehicle iskindOf "rhsusf_m1152_base"): {
            [_vehicle, 20, 20, false, false] call FUNC(setCargoAttributes);
        };
        default {
            [_vehicle, 4, 20, false, false] call FUNC(setCargoAttributes);
        };
    };
    
    ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;

    // Interior
    switch (_vehicleType) do {
        case "rhsusf_m998_d_2dr_fulltop";
        case "rhsusf_m998_w_2dr_fulltop";
        case "MED": {
            [_vehicle, _medVicInv] call FUNC(addCargo);
            private _medCrateContents = ["atlas"] call FUNC(getMedicalCrate);
            ["ace_medicalSupplyCrate", _medCrateContents, _vehicle] call FUNC(createCargoCrate);
        };
        case "rhsusf_m1165a1_gmv_m2_m240_socom_d";
        case "rhsusf_m1165a1_gmv_mk19_m240_socom_d";
        case "rhsusf_m1165a1_gmv_m2_m240_socom_w";
        case "rhsusf_m1165a1_gmv_mk19_m240_socom_w": {
            [_vehicle, [
                ["ACE_Chemlight_HiGreen",2],
                ["ACE_Chemlight_HiRed",2],
                ["SmokeShellBlue",2],
                ["SmokeShellGreen",2],
                ["rhs_mag_maaws_HE",2],
                ["rhs_mag_maaws_HEAT",2],
                ["rhs_fgm148_magazine_AT",1],
                ["rhsusf_mag_M433_HEDP",20],
                ["rhsusf_100Rnd_762x51_m62_tracer",5],
                ["ACE_Chemlight_IR",4],
                ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",42],
                ["ACE_SpareBarrel",1],
                ["ACE_HuntIR_M203",1],
                ["ACE_40mm_Flare_ir",2],
                ["SmokeShell",10],
                ["HandGrenade",8],
                ["rhsusf_200Rnd_556x45_mixed_soft_pouch",5],
                ["rhs_mag_m714_White",6],
                ["rhs_weap_fgm148",1]
            ]] call FUNC(addCargo);
        };
        default {
            [_vehicle, [
                ["ACE_Chemlight_HiGreen",2],
                ["ACE_Chemlight_HiRed",2],
                ["SmokeShellBlue",2],
                ["SmokeShellGreen",2],
                ["rhs_mag_maaws_HE",2],
                ["rhs_mag_maaws_HEAT",2],
                ["rhs_fgm148_magazine_AT",1],
                ["rhsusf_mag_M433_HEDP",20],
                ["rhsusf_100Rnd_762x51_m62_tracer",5],
                ["ACE_Chemlight_IR",4],
                ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",42],
                ["ACE_SpareBarrel",1],
                ["ACE_HuntIR_M203",1],
                ["ACE_40mm_Flare_ir",2],
                ["SmokeShell",10],
                ["HandGrenade",8],
                ["rhsusf_200Rnd_556x45_mixed_soft_pouch",5],
                ["rhs_mag_m714_White",6],
                ["rhs_weap_fgm148",1]
            ]] call FUNC(addCargo);
        };
    };
};

if (_vehicle iskindOf "rhsusf_fmtv_base") then {
    [_vehicle, []] call FUNC(addCargo);
};

if (_vehicle iskindOf "Truck_01_base_F") then {
    switch (_vehicleType) do {
        case "rhsusf_M1230a1_usarmy_wd";
        case "rhsusf_M1230a1_usarmy_d";
        case "MED": {
            [_vehicle, _medVicInv] call FUNC(addCargo);

            private _medCrateContents = ["atlas"] call FUNC(getMedicalCrate);
            ["ace_medicalSupplyCrate", _medCrateContents, _vehicle] call FUNC(createCargoCrate);
        };
        default {
            [_vehicle, []] call FUNC(addCargo);
        };
    };
};

if (_vehicle iskindOf "rhsusf_stryker_base") then {
    [_vehicle, 6, 38, false, false] call FUNC(setCargoAttributes);

    switch (_vehicleType) do {
        case "rhsusf_stryker_m1126_m2_d";
        case "rhsusf_stryker_m1126_m2_wd";
        case "MED": {
            [_vehicle, _medVicInv] call FUNC(addCargo);
            
            private _medCrateContents = ["atlas"] call FUNC(getMedicalCrate);
            ["ace_medicalSupplyCrate", _medCrateContents, _vehicle] call FUNC(createCargoCrate);
        };
        default {
            [_vehicle, [
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
            ]] call FUNC(addCargo);
        };
    };
    ["FlexibleTank_01_forest_F", false, _vehicle, 1] call FUNC(createCargoCrate);
};

if (_vehicle iskindOf "RHS_M2A2_Base") then {
    [_vehicle, 4, -1, false, false] call FUNC(setCargoAttributes);

    [_vehicle, [
        ["rhs_weap_M136_hp", 2],
        ["ACE_quikclot", 60],
        ["ACE_splint", 8],
        ["ToolKit", 1],
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 32],
        ["rhsusf_200rnd_556x45_mixed_soft_pouch", 6],
        ["HandGrenade", 8],
        ["SmokeShell", 16],
        ["SmokeShellBlue", 2],
        ["ACE_Chemlight_IR", 4],
        ["rhs_mag_M433_HEDP", 16],
        ["rhs_mag_m713_Red", 4],
        ["ACE_40mm_Flare_ir", 4],
        ["ACE_HuntIR_M203", 2]
    ]] call FUNC(addCargo);

    ["ACE_Track", _vehicle, true] call ace_cargo_fnc_loadItem;
};

if (_vehicle iskindOf "rhsusf_m1a1tank_base") then {
    [_vehicle, 4, -1, false, false] call FUNC(setCargoAttributes);

    [_vehicle, [
        ["ToolKit", 2],
        ["ACE_quikclot", 32],
        ["ACE_tourniquet", 8],
        ["ACE_splint", 8],
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 32],
        ["SmokeShell", 8]
    ]] call FUNC(addCargo);

    ["ACE_Track", _vehicle, true] call ace_cargo_fnc_loadItem;
};

if (_vehicle iskindOf "RHS_MELB_base") then {
    [_vehicle, []] call FUNC(addCargo);
};

if (_vehicle iskindOf "Heli_Transport_01_base_F") then {
    switch (_vehicleType) do {
        case "RHS_UH60M_MEV2_d";
        case "RHS_UH60M_MEV_d";
        case "RHS_UH60M_MEV2";
        case "RHS_UH60M_MEV";
        case "MED": {
            [_vehicle, _medVicInv] call FUNC(addCargo);

            private _medCrateContents = ["atlas"] call FUNC(getMedicalCrate);
            ["ace_medicalSupplyCrate", _medCrateContents, _vehicle] call FUNC(createCargoCrate);
        };
        default {
            [_vehicle, [
                ["ACE_rope18", 4],
                ["ACE_rope27", 4],
                ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 22],
                ["rhsusf_200Rnd_556x45_box", 6],
                ["SmokeShell", 12],
                ["ACE_tourniquet", 4],
                ["ACE_fieldDressing", 20],
                ["ACE_splint", 2]
            ]] call FUNC(addCargo);
        };
    };
};

if (_vehicle iskindOf "Heli_Transport_02_base_F") then {
    [_vehicle, [
        ["ACE_rope18", 4],
        ["ACE_rope27", 4],
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 22],
        ["rhsusf_200Rnd_556x45_box", 6],
        ["SmokeShell", 12],
        ["ACE_tourniquet", 6],
        ["ACE_fieldDressing", 30],
        ["ACE_splint", 4]
    ]] call FUNC(addCargo);
};

if (_vehicle iskindOf "RHS_AH64_base") then {
    [_vehicle, []] call FUNC(addCargo);
};

if (_vehicle iskindOf "rhs_m2staticmg_base") then {
    [_vehicle, []] call FUNC(addCargo);
};

if (_vehicle iskindOf "RHS_MK19_TriPod_base") then {
    [_vehicle, []] call FUNC(addCargo);
};

if (_vehicle iskindOf "RHS_TOW_TriPod_base") then {
    [_vehicle, []] call FUNC(addCargo);
};

if (_vehicle iskindOf "NDS_M224_mortar_base") then {
    [_vehicle, []] call FUNC(addCargo);
};

if (_vehicle iskindOf "RHS_C130J_Base") then {
    [_vehicle, 45, -1, false, false] call FUNC(setCargoAttributes);

    [_vehicle, []] call FUNC(addCargo);
};
