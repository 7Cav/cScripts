/*
 * Author: CPL.Brostrom.A 
 * This function checks if the helicopter type is correct and apply the desired logo.
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Texture <STRING>
 *
 * Example:
 *  call cScripts_fnc_moduleApplyFlag;
 */

#include "..\script_component.hpp";

params ["_flagpole"];

_flagpole = [_logic, false] call Ares_fnc_GetUnitUnderCursor;
_flagpoleType = [
    "rhs_Flag_chdkz",
    "rhssaf_flag_serbia",
    "rhssaf_flag_yugoslavia",
    "Flag_AAF_F",
    "rhs_Flag_abk_F",
    "lop_Flag_Afghan_F",
    "Flag_AltisColonial_F",
    "Flag_Altis_F",
    "Flag_ARMEX_F",
    "Flag_BI_F",
    "Flag_Blue_F",
    "Flag_Blueking_F",
    "Flag_Blueking_inverted_F",
    "Flag_Burstkoke_F",
    "Flag_Burstkoke_inverted_F",
    "rhs_Flag_Che_F",
    "lop_Flag_cdf_F",
    "Flag_CSAT_F",
    "Flag_CTRG_F",
    "rhs_Flag_DNR_F",
    "Flag_FD_Blue_F",
    "Flag_FD_Green_F",
    "Flag_FD_Orange_F",
    "Flag_FD_Purple_F",
    "Flag_FD_Red_F",
    "Flag_FIA_F",
    "Flag_Fuel_F",
    "Flag_Fuel_inverted_F",
    "Flag_Gendarmerie_F",
    "Flag_Green_F",
    "Flag_HorizonIslands_F",
    "Flag_ION_F",
    "lop_Flag_Iraq_F",
    "lop_Flag_pesh_F",
    "Flag_Larkin_F",
    "rhs_Flag_LNR_F",
    "Flag_NATO_F",
    "rhs_Flag_Ose_F",
    "Flag_POWMIA_F",
    "Flag_Quontrol_F",
    "lop_Flag_racs_F",
    "Flag_Red_F",
    "Flag_RedCrystal_F",
    "Flag_Redburger_F",
    "Flag_Redstone_F",
    "rhs_Flag_Russia_F",
    "lop_Flag_sla_F",
    "Flag_Suatmm_F",
    "Flag_Syndikat_F",
    "lop_Flag_tak_F",
    "rhs_Flag_TRN_F",
    "Flag_UK_F",
    "Flag_UNO_F",
    "Flag_US_F",
    "rhs_Flag_vdv_F",
    "Flag_Viper_F",
    "rhs_Flag_vmf_F",
    "Flag_Vrana_F",
    "Flag_White_F",
    "FlagPole_F",
    "rhs_Flag_Insurgents",
    "ACE_Rallypoint_East_Base",
    "ACE_Rallypoint_East",
    "ACE_Rallypoint_Independent",
    "ACE_Rallypoint_Independent_Base",
    "ACE_Rallypoint_West",
    "ACE_Rallypoint_West_Base",
    "TF47_flag",
    "FlagCarrierArmex_EP1",
    "FlagCarrierBIS_EP1",
    "FlagCarrierBLUFOR_EP1",
    "FlagCarrierCDFEnsign_EP1",
    "FlagCarrierINS",
    "FlagCarrierCDF_EP1",
    "FlagCarrierCDF",
    "FlagCarrierCzechRepublic_EP1",
    "FlagCarrierGermany_EP1",
    "FlagCarrierBAF",
    "FlagCarrierINDFOR_EP1",
    "FlagCarrierTakistanKingdom_EP1",
    "FlagCarrierGUE",
    "FlagCarrierNATO_EP1",
    "FlagCarrierOPFOR_EP1",
    "FlagCarrierPOWMIA_EP1",
    "FlagCarrierSouth",
    "FlagCarrierRedCross_EP1",
    "FlagCarrierRedCrescent_EP1",
    "FlagCarrierRedCrystal_EP1",
    "FlagCarrierRU",
    "FlagCarrierNorth",
    "FlagCarrierTakistan_EP1",
    "FlagCarrierTFKnight_EP1",
    "FlagCarrierTKMilitia_EP1",
    "FlagCarrierUNO_EP1",
    "FlagCarrierUSArmy_EP1",
    "FlagCarrierWest",
    "FlagCarrierUSA",
    "FlagCarrierUSA_EP1",
    "FlagCarrierWhite_EP1",
    "FlagPole_EP1"
];

if (typeOf _flagpole in _flagpoleType) then {

    _dialogResult = [
        "Set Flag Texture",
        [
            ["Texture type",["Yellow","Black"],0]
        ]
    ] call Ares_fnc_ShowChooseDialog;

    _texture = switch (_dialogResult select 0) do {
        case 0: {"yellow";};
        case 1: {"black";};
    };

    [_flagpole,_texture] remoteExec ["cScripts_fnc_flag",0,true];
} else {
    ["Not a flagpole."] call Ares_fnc_ShowZeusMessage;
    playSound "FD_Start_F";
};
