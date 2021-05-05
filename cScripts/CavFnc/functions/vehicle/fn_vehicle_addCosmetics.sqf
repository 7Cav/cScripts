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
if (!(faction _vehicle in ["BLU_F", "BLU_CTRG_F", "BLU_T_F", "BLU_USA_7CAV_F", "rhs_faction_usaf", "rhs_faction_usarmy", "rhs_faction_usarmy_d", "rhs_faction_usarmy_wd", "rhs_faction_usmc", "rhs_faction_usmc_d", "rhs_faction_usmc_wd", "rhs_faction_usn"]));

private _vehicleType = _vehicle getVariable [QEGVAR(Vehicle,Type), typeOf _vehicle];

if (_vehicle iskindOf "rhsusf_hmmwe_base") then { // MRAP_01_base_F
    _vehicle animateSource ["iff_hide", 1, true];
    _vehicle animateSource ["hide_CIP", 1, true];
    _vehicle animateSource ["snorkel_lower", 1, true];
    _vehicle animateSource ["Hide_A2Bumper", 1, true];

    if (_vehicleType == "MED") then {
        if (_vehicle isKindOf "rhsusf_m998_w_2dr") then {
            [_vehicle, [-1.1,-0.28,-0.91] , false, "\z\cav\addons\textures\data\vehicles\label\special\reddiamond_s_ca.paa", [[1,0,0], [0,0,1]]] call FUNC(createVehicleLable);
            [_vehicle, [1.1,-0.28,-0.91] , false, "\z\cav\addons\textures\data\vehicles\label\special\reddiamond_s_ca.paa", [[-1,0,0], [0,0,1]]] call FUNC(createVehicleLable);
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
        [_vehicle, [-0.98,-1.32,-0.42] , false, "\z\cav\addons\textures\data\vehicles\label\special\reddiamond_s_ca.paa", [[1,0,-0.145], [1,0,0]]] call FUNC(createVehicleLable);
        [_vehicle, [1.666,-1.32,-0.42] , false, "\z\cav\addons\textures\data\vehicles\label\special\reddiamond_s_ca.paa", [[-1,0,-0.152], [0,0,1]]] call FUNC(createVehicleLable);
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
    _vehicle animateSource ["Miles_Hide", 1, true];
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

_vehicle setVariable [QEGVAR(Vehicle,Cosmetics), true];
