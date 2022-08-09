#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function changes appearence of the given vehicle within bluefor us objects
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Example:
 * ["vic"] call cScripts_fnc_vehicle_addCosmetics;
 */

params [["_vehicle", objNull, [objNull]]];

if (!isServer) exitWith {};
if (_vehicle iskindOf "man") exitWith {};
if (!isNil {_vehicle getVariable QEGVAR(Vehicle,Cosmetics);}) exitWith {[formatText["Vehicle cosmetics already applied for %1.", _vehicle]] call FUNC(warning);};

// Is valid vehicle
private _factionArray = parseSimpleArray EGVAR(Settings,vehicleFactions);
if !(_factionArray isEqualType []) exitWith {["Faction array have not been setup correctly.", "Vehicle"] call FUNC(error);};
if (!(faction _vehicle in _factionArray)) exitWith {};


private _vehicleType = _vehicle getVariable [QEGVAR(Vehicle,Type), typeOf _vehicle];

private _textureMed = "\z\cav\addons\textures\data\vehicles\label\special\medic_s_ca.paa";

if (_vehicle iskindOf "rhsusf_hmmwe_base") then { // MRAP_01_base_F
    _vehicle animateSource ["iff_hide", 1, true];
    _vehicle animateSource ["hide_CIP", 1, true];
    _vehicle animateSource ["snorkel_lower", 1, true];
    _vehicle animateSource ["Hide_A2Bumper", 1, true];

    if (_vehicleType == "MED") then {
        if (_vehicle isKindOf "rhsusf_m998_w_2dr") then {
            [_vehicle, [-1.1,-0.28,-0.91] , false, _textureMed, [[1,0,0], [0,0,1]]] call FUNC(createVehicleLable);
            [_vehicle, [1.1,-0.28,-0.91] , false, _textureMed, [[-1,0,0], [0,0,1]]] call FUNC(createVehicleLable);
        };
    };
};

if (_vehicle iskindOf "rhsusf_m1151_base") then { // MRAP_01_base_F
    _vehicle animateSource ["snorkel_lower", 1, true];
    _vehicle animateSource ["iff_hide", 1, true];
    _vehicle animateSource ["dwf_kit_Hide", 1, true];
};

if (_vehicle iskindOf "rhsusf_m1152_base") then { // MRAP_01_base_F
    _vehicle animateSource ["snorkel_lower", 1, true];
    _vehicle animateSource ["iff_hide", 1, true];
    _vehicle animateSource ["dwf_kit_Hide", 1, true];
};

if (_vehicle iskindOf "rhsusf_fmtv_base") then {
};

