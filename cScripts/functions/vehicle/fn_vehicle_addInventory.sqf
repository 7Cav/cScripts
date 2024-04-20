#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function changes the inventory of the given vehicle.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Return Value:
 * nothing
 *
 * Example:
 * [_vehicle] call cScripts_fnc_vehicle_addInventory;
 *
 * Public: No
 */

params [["_vehicle", objNull, [objNull]]];

if (!EGVAR(Settings,enableVehicleInventory)) exitWith {};
if (!isNil{_vehicle getVariable QEGVAR(VehicleFunc,Inventory)}) exitWith {SHOW_WARNING_2("VehicleInventory", "Vehicle inventory already applied for %1 [%2].", _vehicle, typeOf _vehicle);};
if (!(_vehicle call FUNC(isValidFaction))) exitWith {};

INFO_2("VehicleInventory", "Applying vehicle inventory to %1 (%2)", _vehicle, typeOf _vehicle);

private _vehicleType = _vehicle getVariable [QEGVAR(Vehicle,Type), typeOf _vehicle];


// Remove ACE Cargo
private _cargoArray = _vehicle getVariable ["ace_cargo_loaded",[]];
{
    [_x, _vehicle] call ace_cargo_fnc_removeCargoItem;
} forEach _cargoArray;

// Do not allow renaming of vehicles
_vehicle setVariable ["ace_cargo_noRename", true, true];

_vehicle setVariable [QEGVAR(VehicleFunc,Inventory), true, true];

if (_vehicleType == "EMPTY") exitWith { [_vehicle, []] call FUNC(setCargo); };


