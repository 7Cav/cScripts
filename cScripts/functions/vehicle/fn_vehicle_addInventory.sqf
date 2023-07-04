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

// Remove ACE Cargo
private _cargoArray = _vehicle getVariable ["ace_cargo_loaded",[]];
{   
    [_x, _vehicle] call ace_cargo_fnc_removeCargoItem;
    
} forEach _cargoArray;

if (_vehicleType == "EMPTY") exitWith { [_vehicle, []] call FUNC(addCargo); };

// Inventories


if (_vehicle iskindOf "I_APC_Wheeled_03_cannon_F") then {
    [_vehicle, 6, 38, false, false] call FUNC(setCargoAttributes);
    
    // Vehicle Inventory
    [_vehicle, 
        "vehicle_strykerDragoon" call EFUNC(logistics,getContainer)
    ] call FUNC(addCargo);

    // Supply Crate
    ["Box_NATO_Equip_F", 
        "crate_strykerDragoon" call EFUNC(logistics,getContainer), 
        _vehicle
    ] call FUNC(createCargoCrate);

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
            [_vehicle, 
                ["vehicle_medicalAtlas"] call EFUNC(logistics,getContainer)
            ] call FUNC(addCargo);

            ["ace_medicalSupplyCrate",
                ["crate_medicalAtlas"] call EFUNC(logistics,getContainer),
                _vehicle
            ] call FUNC(createCargoCrate);
        };
        case "rhsusf_m1165a1_gmv_m2_m240_socom_d";
        case "rhsusf_m1165a1_gmv_mk19_m240_socom_d";
        case "rhsusf_m1165a1_gmv_m2_m240_socom_w";
        case "rhsusf_m1165a1_gmv_mk19_m240_socom_w": {
            [_vehicle, 
                "vehicle_HMMWV" call EFUNC(logistics,getContainer)
            ] call FUNC(addCargo);
        };
        default {
            [_vehicle, 
                "vehicle_HMMWV" call EFUNC(logistics,getContainer)
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
                ["vehicle_medicalAtlas"] call EFUNC(logistics,getContainer)
            ] call FUNC(addCargo);

            ["ace_medicalSupplyCrate",
                ["crate_medicalAtlas"] call EFUNC(logistics,getContainer),
                _vehicle
            ] call FUNC(createCargoCrate);
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
            [_vehicle, 
                ["vehicle_medicalAtlas"] call EFUNC(logistics,getContainer)
            ] call FUNC(addCargo);

            ["ace_medicalSupplyCrate",
                ["crate_medicalAtlas"] call EFUNC(logistics,getContainer),
                _vehicle
            ] call FUNC(createCargoCrate);
        };
        default {
            [_vehicle, 
                "vehicle_strykerDragoon" call EFUNC(logistics,getContainer)
            ] call FUNC(addCargo);
        };
    };
    ["FlexibleTank_01_forest_F", false, _vehicle, 1] call FUNC(createCargoCrate);
};

if (_vehicle iskindOf "RHS_M2A2_Base") then {
    [_vehicle, 4, -1, false, false] call FUNC(setCargoAttributes);

    [_vehicle, 
        "vehicle_bradley" call EFUNC(logistics,getContainer)
    ] call FUNC(addCargo);

    ["ACE_Track", _vehicle, true] call ace_cargo_fnc_loadItem;
};

if (_vehicle iskindOf "rhsusf_m1a1tank_base") then {
    [_vehicle, 4, -1, false, false] call FUNC(setCargoAttributes);
    ["ACE_Track", _vehicle, true] call ace_cargo_fnc_loadItem;

    [_vehicle, 
        ["vehicle_bradley"] call EFUNC(logistics,getContainer)
    ] call FUNC(addCargo);
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
            [_vehicle, 
                ["vehicle_medicalAtlas"] call EFUNC(logistics,getContainer)
            ] call FUNC(addCargo);

            ["ace_medicalSupplyCrate",
                ["crate_medicalAtlas"] call EFUNC(logistics,getContainer),
                _vehicle
            ] call FUNC(createCargoCrate);
        };
        default {
            [_vehicle, 
                ["vehicle_heliTransport"] call EFUNC(logistics,getContainer)
            ] call FUNC(addCargo);
        };
    };
};

if (_vehicle iskindOf "Heli_Transport_02_base_F") then {
    [_vehicle, 
        ["vehicle_heliTransport"] call EFUNC(logistics,getContainer)
    ] call FUNC(addCargo);
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
