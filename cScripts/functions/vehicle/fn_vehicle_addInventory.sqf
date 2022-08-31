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

// Is valid vehicle
private _factionArray = parseSimpleArray EGVAR(Settings,vehicleFactions);
if !(_factionArray isEqualType []) exitWith {["Faction array have not been setup correctly.", "Vehicle"] call FUNC(error);};
if (!(faction _vehicle in _factionArray)) exitWith {};

#ifdef DEBUG_MODE
    [formatText["Applying inventory to %1 (%2)", _vehicle, typeOf _vehicle], "Vehicle"] call FUNC(info);
#endif

private _vehicleType = _vehicle getVariable [QEGVAR(Vehicle,Type), typeOf _vehicle];

_vehicle setVariable [QEGVAR(Vehicle,Inventory), true];

if (_vehicleType == "EMPTY") exitWith { [_vehicle, []] call FUNC(addCargo); };

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
        case "MED": {
            [_vehicle, [
                ["ACE_quikclot", 100],
                ["ACE_elasticBandage", 100],
                ["ACE_salineIV", 30],
                ["ACE_salineIV_500", 20],
                ["ACE_personalaidkit", 20],
                ["ACE_epinephrine", 30],
                ["ACE_Splint", 20],
                ["ACE_tourniquet", 20],
                ["ACE_surgicalKit", 2],
                ["B_Carryall_mcamo", 4]
            ]] call FUNC(addCargo);

            ["ace_medicalSupplyCrate", [
                ["ACE_quikclot", 100],
                ["ACE_elasticBandage", 100],
                ["ACE_salineIV", 30],
                ["ACE_salineIV_500", 20],
                ["ACE_personalaidkit", 20],
                ["ACE_epinephrine", 30],
                ["ACE_Splint", 20],
                ["ACE_tourniquet", 20],
                ["ACE_surgicalKit", 2]
            ], _vehicle] call FUNC(createCargoCrate);
        };
        default {
            [_vehicle, [
                ["ACE_Chemlight_HiGreen", 16],
                ["ACE_Chemlight_HiRed", 16],
                ["SmokeShellBlue", 5],
                ["SmokeShellGreen", 5],
                ["rhs_mag_maaws_HE", 4],
                ["rhs_mag_maaws_HEAT", 2],
                ["rhs_fgm148_magazine_AT", 2],
                ["rhs_weap_fgm148", 1],
                ["rhsusf_mag_6Rnd_M433_HEDP", 20],
                ["rhsusf_100Rnd_762x51_m62_tracer", 20],
                ["ACE_Chemlight_IR", 12],
                ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 20],
                ["ACE_SpareBarrel", 1],
                ["ACE_HuntIR_M203", 4],
                ["ACE_40MM_FLARE_IR", 4],
                ["SmokeShell", 20],
                ["rhs_mag_m67", 20],
                ["rhsusf_200Rnd_556x45_mixed_soft_pouch", 5],
                ["rhs_mag_m714_White", 20]
            ]] call FUNC(addCargo);

            ["Box_T_NATO_Wps_F", [
                ["ACE_Chemlight_HiGreen", 20],
                ["ACE_Chemlight_HiRed", 20],
                ["SmokeShellBlue", 5],
                ["SmokeShellGreen", 5],
                ["SmokeShellGreen", 5],
                ["SmokeShellRed", 5],
                ["SmokeShellYellow", 5],
                ["SmokeShellOrange", 5],
                ["SmokeShellPurple", 5],
                ["SmokeShell", 20],
                ["rhs_mag_maaws_HE", 10],
                ["rhs_mag_maaws_HEAT", 10],
                ["rhs_fgm148_magazine_AT", 6],
                ["rhsusf_mag_6Rnd_M433_HEDP", 30],
                ["rhsusf_100Rnd_762x51_m62_tracer", 30],
                ["ACE_Chemlight_IR", 20],
                ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 40],
                ["ACE_SpareBarrel", 2],
                ["ACE_HuntIR_M203", 19],
                ["ACE_40MM_FLARE_IR", 10],
                ["rhs_mag_m67", 20],
                ["rhsusf_200Rnd_556x45_mixed_soft_pouch", 10],
                ["ACE_splint", 16],
                ["ACE_tourniquet", 16],
                ["ACE_SpraypaintRed", 2],
                ["ACE_salineIV", 10],
                ["ACE_EarPlugs", 12],
                ["ACE_CableTie", 12],
                ["ACE_quikclot", 60],
                ["dzn_MG_Tripod_M122A1_M240Mount_RHS", 1],
                ["NDS_M_6Rnd_60mm_HE", 8],
                ["NDS_M_6Rnd_60mm_HE_0", 8],
                ["rhs_mag_m714_White", 20]
            ], _vehicle] call FUNC(createCargoCrate);
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
            [_vehicle, [
                ["ACE_quikclot", 100],
                ["ACE_elasticBandage", 100],
                ["ACE_salineIV", 30],
                ["ACE_salineIV_500", 20],
                ["ACE_personalaidkit", 20],
                ["ACE_epinephrine", 30],
                ["ACE_Splint", 20],
                ["ACE_tourniquet", 20],
                ["ACE_surgicalKit", 2],
                ["B_Carryall_mcamo", 4]
            ]] call FUNC(addCargo);

            ["ace_medicalSupplyCrate", [
                ["ACE_quikclot", 100],
                ["ACE_elasticBandage", 100],
                ["ACE_salineIV", 30],
                ["ACE_salineIV_500", 20],
                ["ACE_personalaidkit", 20],
                ["ACE_epinephrine", 30],
                ["ACE_Splint", 20],
                ["ACE_tourniquet", 20],
                ["ACE_surgicalKit", 2]
            ], _vehicle] call FUNC(createCargoCrate);
        };
        default {
            [_vehicle, []] call FUNC(addCargo);
        };
    };
};