// Ground Vehicles
if (_vehicle iskindOf "cav_dragoon_base_F") then {
    [_vehicle, 15, 38, false, false] call FUNC(setCargoAttributes);
    
    // Emergency kit in case of tire damage and fuel loss.
    ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
    ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
    ["FlexibleTank_01_forest_F", _vehicle, true] call ace_cargo_fnc_loadItem; // Emergency Fuel Tank

    switch (_vehicleType) do {
        // Weapons squad strykers: Have several mortars, both 60mm and 82mm.
        case "cav_dragoon_A_V4";
        case "cav_dragoon_D_V4";
        case "cav_dragoon_WD_V4": {
            // Vehicle Inventory
            [_vehicle, 
                GET_CONTAINER("vehicle_strykerDragoon_V4")
            ] call FUNC(setCargo);

            // 60mm Mortar into vehicle inventory
            _vehicle addBackpackCargoGlobal ["NDS_B_M224_mortar",1];

            // M240B with su230a sight into vehicle inventory
            _vehicle addWeaponWithAttachmentsCargoGlobal [["rhs_weap_m240B","","","rhsusf_acc_su230a",["rhsusf_100Rnd_762x51_m62_tracer",100],[],""],1]; 

            // Supply Crate
            ["Box_NATO_Wps_F", 
                GET_CONTAINER("crate_strykerDragoon_resupply"), 
                _vehicle, nil, "Supply Crate"
            ] call FUNC(createCargoCrate);

            // 1x 60mm mortar with ammo
            private _mortar_60mm_crate = ["Box_Syndicate_WpsLaunch_F", 
                GET_CONTAINER("crate_strykerDragoon_60mm"), 
                _vehicle, nil, "60mm mortar with ammo"
            ] call FUNC(createCargoCrate);
            _mortar_60mm_crate addBackpackCargoGlobal ["NDS_B_M224_mortar",1];
            
            // 2x 81mm mortars
            ["Box_NATO_WpsLaunch_F", 
                GET_CONTAINER("crate_strykerDragoon_81mm"), 
                _vehicle, nil, "81mm mortars"
            ] call FUNC(createCargoCrate);
            
            // Ammo for 2x 81mm mortars
            private _mortar_ammo_81mm = GET_CONTAINER("crate_strykerDragoon_81mm_ammo");
            ["ACE_Box_82mm_Mo_Combo", 
                _mortar_ammo_81mm, 
                _vehicle, nil, "Ammo for 81mm mortars"
            ] call FUNC(createCargoCrate);
            
            ["ACE_Box_82mm_Mo_Combo", 
                _mortar_ammo_81mm,
                _vehicle, nil, "Ammo for 81mm mortars"
            ] call FUNC(createCargoCrate);
        };

        // Logistical strykers: Have same inventory, but a lot of wheels in cargo.
        case "cav_dragoon_A_WH7";
        case "cav_dragoon_D_WH7";
        case "cav_dragoon_WD_WH7";
        case "cav_dragoon_A_V5";
        case "cav_dragoon_D_V5";
        case "cav_dragoon_WD_V5": {
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;

            // Vehicle Inventory
            [_vehicle, 
                GET_CONTAINER("vehicle_strykerDragoon")
            ] call FUNC(setCargo);
            
            // M240B with su230a sight into vehicle inventory
            _vehicle addWeaponWithAttachmentsCargoGlobal [["rhs_weap_m240B","","","rhsusf_acc_su230a",["rhsusf_100Rnd_762x51_m62_tracer",100],[],""],1]; 

            // Supply Crate
            ["Box_NATO_Wps_F", 
                GET_CONTAINER("crate_strykerDragoon_resupply"), 
                _vehicle, nil, "Resupply Crate"
            ] call FUNC(createCargoCrate);

            // 2 Stingers to distribute to 1 section.
            ["Box_NATO_WpsLaunch_F", 
                GET_CONTAINER("crate_stinger"), 
                _vehicle, nil, "MANPAD"
            ] call FUNC(createCargoCrate);

            ["Box_NATO_WpsLaunch_F", 
                GET_CONTAINER("crate_stinger"), 
                _vehicle, nil, "MANPAD"
            ] call FUNC(createCargoCrate);
        };
        
        // Ambulance strykers: Carry medical supplies and a medical resupply crate.
        case "cav_dragoon_Unarmed_WD";
        case "cav_dragoon_Unarmed_A";
        case "cav_dragoon_Unarmed_D";
        case "MED": {
            [_vehicle, 
                GET_CONTAINER("vehicle_medicalAtlas")
            ] call FUNC(setCargo);

            ["ace_medicalSupplyCrate",
                GET_CONTAINER("crate_medicalAtlas"),
                _vehicle, nil, "Medical Supply Crate"
            ] call FUNC(createCargoCrate);
        };
        
        // The standard cav scout stryker
        default {
            // Vehicle Inventory
            [_vehicle, 
                GET_CONTAINER("vehicle_strykerDragoon")
            ] call FUNC(setCargo);

            // M240B with su230a sight into vehicle inventory
            _vehicle addWeaponWithAttachmentsCargoGlobal [["rhs_weap_m240B","","","rhsusf_acc_su230a",["rhsusf_100Rnd_762x51_m62_tracer",100],[],""],1]; 

            // Supply Crate
            ["Box_NATO_Wps_F", 
                GET_CONTAINER("crate_strykerDragoon_resupply"), 
                _vehicle, nil, "Resupply Crate"
            ] call FUNC(createCargoCrate);
        };
    };
};

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
            [_vehicle, 
                GET_CONTAINER("vehicle_medicalAtlas")
            ] call FUNC(setCargo);

            ["ace_medicalSupplyCrate",
                GET_CONTAINER("crate_medicalAtlas"),
                _vehicle
            ] call FUNC(createCargoCrate);
        };
        case "rhsusf_m1165a1_gmv_m2_m240_socom_d";
        case "rhsusf_m1165a1_gmv_m2_m240_socom_w": {
            [_vehicle, 
                GET_CONTAINER("vehicle_HMMWV")
            ] call FUNC(setCargo);
        };
        case "rhsusf_m1165a1_gmv_mk19_m240_socom_d";
        case "rhsusf_m1165a1_gmv_mk19_m240_socom_w": {
            [_vehicle, 
                GET_CONTAINER("vehicle_HMMWV_Weapons")
            ] call FUNC(setCargo);
        };
        case "rhsusf_M1239_socom_d";
        case "rhsusf_M1239_M2_socom_d";
        case "rhsusf_M1239_MK19_socom_d";
        case "rhsusf_M1239_M2_Deploy_socom_d";
        case "rhsusf_M1239_MK19_Deploy_socom_d": {
            [_vehicle, 15, 38, false, false] call FUNC(setCargoAttributes);

            // Emergency kit in case of tire damage and fuel loss.
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;

            // Vehicle Inventory
            [_vehicle, 
                GET_CONTAINER("vehicle_strykerDragoon")
            ] call FUNC(setCargo);

            // Supply Crate
            ["Box_NATO_Wps_F", 
                GET_CONTAINER("crate_strykerDragoon_resupply"), 
                _vehicle, nil, "Resupply Crate"
            ] call FUNC(createCargoCrate);

            // 2 Stingers to distribute to 1 section.
            ["Box_NATO_WpsLaunch_F", 
                GET_CONTAINER("crate_stinger"), 
                _vehicle, nil, "MANPAD"
            ] call FUNC(createCargoCrate);

            ["Box_NATO_WpsLaunch_F", 
                GET_CONTAINER("crate_stinger"), 
                _vehicle, nil, "MANPAD"
            ] call FUNC(createCargoCrate);
        };
        case "rhsusf_M1238A1_socom_d";
        case "rhsusf_M1238A1_M2_socom_d";
        case "rhsusf_M1238A1_Mk19_socom_d": {
            [_vehicle, 15, 38, false, false] call FUNC(setCargoAttributes);

            // Emergency kit in case of tire damage and fuel loss.
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
            ["FlexibleTank_01_forest_F", _vehicle, true] call ace_cargo_fnc_loadItem; // Emergency Fuel Tank

            // Vehicle Inventory
            [_vehicle, 
                GET_CONTAINER("vehicle_strykerDragoon")
            ] call FUNC(setCargo);

            // Supply Crate
            ["Box_NATO_Wps_F", 
                GET_CONTAINER("crate_strykerDragoon_resupply"), 
                _vehicle, nil, "Resupply Crate"
            ] call FUNC(createCargoCrate);
        };
        default {
            [_vehicle, 
                GET_CONTAINER("vehicle_HMMWV")
            ] call FUNC(setCargo);
        };
    };
};

