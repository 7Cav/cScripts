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
    "I_Heli_light_03_dynamicLoadout_F",
    "I_Heli_light_03_unarmed_F",
    "I_E_Heli_light_03_dynamicLoadout_F",
    "I_E_Heli_light_03_unarmed_F",
    "O_Heli_Light_02_dynamicLoadout_F",
    "O_Heli_Light_02_unarmed_F",

    "rhs_uh1h_idap",
    "rhs_uh1h_un",
    "LOP_IRAN_UH1Y_UN",
    "rhs_uh1h_hidf",
    "rhs_uh1h_hidf_gunship",
    "rhs_uh1h_hidf_unarmed",
    "LOP_IA_UH1Y_UN",
    "RHS_UH1Y_FFAR_d",
    "RHS_UH1Y_d",
    "RHS_UH1Y_UNARMED_d",
    "RHS_UH1Y_FFAR",
    "RHS_UH1Y",
    "RHS_UH1Y_UNARMED",

    "RHS_UH60M_d",
    "RHS_UH60M_ESSS_d",
    "RHS_UH60M_ESSS2_d",
    "RHS_UH60M2_d",
    "RHS_UH60M_MEV2_d",
    "RHS_UH60M_MEV_d",
    "RHS_UH60M",
    "RHS_UH60M_ESSS",
    "RHS_UH60M_ESSS2",
    "RHS_UH60M_MEV2",
    "RHS_UH60M_MEV"
];

private _transportRotaryPara = [
    "rhsusf_CH53E_USMC",
    "rhsusf_CH53E_USMC_GAU21",
    "rhsusf_CH53E_USMC_D",
    "rhsusf_CH53E_USMC_GAU21_D",
    "RHS_CH_47F",
    "RHS_CH_47F_light",
    "RHS_CH_47F_10",
    "B_Heli_Transport_03_unarmed_F",
    "B_Heli_Transport_03_F",
    "Boeing_CH_47_F_T",
    "Boeing_CH_47_F_R",
    "Boeing_CH_47_F_G",
    "I_Heli_Transport_02_F",
    "LOP_IRAN_CH47F",

    "LOP_AA_Mi8MTV3_FAB",
    "LOP_AA_Mi8MTV3_UPK23",
    "rhsgref_cdf_b_reg_Mi8amt",
    "rhsgref_cdf_b_reg_Mi8amt",
    "rhsgref_cdf_b_reg_Mi17Sh",
    "LOP_CDF_Mi8MTV3_FAB",
    "LOP_CDF_Mi8MTV3_UPK23",
    "LOP_IA_Mi8MTV3_FAB",
    "LOP_IA_Mi8MTV3_UPK23",
    "rhsgref_ins_Mi8amt",
    "LOP_ChDKZ_Mi8MTV3_FAB",
    "LOP_ChDKZ_Mi8MTV3_UPK23",
    "RHS_Mi8T_vdv",
    "RHS_Mi8MTV3_heavy_vdv",
    "RHS_Mi8MTV3_vdv",
    "RHS_Mi8mt_vdv",
    "RHS_Mi8AMT_vdv",
    "RHS_Mi8mt_vv",
    "RHS_Mi8t_vv",
    "RHS_Mi8AMT_vvsc",
    "RHS_Mi8AMTSh_vvsc",
    "RHS_Mi8mt_vvsc",
    "RHS_Mi8MTV3_vvsc",
    "RHS_Mi8MTV3_heavy_vvsc",
    "RHS_Mi8T_vvsc",
    "RHS_Mi8T_vvs",
    "RHS_Mi8MTV3_heavy_vvs",
    "RHS_Mi8MTV3_vvs",
    "RHS_Mi8mt_vvs",
    "RHS_Mi8AMTSh_vvs",
    "RHS_Mi8AMT_vvs",
    "LOP_SLA_Mi8MTV3_FAB",
    "LOP_SLA_Mi8MTV3_UPK23",
    "LOP_TKA_Mi8MTV3_UPK23",
    "LOP_TKA_Mi8MTV3_FAB",
    "rhsgref_cdf_reg_Mi8amt",
    "rhsgref_cdf_reg_Mi17Sh",
    "rhsgref_un_Mi8amt",
    "rhsgref_ins_g_Mi8amt",
    "LOP_IRAN_Mi8MTV3_FAB",
    "LOP_IRAN_Mi8MTV3_UPK23",
    "LOP_UKR_Mi8MTV3_UPK23",
    "LOP_UKR_Mi8MTV3_FAB",
    "LOP_UA_Mi8MTV3_UPK23",
    "LOP_UA_Mi8MTV3_FAB",
    "LOP_UN_Mi8MTV3_UPK23",
    "LOP_UN_Mi8MTV3_FAB",
    "RHS_Mi8amt_civilian",
    "RHS_Mi8t_civilian"
];

private _fixedWingTransport = [
    "B_T_VTOL_01_infantry_F",

    "RHS_C130J"
];

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
        [_vehicle] call FUNC(checkVehicle);
    };
    case (typeOf _vehicle in _transportRotaryPara): {
        [_vehicle] call FUNC(addJump);
        [_vehicle] call FUNC(checkVehicle);
    };
    case (typeOf _vehicle in _fixedWingTransport): {
        [_vehicle] call FUNC(addJump);
        [_vehicle] call FUNC(addHaloJump);
        [_vehicle] call FUNC(checkVehicle);
    };
    case (typeOf _vehicle in _logisticalVehicles): {
        [_vehicle] call FUNC(addFortifyArea);
        [_vehicle] call FUNC(checkVehicle);
    };
};

_vehicle setVariable [QEGVAR(Vehicle,Settings), true];