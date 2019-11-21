#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This module function allow you to retrofitt a given vehicle to utalize a better and more awesome inventory.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * this call cScripts_fnc_moduleApplyVehicleInventory
 *
 * Public: No
 */

params ["_vehicle"];

_vehicle = [_logic, false] call Ares_fnc_GetUnitUnderCursor;

if (!isNil{_vehicle getVariable QEGVAR(Vehicle,Inventory)}) exitwith {
    ["Vehicle inventory all ready fixed!"] call Ares_fnc_ShowZeusMessage;
    playSound "FD_Start_F";
};

private _transport = [
    "rhsusf_M1078A1P2_WD_fmtv_usarmy", "rhsusf_M1078A1P2_WD_flatbed_fmtv_usarmy", "rhsusf_M1078A1P2_B_WD_fmtv_usarmy", "rhsusf_M1078A1P2_B_WD_flatbed_fmtv_usarmy", "rhsusf_M1078A1P2_B_M2_WD_fmtv_usarmy", "rhsusf_M1078A1P2_B_M2_WD_flatbed_fmtv_usarmy", "rhsusf_M1078A1P2_B_WD_CP_fmtv_usarmy", "rhsusf_M1083A1P2_WD_fmtv_usarmy", "rhsusf_M1083A1P2_WD_flatbed_fmtv_usarmy", "rhsusf_M1083A1P2_B_WD_fmtv_usarmy", "rhsusf_M1083A1P2_B_WD_flatbed_fmtv_usarmy", "rhsusf_M1083A1P2_B_M2_WD_fmtv_usarmy", "rhsusf_M1083A1P2_B_M2_WD_flatbed_fmtv_usarmy", "rhsusf_M1084A1P2_WD_fmtv_usarmy", "rhsusf_M1084A1P2_B_WD_fmtv_usarmy", "rhsusf_M1084A1P2_B_M2_WD_fmtv_usarmy", "rhsusf_M1085A1P2_B_WD_Medical_fmtv_usarmy",
    "rhsusf_m1025_d_m2", "rhsusf_m1025_d_Mk19", "rhsusf_m1025_d", "rhsusf_m1043_d_m2", "rhsusf_m1043_d_mk19", "rhsusf_m1043_d", "rhsusf_m1045_d", "rhsusf_m998_d_2dr_fulltop", "rhsusf_m998_d_2dr_halftop", "rhsusf_m998_d_2dr", "rhsusf_m998_d_4dr_fulltop", "rhsusf_m998_d_4dr_halftop", "rhsusf_m998_d_4dr", "rhsusf_m966_d", "rhsusf_M1117_D", "rhsusf_M1117_O", "rhsusf_M1220_usarmy_d", "rhsusf_M1220_M153_M2_usarmy_d", "rhsusf_M1220_M2_usarmy_d", "rhsusf_M1220_MK19_usarmy_d", "rhsusf_M1230_M2_usarmy_d", "rhsusf_M1230_MK19_usarmy_d", "rhsusf_M1232_usarmy_d", "rhsusf_M1232_M2_usarmy_d", "rhsusf_M1232_MK19_usarmy_d", "rhsusf_M1237_M2_usarmy_d", "rhsusf_M1237_MK19_usarmy_d", "rhsusf_m1025_w_m2", "rhsusf_m1025_w_mk19", "rhsusf_m1025_w", "rhsusf_m1043_w_m2", "rhsusf_m1043_w_mk19", "rhsusf_m1043_w", "rhsusf_m1045_w", "rhsusf_m998_w_2dr_fulltop", "rhsusf_m998_w_2dr_halftop", "rhsusf_m998_w_2dr", "rhsusf_m998_w_4dr_fulltop", "rhsusf_m998_w_4dr_halftop", "rhsusf_m998_w_4dr", "rhsusf_m966_w", "rhsusf_M1117_W", "rhsusf_M1220_usarmy_wd", "rhsusf_M1220_M2_usarmy_wd", "rhsusf_M1220_M153_M2_usarmy_wd", "rhsusf_M1220_MK19_usarmy_wd", "rhsusf_M1230_M2_usarmy_wd", "rhsusf_M1230_MK19_usarmy_wd", "rhsusf_M1230a1_usarmy_wd", "rhsusf_M1232_usarmy_wd", "rhsusf_M1232_M2_usarmy_wd", "rhsusf_M1232_MK19_usarmy_wd", "rhsusf_M1237_M2_usarmy_wd", "rhsusf_M1232_MK19_usarmy_wd", "rhsusf_M1237_M2_usarmy_wd", "rhsusf_M1237_MK19_usarmy_wd",
    "rhsusf_M977A4_usarmy_wd", "rhsusf_M977A4_AMMO_usarmy_wd", "rhsusf_M977A4_REPAIR_usarmy_wd", "rhsusf_M977A4_BKIT_usarmy_wd", "rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_wd", "rhsusf_M977A4_AMMO_BKIT_usarmy_wd", "rhsusf_M977A4_BKIT_M2_usarmy_wd", "rhsusf_M977A4_AMMO_BKIT_M2_usarmy_wd", "rhsusf_M977A4_REPAIR_BKIT_usarmy_wd", "rhsusf_M978A4_usarmy_wd", "rhsusf_M978A4_BKIT_usarmy_wd", "rhsusf_M1078A1P2_D_fmtv_usarmy", "rhsusf_M1078A1P2_D_flatbed_fmtv_usarmy", "rhsusf_M1078A1P2_B_D_fmtv_usarmy", "rhsusf_M1078A1P2_B_D_flatbed_fmtv_usarmy", "rhsusf_M1078A1P2_B_M2_D_fmtv_usarmy", "rhsusf_M1078A1P2_B_M2_D_flatbed_fmtv_usarmy", "rhsusf_M1078A1P2_B_D_CP_fmtv_usarmy", "rhsusf_M1083A1P2_D_fmtv_usarmy", "rhsusf_M1083A1P2_D_flatbed_fmtv_usarmy", "rhsusf_M1083A1P2_B_D_fmtv_usarmy", "rhsusf_M1083A1P2_B_D_flatbed_fmtv_usarmy", "rhsusf_M1083A1P2_B_M2_D_fmtv_usarmy", "rhsusf_M1083A1P2_B_M2_D_flatbed_fmtv_usarmy", "rhsusf_M1084A1P2_D_fmtv_usarmy", "rhsusf_M1084A1P2_B_D_fmtv_usarmy", "rhsusf_M1084A1P2_B_M2_D_fmtv_usarmy", "rhsusf_M977A4_usarmy_d", "rhsusf_M977A4_AMMO_usarmy_d", "rhsusf_M977A4_REPAIR_usarmy_d", "rhsusf_M977A4_AMMO_BKIT_usarmy_d", "rhsusf_M977A4_AMMO_BKIT_M2_usarmy_d", "rhsusf_M977A4_BKIT_usarmy_d", "rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_d", "rhsusf_M977A4_BKIT_M2_usarmy_d", "rhsusf_M977A4_REPAIR_BKIT_usarmy_d", "rhsusf_M978A4_usarmy_d", "rhsusf_M978A4_BKIT_usarmy_d",
    "Cav_Charlie_m1025_d_m2_f","Cav_Charlie_m1025_d_Mk19_f","Cav_Charlie_m1025_d_f","Cav_Charlie_m1043_d_m2_f","Cav_Charlie_m1043_d_mk19_f","Cav_Charlie_m1043_d_f","Cav_Charlie_m1045_d_f","Cav_Charlie_m998_d_2dr_fulltop_f","Cav_Charlie_m998_d_2dr_halftop_f","Cav_Charlie_m998_d_2dr_f","Cav_Charlie_m998_d_4dr_fulltop_f","Cav_Charlie_m998_d_4dr_halftop_f","Cav_Charlie_m998_d_4dr_f","Cav_Charlie_M1220_usarmy_d","Cav_Charlie_M1220_M153_M2_usarmy_d","Cav_Charlie_M1220_M2_usarmy_d","Cav_Charlie_M1220_MK19_usarmy_d","Cav_Charlie_M1230_M2_usarmy_d","Cav_Charlie_M1230_MK19_usarmy_d","Cav_Charlie_M1232_usarmy_d","Cav_Charlie_M1232_M2_usarmy_d","Cav_Charlie_M1232_MK19_usarmy_d","Cav_Charlie_M1237_M2_usarmy_d","Cav_Charlie_M1237_MK19_usarmy_d","Cav_Charlie_m966_d_f","Cav_Charlie_m1025_w_m2_f","Cav_Charlie_m1025_w_Mk19_f","Cav_Charlie_m1025_w_f","Cav_Charlie_m1043_w_m2_f","Cav_Charlie_m1043_w_mk19_f","Cav_Charlie_m1043_w_f","Cav_Charlie_m1045_w_f","Cav_Charlie_m998_w_2dr_fulltop_f","Cav_Charlie_m998_w_2dr_halftop_f","Cav_Charlie_m998_w_2dr_f","Cav_Charlie_m998_w_4dr_fulltop_f","Cav_Charlie_m998_w_4dr_halftop_f","Cav_Charlie_m998_w_4dr_f","Cav_Charlie_M1220_usarmy_wd","Cav_Charlie_M1220_M153_M2_usarmy_wd","Cav_Charlie_M1220_M2_usarmy_wd","Cav_Charlie_M1220_MK19_usarmy_wd","Cav_Charlie_M1230_M2_usarmy_wd","Cav_Charlie_M1230_MK19_usarmy_wd","Cav_Charlie_M1232_usarmy_wd","Cav_Charlie_M1232_M2_usarmy_wd","Cav_Charlie_M1232_MK19_usarmy_wd","Cav_Charlie_M1237_M2_usarmy_wd","Cav_Charlie_M1237_MK19_usarmy_wd","Cav_Charlie_m966_w_f",
    "Cav_Bravo_m1025_d_m2_f","Cav_Bravo_m1025_d_Mk19_f","Cav_Bravo_m1025_d_f","Cav_Bravo_m1043_d_m2_f","Cav_Bravo_m1043_d_mk19_f","Cav_Bravo_m1043_d_f","Cav_Bravo_m1045_d_f","Cav_Bravo_m998_d_2dr_fulltop_f","Cav_Bravo_m998_d_2dr_halftop_f","Cav_Bravo_m998_d_2dr_f","Cav_Bravo_m998_d_4dr_fulltop_f","Cav_Bravo_m998_d_4dr_halftop_f","Cav_Bravo_m998_d_4dr_f","Cav_Bravo_m966_d_f","Cav_Bravo_m1025_w_m2_f","Cav_Bravo_m1025_w_Mk19_f","Cav_Bravo_m1025_w_f","Cav_Bravo_m1043_w_m2_f","Cav_Bravo_m1043_w_mk19_f","Cav_Bravo_m1043_w_f","Cav_Bravo_m1045_w_f","Cav_Bravo_m998_w_2dr_fulltop_f","Cav_Bravo_m998_w_2dr_halftop_f","Cav_Bravo_m998_w_2dr_f","Cav_Bravo_m998_w_4dr_fulltop_f","Cav_Bravo_m998_w_4dr_halftop_f","Cav_Bravo_m998_w_4dr_f","Cav_Bravo_m966_w_f", "rhsusf_M1239_socom_d", "rhsusf_M1239_M2_socom_d", "rhsusf_M1239_MK19_socom_d", "rhsusf_M1239_M2_Deploy_socom_d", "rhsusf_M1239_MK19_Deploy_socom_d"
];
private _transport_rotary = [
    "RHS_UH60M_MEV_d","RHS_UH60M_MEV2_d","RHS_UH60M2_d","RHS_UH60M_ESSS_d","RHS_UH60M_ESSS2_d","RHS_UH60M_d","RHS_UH60M","RHS_UH60M_ESSS","RHS_UH60M_ESSS2","RHS_UH60M2","RHS_UH60M_MEV2","RHS_UH60M_MEV","RHS_UH1Y_FFAR_d","RHS_UH1Y_d","RHS_UH1Y_UNARMED_d","RHS_UH1Y_FFAR","RHS_UH1Y","RHS_UH1Y_UNARMED",
    "Cav_Alpha_UH60M","Cav_Alpha_UH60M_MEV2","Cav_Alpha_UH60M2"
];
private _armoredTransport = [
    "M1126_ICV_M134_DG1_NOSLATDES", "M1126_ICV_M134_DG1_NOSLATWOOD", "M1126_ICV_M134_DG1_SLATDES", "M1126_ICV_M134_DG1_SLATWOOD", "M1126_ICV_M2_DG1_NOSLATDES", "M1126_ICV_M2_DG1_NOSLATWOOD", "M1126_ICV_M2_DG1_SLATDES", "M1126_ICV_M2_DG1_SLATWOOD", "M1126_ICV_M2NEST_DG1_NOSLATDES", "M1126_ICV_M2NEST_DG1_SLATDES", "M1126_ICV_M2NEST_DG1_SLATWOOD", "M1126_ICV_mk19_DG1_NOSLATDES", "M1126_ICV_mk19_DG1_NOSLATWOOD", "M1126_ICV_mk19_DG1_SLATDES", "M1126_ICV_mk19_DG1_SLATWOOD", "M1128_MGS_DG1_NOSLATWOOD", "M1128_MGS_DG1_NOSLATDES", "M1128_MGS_DG1_SLATDES", "M1128_MGS_DG1_SLATWOOD", "M1129_MC_DG1_NOSLATDES", "M1129_MC_DG1_NOSLATWOOD", "M1129_MC_DG1_SLATWOOD", "M1129_MC_DG1_SLATDES", "M1130_CV_DG1_NOSLATWOOD", "M1130_CV_DG1_SLATDES", "M1130_CV_DG1_SLATWOOD", "M1135_ATGMV_DG1_NOSLATDES", "M1135_ATGMV_DG1_NOSLATWOOD", "M1135_ATGMV_DG1_SLATWOOD", "M1135_ATGMV_DG1_SLATDES",
    "RHS_M2A2", "RHS_M2A2_BUSKI", "RHS_M2A3", "RHS_M2A3_BUSKI", "RHS_M2A3_BUSKIII", "RHS_M6", "RHS_M2A2_wd", "RHS_M2A2_BUSKI_WD", "RHS_M2A3_wd", "RHS_M2A3_BUSKI_wd", "RHS_M2A3_BUSKIII_wd", "RHS_M6_wd", "rhsusf_stryker_m1126_m2_d"
];
private _armor = ["rhsusf_m1a1aimd_usarmy", "rhsusf_m1a1aim_tuski_d", "rhsusf_m1a2sep1d_usarmy", "rhsusf_m1a2sep1tuskid_usarmy", "rhsusf_m1a2sep1tuskiid_usarmy", "rhsusf_m1a1aimwd_usarmy", "rhsusf_m1a1aim_tuski_wd", "rhsusf_m1a2sep1wd_usarmy", "rhsusf_m1a2sep1tuskiwd_usarmy", "rhsusf_m1a2sep1tuskiiwd_usarmy", "rhsusf_m1a1fep_d", "rhsusf_m1a1fep_wd", "rhsusf_m1a1fep_od", "rhsusf_m1a1hc_wd"];
private _medical = [
    "rhsusf_M1085A1P2_B_D_Medical_fmtv_usarmy", "rhsusf_M1085A1P2_B_WD_Medical_fmtv_usarmy", "M1133_MEV_DG1_NOSLATWOOD", "M1133_MEV_DG1_NOSLATDES", "M1133_MEV_DG1_SLATDES", "M1133_MEV_DG1_SLATWOOD", "B_Truck_01_medical_F", "RHS_UH60M_MEV2", "RHS_UH60M_MEV", "RHS_UH60M_MEV2_d", "RHS_UH60M_MEV_d",
    "Cav_Charlie_M1230a1_usarmy_d","Cav_Charlie_M1230a1_usarmy_wd"
];
private _c130 = [
    "RHS_C130J","Cav_Alpha_C130J"
];
private _empty = [
    "B_APC_Tracked_01_CRV_F",
    "B_Heli_Light_01_dynamicLoadout_F","B_Heli_Light_01_F","RHS_MELB_AH6M","RHS_MELB_MH6M","RHS_MELB_H6M",
    "RHS_AH64D_wd", "RHS_AH64D_noradar_wd",
    "RHS_AH1Z", "RHS_AH1Z_wd"
];

private _allVehicles = [];
{ _allVehicles append _x } forEach [_transport, _transport_rotary, _armoredTransport, _armor, _medical, _c130, _empty];

if (typeOf _vehicle in _allVehicles) exitWith {
    [_vehicle] remoteExec [QFUNC(setVehicleInventory),0,true];
    ["Vehicle ready!"] call Ares_fnc_ShowZeusMessage;
};

["Not a supported vehicle!"] call Ares_fnc_ShowZeusMessage;
playSound "FD_Start_F";