if (_vehicle iskindOf "rhsusf_stryker_base") then {
    _vehicle animateSource ["Hide_CIP", 1, true];

    if (_vehicleType == "MED") then {
        [_vehicle, [-0.98,-1.32,-0.42] , false, _textureMed, [[1,0,-0.145], [1,0,0]]] call FUNC(createVehicleLable);
        [_vehicle, [1.666,-1.32,-0.42] , false, _textureMed, [[-1,0,-0.152], [0,0,1]]] call FUNC(createVehicleLable);
    };

    _vehicle setObjectTextureGlobal [12, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\2_ca.paa"];
    _vehicle setObjectTextureGlobal [13, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\-_ca.paa"];
    _vehicle setObjectTextureGlobal [14, "\rhsusf\addons\RHSUSF_Decals\Data\Numbers\USStencil\B_ca.paa"];
    _vehicle setObjectTextureGlobal [15, ""];
};

if (_vehicle iskindOf "RHS_M2A2_Base") then {
};

if (_vehicle iskindOf "RHS_MELB_base") then {
};

if (_vehicle iskindOf "rhsusf_m1a1tank_base") then {
    _vehicle setVariable ["RHS_Decal_Enabled", false];

    [{
        (_this select 0) animateSource ["Miles_Hide", 1, true];
        (_this select 0) animateSource ["IFF_Panels_Hide", 1, true];
    }, [_vehicle]] call CBA_fnc_execNextFrame;

    switch (_vehicle getVariable [QEGVAR(Vehicle,Callsign), 0]) do {
        case 1: {
            _vehicle setObjectTextureGlobal [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\1_ca.paa"];
            _vehicle setObjectTextureGlobal [12, "\z\cav\addons\textures\data\vehicles\abrams\BarrelArt_120mmIV_ca.paa"];
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), 1];
            _vehicle setVariable [QEGVAR(Vehicle,Name), "SABRE-1"];
        };
        case 2: {
            _vehicle setObjectTextureGlobal [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\2_ca.paa"];
            _vehicle setObjectTextureGlobal [12, "\z\cav\addons\textures\data\vehicles\abrams\BarrelArt_BountyHunters_ca.paa"];
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), 2];
            _vehicle setVariable [QEGVAR(Vehicle,Name), "SABRE-2"];
        };
        case 3: {
            _vehicle setObjectTextureGlobal [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\3_ca.paa"];
            _vehicle setObjectTextureGlobal [12, "\z\cav\addons\textures\data\vehicles\abrams\BarrelArt_IronCladLads_ca.paa"];
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), 3];
            _vehicle setVariable [QEGVAR(Vehicle,Name), "SABRE-3"];
        };
        case 4: {
            _vehicle setObjectTextureGlobal [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\4_ca.paa"];
            _vehicle setObjectTextureGlobal [12, "\z\cav\addons\textures\data\vehicles\abrams\BarrelArt_WarSaw_ca.paa"];
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), 4];
            _vehicle setVariable [QEGVAR(Vehicle,Name), "SABRE-4"];
        };
        case -1: {
            _vehicle setObjectTextureGlobal [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\1_ca.paa"];
            _vehicle setObjectTextureGlobal [12, ""];
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), -1];
            _vehicle setVariable [QEGVAR(Vehicle,Name), "SABRE-1"];
        };
        case -2: {
            _vehicle setObjectTextureGlobal [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\2_ca.paa"];
            _vehicle setObjectTextureGlobal [12, ""];
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), -2];
            _vehicle setVariable [QEGVAR(Vehicle,Name), "SABRE-2"];
        };
        case -3: {
            _vehicle setObjectTextureGlobal [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\3_ca.paa"];
            _vehicle setObjectTextureGlobal [12, ""];
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), -3];
            _vehicle setVariable [QEGVAR(Vehicle,Name), "SABRE-3"];
        };
        case -4: {
            _vehicle setObjectTextureGlobal [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\4_ca.paa"];
            _vehicle setObjectTextureGlobal [12, ""];
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), -4];
            _vehicle setVariable [QEGVAR(Vehicle,Name), "SABRE-4"];
        };
        default {
            _vehicle setObjectTextureGlobal [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\0_ca.paa"];
            _vehicle setObjectTextureGlobal [12, ""];
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), 0];
            _vehicle setVariable [QEGVAR(Vehicle,Name), ""];
        };
    };
};

if (_vehicle iskindOf "RHS_UH60_Base") then {
};

if (_vehicle iskindOf "RHS_CH_47F_base") then {
};

if (_vehicle iskindOf "RHS_AH64_base") then {
};

if (_vehicle iskindOf "rhs_m2staticmg_base") then {
};

if (_vehicle iskindOf "RHS_MK19_TriPod_base") then {
};

if (_vehicle iskindOf "RHS_TOW_TriPod_base") then {
};

if (_vehicle iskindOf "NDS_M224_mortar_base") then {
};

if (_vehicle iskindOf "RHS_C130J_Base") then {
};

_vehicle setPlateNumber "1/7 Cav";

// Add eventHandlers to handle death and deletion.
_vehicle addEventHandler ["Killed", {
    params["_vehicle"];
    private _labels = _vehicle getVariable [QEGVAR(Vehicle,Labels), []];
    if (count _labels != 0) then {
        {deleteVehicle _x} forEach _labels;
    };
}];
_vehicle addEventHandler ["Deleted", {
    params["_vehicle"];
    private _labels = _vehicle getVariable [QEGVAR(Vehicle,Labels), []];
    if (count _labels != 0) then {
        {deleteVehicle _x} forEach _labels;
    };
}];

_vehicle setVariable [QEGVAR(Vehicle,Cosmetics), true];