if (_vehicle iskindOf "rhsusf_stryker_base") then {
    [_vehicle, 6, 38, false, false] call FUNC(setCargoAttributes);

    switch (_vehicleType) do {
        case "MED": {
            [_vehicle, [
                ["ACE_quikclot", 100],
                ["ACE_elasticBandage", 100],
                ["ACE_salineIV", 30],
                ["ACE_salineIV_500", 20],
                ["ACE_personalaidkit", 20],
                ["ACE_epinephrine", 30],
                ["ACE_Splint", 20],
                ["ACE_tourniquet", 20],
                ["ACE_surgicalKit", 2],
                ["B_Carryall_mcamo", 4]
            ]] call FUNC(addCargo);

            ["ace_medicalSupplyCrate", [
                ["ACE_quikclot", 100],
                ["ACE_elasticBandage", 100],
                ["ACE_salineIV", 30],
                ["ACE_salineIV_500", 20],
                ["ACE_personalaidkit", 20],
                ["ACE_epinephrine", 30],
                ["ACE_Splint", 20],
                ["ACE_tourniquet", 20],
                ["ACE_surgicalKit", 2]
            ], _vehicle] call FUNC(createCargoCrate);
        };
        case "rhsusf_stryker_m1126_m2_d";
        case "rhsusf_stryker_m1126_m2_wd": {
            [_vehicle, [
                ["rhs_weap_fgm148", 1],
                ["rhs_fgm148_magazine_AT", 3],
                ["rhs_weap_M136_heat", 2],
                ["rhs_weap_m32", 1],
                ["rhsusf_mag_6Rnd_M397_HET", 2],
                ["rhsusf_mag_6Rnd_M433_HEDP", 3],
                ["rhsusf_mag_6Rnd_m4009", 3],
                ["rhsusf_mag_6Rnd_M713_red", 2],
                ["B_UAV_01_backpack_F", 2],
                ["B_UavTerminal", 1],
                ["ACE_UAVBattery", 4],
                ["ACE_wirecutter", 1]
            ]] call FUNC(addCargo);

            ["Box_NATO_Equip_F", [
                ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 56],
                ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 28],
                ["rhsusf_200rnd_556x45_mixed_soft_pouch", 10],
                ["rhs_fgm148_magazine_AT", 3],
                ["rhs_mag_m67", 20],
                ["SmokeShell", 36],
                ["SmokeShellRed", 10],
                ["SmokeShellBlue", 10],
                ["SmokeShellYellow", 10],
                ["SmokeShellGreen", 20],
                ["B_IR_Grenade", 10],
                ["rhs_mag_m433_HEDP", 30],
                ["rhs_mag_m397_HET", 20],
                ["rhs_mag_M664_red_cluster", 10],
                ["rhs_mag_m714_White", 10],
                ["ACE_40mm_Flare_IR", 20],
                ["ACE_HUNTIR_M203", 20],
                ["ACE_quikclot", 100],
                ["ACE_tourniquet", 36],
                ["ClaymoreDirectionalMine_Remote_Mag", 4],
                ["ACE_Clacker", 3],
                ["B_Kitbag_cbr", 2]
            ], _vehicle] call FUNC(createCargoCrate);
        };
        case "rhsusf_stryker_m1126_mk19_d";
        case "rhsusf_stryker_m1126_mk19_wd": {
            [_vehicle, [
                ["NDS_B_M224_mortar", 4],
                ["rhs_weap_fgm148", 1],
                ["rhs_fgm148_magazine_AT", 1],
                ["rhs_weap_M136_heat", 2],
                ["rhs_weap_m32", 1],
                ["rhsusf_mag_6Rnd_M397_HET", 2],
                ["rhsusf_mag_6Rnd_M433_HEDP", 3],
                ["rhsusf_mag_6Rnd_m4009", 3],
                ["rhsusf_mag_6Rnd_M713_red", 2],
                ["B_UAV_01_backpack_F", 1],
                ["B_UavTerminal", 1],
                ["ACE_UAVBattery", 2],
                ["ACE_wirecutter", 1]
            ]] call FUNC(addCargo);

            ["Box_NATO_Equip_F", [
                ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 56],
                ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 28],
                ["rhsusf_200rnd_556x45_mixed_soft_pouch", 10],
                ["rhsusf_100Rnd_762x51_m62_tracer", 10],
                ["rhs_fgm148_magazine_AT", 2],
                ["rhs_mag_m67", 20],
                ["SmokeShell", 36],
                ["SmokeShellRed", 10],
                ["SmokeShellBlue", 10],
                ["SmokeShellYellow", 10],
                ["SmokeShellGreen", 20],
                ["B_IR_Grenade", 10],
                ["rhs_mag_m433_HEDP", 30],
                ["rhs_mag_m397_HET", 20],
                ["rhs_mag_M664_red_cluster", 10],
                ["rhs_mag_m714_White", 10],
                ["ACE_40mm_Flare_IR", 20],
                ["ACE_HUNTIR_M203", 20],
                ["ACE_quikclot", 100],
                ["ACE_tourniquet", 36],
                ["ClaymoreDirectionalMine_Remote_Mag", 4],
                ["ACE_Clacker", 3],
                ["B_Kitbag_cbr", 2]
            ], _vehicle] call FUNC(createCargoCrate);

            ["Box_NATO_Support_F", [
                ["NDS_M_6Rnd_60mm_HE_0", 5],
                ["NDS_M_6Rnd_60mm_HE", 5],
                ["NDS_M_6Rnd_60mm_SMOKE", 5]
            ], _vehicle] call FUNC(createCargoCrate);
        };
        default {
            [_vehicle, [
                ["rhs_weap_fgm148", 1],
                ["rhs_fgm148_magazine_AT", 3],
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
        ["rhs_mag_m67", 8],
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
        ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 32],
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
            [_vehicle, [
                ["ACE_rope18", 4],
                ["ACE_rope27", 4],
                ["ACE_quikclot", 100],
                ["ACE_elasticBandage", 100],
                ["ACE_salineIV", 30],
                ["ACE_salineIV_500", 20],
                ["ACE_personalaidkit", 20],
                ["ACE_epinephrine", 30],
                ["ACE_Splint", 20],
                ["ACE_tourniquet", 20],
                ["ACE_surgicalKit", 2],
                ["B_Carryall_mcamo", 4]
            ]] call FUNC(addCargo);

            ["ace_medicalSupplyCrate", [
                ["ACE_quikclot", 100],
                ["ACE_elasticBandage", 100],
                ["ACE_salineIV", 30],
                ["ACE_salineIV_500", 20],
                ["ACE_personalaidkit", 20],
                ["ACE_epinephrine", 30],
                ["ACE_Splint", 20],
                ["ACE_tourniquet", 20],
                ["ACE_surgicalKit", 2]
            ], _vehicle] call FUNC(createCargoCrate);
        };
        default {
            [_vehicle, [
                ["ACE_rope18", 4],
                ["ACE_rope27", 4],
                ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 22],
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
        ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 22],
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
