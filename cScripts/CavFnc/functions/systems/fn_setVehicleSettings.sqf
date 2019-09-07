#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function apply settigns to vehicles.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Example:
 * ["vic"] call cScripts_fnc_setVehicleSettings
 */

params [["_vehicle", objNull, [objNull]]];

if (!isNil{_vehicle getVariable QEGVAR(Vehicle,Settings)}) exitWith {[formatText["Vehicle settings already applied for %1.", _vehicle]] call FUNC(logWarning);};

#ifdef DEBUG_MODE
    [formatText["Applying vehicle settings to %1.", _vehicle]] call FUNC(logInfo);
#endif

private _transportRotary = [
    "B_Heli_Transport_01_F",
    "B_CTRG_Heli_Transport_01_sand_F",
    "B_CTRG_Heli_Transport_01_tropic_F",
    "O_Heli_Light_02_unarmed_F",
    "O_Heli_Light_02_dynamicLoadout_F",
    "I_Heli_light_03_dynamicLoadout_F",
    "I_Heli_light_03_unarmed_F",

    "RHS_UH60M_MEV_d",
    "RHS_UH60M_MEV2_d",
    "RHS_UH60M2_d",
    "RHS_UH60M_ESSS_d",
    "RHS_UH60M_ESSS2_d",
    "RHS_UH60M_d",
    "RHS_UH60M",
    "RHS_UH60M_ESSS",
    "RHS_UH60M_ESSS2",
    "RHS_UH60M2",
    "RHS_UH60M_MEV2",
    "RHS_UH60M_MEV",

    "RHS_UH1Y_FFAR_d",
    "RHS_UH1Y_d",
    "RHS_UH1Y_UNARMED_d",
    "RHS_UH1Y_FFAR",
    "RHS_UH1Y",
    "RHS_UH1Y_UNARMED",
    
    "rhs_uh1h_hidf",
    "rhs_uh1h_hidf_gunship",
    "rhs_uh1h_hidf_unarmed",

    "Cav_Alpha_UH60M",
    "Cav_Alpha_UH60M2",
    "Cav_Alpha_UH60M_MEV2"
];
private _fixedWingTransport = ["RHS_C130J", "Cav_Alpha_C130J"];

private _logisticalVehicles = [
    "B_Truck_01_Repair_F",
    "B_T_Truck_01_Repair_F",
    "rhsusf_M977A4_REPAIR_usarmy_d",
    "rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_d",
    "rhsusf_M977A4_REPAIR_BKIT_usarmy_d",
    "rhsusf_M977A4_REPAIR_usarmy_wd",
    "rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_wd",
    "rhsusf_M977A4_REPAIR_BKIT_usarmy_wd",
    "rhsusf_M1078A1P2_B_D_CP_fmtv_usarmy",
    "rhsusf_M1078A1P2_B_WD_CP_fmtv_usarmy",
    "rhsusf_M1239_socom_d",
    "rhsusf_M1239_M2_socom_d",
    "rhsusf_M1239_MK19_socom_d",
    "rhsusf_M1239_M2_Deploy_socom_d",
    "rhsusf_M1239_MK19_Deploy_socom_d"
];

switch (true) do {
    case (typeOf _vehicle in _transportRotary): {
        [_vehicle] call FUNC(addGetOutHelo);
    };
    case (typeOf _vehicle in _fixedWingTransport): {
        [_vehicle] call FUNC(addJump);
    };
    case (typeOf _vehicle in _logisticalVehicles): {
        [_vehicle] call FUNC(addFortifyArea);
    };
};

_vehicle setVariable [QEGVAR(Vehicle,Settings), true];