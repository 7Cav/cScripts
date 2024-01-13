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

if (_vehicleType == "EMPTY") exitWith { [_vehicle, []] call FUNC(addCargo); };


// Ground Vehicles
if (_vehicle iskindOf "I_APC_Wheeled_03_cannon_F") then {
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
                GET_CONTAINER(vehicle_strykerDragoon_V4)
            ] call FUNC(addCargo);

            // Supply Crate
            ["Box_NATO_Equip_F", 
                GET_CONTAINER(crate_strykerDragoon_resupply), 
                _vehicle, nil, "Supply Crate"
            ] call FUNC(createCargoCrate);

            // 4x 60mm mortars with ammo
            ["Box_Syndicate_WpsLaunch_F", 
                GET_CONTAINER(crate_strykerDragoon_60mm), 
                _vehicle, nil, "4x 60mm mortars with ammo"
            ] call FUNC(createCargoCrate);

            // Ammo for 2x 82mm mortars
            private _mortar_ammo_82mm = GET_CONTAINER(crate_strykerDragoon_82mm);
            ["ACE_Box_82mm_Mo_Combo", 
                _mortar_ammo_82mm, 
                _vehicle, nil, "Ammo for 2x 82mm mortars"
            ] call FUNC(createCargoCrate);
            
            ["ACE_Box_82mm_Mo_Combo", 
                _mortar_ammo_82mm,
                _vehicle, nil, "Ammo for 2x 82mm mortars"
            ] call FUNC(createCargoCrate);

            ["Box_NATO_WpsLaunch_F", 
                GET_CONTAINER(crate_stinger), 
                _vehicle, nil, "MANPAD"
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
                GET_CONTAINER(vehicle_strykerDragoon)
            ] call FUNC(addCargo);

            // Supply Crate
            ["Box_NATO_Equip_F", 
                GET_CONTAINER(crate_strykerDragoon_resupply), 
                _vehicle, nil, "Resupply Crate"
            ] call FUNC(createCargoCrate);

            ["Box_NATO_WpsLaunch_F", 
                GET_CONTAINER(crate_stinger), 
                _vehicle, nil, "MANPAD"
            ] call FUNC(createCargoCrate);
        };
        
        // Ambulance strykers: Carry medical supplies and a medical resupply crate.
        case "cav_dragoon_Unarmed_WD";
        case "cav_dragoon_Unarmed_A";
        case "cav_dragoon_Unarmed_D";
        case "MED": {
            [_vehicle, 
                GET_CONTAINER(vehicle_medicalAtlas)
            ] call FUNC(addCargo);

            ["ace_medicalSupplyCrate",
                GET_CONTAINER(crate_medicalAtlas),
                _vehicle, nil, "Medical Supply Crate"
            ] call FUNC(createCargoCrate);
        };
        
        // The standard cav scout stryker
        default {
            // Vehicle Inventory
            [_vehicle, 
                GET_CONTAINER(vehicle_strykerDragoon)
            ] call FUNC(addCargo);

            // Supply Crate
            ["Box_NATO_Equip_F", 
                GET_CONTAINER(crate_strykerDragoon_resupply), 
                _vehicle, nil, "Resupply Crate"
            ] call FUNC(createCargoCrate);
            
            ["Box_NATO_WpsLaunch_F", 
                GET_CONTAINER(crate_stinger), 
                _vehicle, nil, "MANPAD"
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
                GET_CONTAINER(vehicle_medicalAtlas)
            ] call FUNC(addCargo);

            ["ace_medicalSupplyCrate",
                GET_CONTAINER(crate_medicalAtlas),
                _vehicle
            ] call FUNC(createCargoCrate);
        };
        case "rhsusf_m1165a1_gmv_m2_m240_socom_d";
        case "rhsusf_m1165a1_gmv_mk19_m240_socom_d";
        case "rhsusf_m1165a1_gmv_m2_m240_socom_w";
        case "rhsusf_m1165a1_gmv_mk19_m240_socom_w": {
            [_vehicle, 
                GET_CONTAINER(vehicle_HMMWV)
            ] call FUNC(addCargo);
        };
        default {
            [_vehicle, 
                GET_CONTAINER(vehicle_HMMWV)
            ] call FUNC(addCargo);
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
            [_vehicle, 
                GET_CONTAINER(vehicle_medicalAtlas)
            ] call FUNC(addCargo);

            ["ace_medicalSupplyCrate",
                GET_CONTAINER(crate_medicalAtlas),
                _vehicle
            ] call FUNC(createCargoCrate);
        };
        default {
            [_vehicle, []] call FUNC(addCargo);
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
                GET_CONTAINER(vehicle_medicalAtlas)
            ] call FUNC(addCargo);

            ["ace_medicalSupplyCrate",
                GET_CONTAINER(crate_medicalAtlas),
                _vehicle
            ] call FUNC(createCargoCrate);
        };
        default {
            [_vehicle, 
                GET_CONTAINER(vehicle_strykerDragoon)
            ] call FUNC(addCargo);
        };
    };
    ["FlexibleTank_01_forest_F", false, _vehicle, 1] call FUNC(createCargoCrate);
};

if (_vehicle iskindOf "RHS_M2A2_Base") then {
    [_vehicle, 4, -1, false, false] call FUNC(setCargoAttributes);

    [_vehicle, 
        GET_CONTAINER(vehicle_bradley)
    ] call FUNC(addCargo);

    ["ACE_Track", _vehicle, true] call ace_cargo_fnc_loadItem;
};

if (_vehicle iskindOf "rhsusf_m1a1tank_base") then {
    [_vehicle, 4, -1, false, false] call FUNC(setCargoAttributes);
    ["ACE_Track", _vehicle, true] call ace_cargo_fnc_loadItem;

    [_vehicle, 
        GET_CONTAINER(vehicle_bradley)
    ] call FUNC(addCargo);
};

if (_vehicle iskindOf "RHS_MELB_base") then {
    [_vehicle, []] call FUNC(addCargo);
};


// Deployable
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


// Rotary Wing
if (_vehicle iskindOf "Heli_Transport_01_base_F") then {
    switch (_vehicleType) do {
        case "RHS_UH60M_MEV2_d";
        case "RHS_UH60M_MEV_d";
        case "RHS_UH60M_MEV2";
        case "RHS_UH60M_MEV";
        case "MED": {
            [_vehicle, 
                GET_CONTAINER(vehicle_medicalAtlas)
            ] call FUNC(addCargo);

            ["ace_medicalSupplyCrate",
                GET_CONTAINER(crate_medicalAtlas),
                _vehicle
            ] call FUNC(createCargoCrate);
        };
        default {
            [_vehicle, 
                GET_CONTAINER(vehicle_heliTransport)
            ] call FUNC(addCargo);
        };
    };
};

if (_vehicle iskindOf "Heli_Transport_02_base_F") then {
    [_vehicle, 
        GET_CONTAINER(vehicle_heliTransport)
    ] call FUNC(addCargo);
};

if (_vehicle iskindOf "vtx_MH60M") then {
    [_vehicle, 
        GET_CONTAINER(vehicle_heliTransport)
    ] call FUNC(addCargo);
};

if (_vehicle iskindOf "RHS_AH64_base") then {
    [_vehicle, []] call FUNC(addCargo);
};

// Fixed Wing
if (_vehicle iskindOf "RHS_C130J_Base") then {
    [_vehicle, 45, -1, false, false] call FUNC(setCargoAttributes);

    [_vehicle, []] call FUNC(addCargo);
};