if (_vehicle iskindOf "rhsusf_fmtv_base") then {
    [_vehicle, []] call FUNC(setCargo);
};

if (_vehicle iskindOf "Truck_01_base_F") then {
    switch (_vehicleType) do {
        case "rhsusf_M1230a1_usarmy_wd";
        case "rhsusf_M1230a1_usarmy_d";
        case "MED": {
            [_vehicle, 
                GET_CONTAINER("vehicle_medicalAtlas")
            ] call FUNC(setCargo);

            ["ace_medicalSupplyCrate",
                GET_CONTAINER("crate_medicalAtlas"),
                _vehicle
            ] call FUNC(createCargoCrate);
        };
        default {
            [_vehicle, []] call FUNC(setCargo);
        };
    };
    ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
};

if (_vehicle iskindOf "rhsusf_stryker_base") then {
    [_vehicle, 6, 38, false, false] call FUNC(setCargoAttributes);

    ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
    ["ACE_Wheel", _vehicle, true] call ace_cargo_fnc_loadItem;
    
    switch (_vehicleType) do {
        case "rhsusf_stryker_m1126_m2_d";
        case "rhsusf_stryker_m1126_m2_wd";
        case "MED": {
            [_vehicle, 
                GET_CONTAINER("vehicle_medicalAtlas")
            ] call FUNC(setCargo);

            ["ace_medicalSupplyCrate",
                GET_CONTAINER("crate_medicalAtlas"),
                _vehicle
            ] call FUNC(createCargoCrate);
        };
        default {
            [_vehicle, 
                GET_CONTAINER("vehicle_strykerDragoon")
            ] call FUNC(setCargo);
        };
    };
    ["FlexibleTank_01_forest_F", false, _vehicle, 1] call FUNC(createCargoCrate);
};

if (_vehicle iskindOf "RHS_M2A2_Base") then {
    [_vehicle, 4, -1, false, false] call FUNC(setCargoAttributes);

    [_vehicle, 
        GET_CONTAINER("vehicle_bradley")
    ] call FUNC(setCargo);

    ["ACE_Track", _vehicle, true] call ace_cargo_fnc_loadItem;
};

if (_vehicle iskindOf "rhsusf_m1a1tank_base") then {
    [_vehicle, 4, -1, false, false] call FUNC(setCargoAttributes);
    ["ACE_Track", _vehicle, true] call ace_cargo_fnc_loadItem;

    [_vehicle, 
        GET_CONTAINER("vehicle_bradley")
    ] call FUNC(setCargo);
};

if (_vehicle iskindOf "RHS_MELB_base") then {
    [_vehicle, []] call FUNC(setCargo);
};


// Deployable
if (_vehicle iskindOf "rhs_m2staticmg_base") then {
    [_vehicle, []] call FUNC(setCargo);
};

if (_vehicle iskindOf "RHS_MK19_TriPod_base") then {
    [_vehicle, []] call FUNC(setCargo);
};

if (_vehicle iskindOf "RHS_TOW_TriPod_base") then {
    [_vehicle, []] call FUNC(setCargo);
};

if (_vehicle iskindOf "NDS_M224_mortar_base") then {
    [_vehicle, []] call FUNC(setCargo);
};


// Rotary Wing
if (_vehicle iskindOf "Heli_Transport_01_base_F") then {
    switch (_vehicleType) do {
        case "RHS_UH60M_MEV2_d";
        case "RHS_UH60M_MEV_d";
        case "RHS_UH60M_MEV2";
        case "RHS_UH60M_MEV";
        case "MED": {
            [_vehicle, 
                GET_CONTAINER("vehicle_medicalAtlas")
            ] call FUNC(setCargo);

            ["ace_medicalSupplyCrate",
                GET_CONTAINER("crate_medicalAtlas"),
                _vehicle
            ] call FUNC(createCargoCrate);
        };
        default {
            [_vehicle, 
                GET_CONTAINER("vehicle_heliTransport")
            ] call FUNC(setCargo);
        };
    };
};

if (_vehicle iskindOf "Heli_Transport_02_base_F") then {
    [_vehicle, 
        GET_CONTAINER("vehicle_heliTransport")
    ] call FUNC(setCargo);
};

if (_vehicle iskindOf "TF373_SOAR_MH47G_Base") then {
    [_vehicle, 
        GET_CONTAINER("vehicle_heliTransport")
    ] call FUNC(setCargo);
};

if (_vehicle iskindOf "vtx_MH60M") then {
    [_vehicle, 
        GET_CONTAINER("vehicle_heliTransport")
    ] call FUNC(setCargo);
};

if (_vehicle iskindOf "RHS_AH64_base") then {
    [_vehicle, []] call FUNC(setCargo);
};

if (_vehicle iskindOf "TF373_SOAR_MH47G_Base") then {
    [_vehicle, 
        GET_CONTAINER("vehicle_heliTransport")
    ] call FUNC(setCargo);
};

// Fixed Wing
if (_vehicle iskindOf "RHS_C130J_Base") then {
    [_vehicle, 45, -1, false, false] call FUNC(setCargoAttributes);

    [_vehicle, []] call FUNC(setCargo);
};
