#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This module function allow you to apply a texture lable to a given vehicle.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * this call cScripts_fnc_moduleApplyVehicleLable
 *
 * Public: No
 */

params ["_vehicle"];

_vehicle = [_logic, false] call Ares_fnc_GetUnitUnderCursor;

if (!isNil{_vehicle getVariable QEGVAR(Vehicle,Label)}) exitwith {
    ["Vehicle all ready have a lable!"] call Ares_fnc_ShowZeusMessage;
    playSound "FD_Start_F";
};

// UH-60 blackhawk
private _vehicleTypeUH60 = [
    "RHS_UH60M_d", 
    "RHS_UH60M_ESSS_d", 
    "RHS_UH60M_ESSS2_d", 
    "RHS_UH60M2_d", 
    "RHS_UH60M_MEV2_d", 
    "RHS_UH60M_MEV_d", 
    "RHS_UH60M", 
    "RHS_UH60M_ESSS", 
    "RHS_UH60M_ESSS2", 
    "RHS_UH60M2", 
    "RHS_UH60M_MEV2", 
    "RHS_UH60M_MEV"
];
if (typeOf _vehicle in _vehicleTypeUH60) exitWith {
    _dialogResult = [
        "UH-60 Tailnumber Selection",
        [
            ["Tail Letter",["A","B","C","S"],1],
            ["Tail Number",["1","2","3","4","5","6","7","8","9","0"],0]
        ]
    ] call Ares_fnc_ShowChooseDialog;

    if (count _dialogResult == 0) exitWith {};

    _texture1 = switch (_dialogResult select 0) do {
        case 0: {"A";};
        case 1: {"B";};
        case 2: {"C";};
        case 3: {"S";};
    };
    _texture2 = switch (_dialogResult select 1) do {
        case 0: {"1";};
        case 1: {"2";};
        case 2: {"3";};
        case 3: {"4";};
        case 4: {"5";};
        case 5: {"6";};
        case 6: {"7";};
        case 7: {"8";};
        case 8: {"9";};
        case 9: {"0";};
    };
    [_vehicle,_texture1,_texture2] remoteExec [QFUNC(setVehicleLable),0,true];
};



// C-130
private _vehicleTypeC130J = [
    "RHS_C130J"
];
if (typeOf _vehicle in _vehicleTypeC130J) exitWith {
    _dialogResult = [
        "C-130 Tailnumber Selection",
        [
            ["Tail Number (1)",["None","A","B","C","S","1","2","3","4","5","6","7","8","9","0"],14],
            ["Tail Number (2)",["None","A","B","C","S","1","2","3","4","5","6","7","8","9","0"],14],
            ["Tail Number (3)",["None","A","B","C","S","1","2","3","4","5","6","7","8","9","0"],5]
        ]
    ] call Ares_fnc_ShowChooseDialog;

    if (count _dialogResult == 0) exitWith {};

    _texture1 = switch (_dialogResult select 0) do {
        case 0: {"";};
        case 1: {"A";};
        case 2: {"B";};
        case 3: {"C";};
        case 4: {"S";};
        case 5: {"1";};
        case 6: {"2";};
        case 7: {"3";};
        case 8: {"4";};
        case 9: {"5";};
        case 10: {"6";};
        case 11: {"7";};
        case 12: {"8";};
        case 13: {"9";};
        case 14: {"0";};
    };
    _texture2 = switch (_dialogResult select 1) do {
        case 0: {"";};
        case 1: {"A";};
        case 2: {"B";};
        case 3: {"C";};
        case 4: {"S";};
        case 5: {"1";};
        case 6: {"2";};
        case 7: {"3";};
        case 8: {"4";};
        case 9: {"5";};
        case 10: {"6";};
        case 11: {"7";};
        case 12: {"8";};
        case 13: {"9";};
        case 14: {"0";};
    };
    _texture3 = switch (_dialogResult select 2) do {
        case 0: {"";};
        case 1: {"A";};
        case 2: {"B";};
        case 3: {"C";};
        case 4: {"S";};
        case 5: {"1";};
        case 6: {"2";};
        case 7: {"3";};
        case 8: {"4";};
        case 9: {"5";};
        case 10: {"6";};
        case 11: {"7";};
        case 12: {"8";};
        case 13: {"9";};
        case 14: {"0";};
    };
    [_vehicle,_texture1,_texture2,_texture3] remoteExec [QFUNC(setVehicleLable),0,true];
};



// MRAP
private _vehicleTypeMRAP = [
    "rhsusf_M1230_M2_usarmy_d",
    "rhsusf_M1230_MK19_usarmy_d",
    "rhsusf_M1230a1_usarmy_d",
    "rhsusf_M1237_M2_usarmy_d",
    "rhsusf_M1237_MK19_usarmy_d",
    "rhsusf_M1230_M2_usarmy_wd",
    "rhsusf_M1230_MK19_usarmy_wd",
    "rhsusf_M1230a1_usarmy_wd",
    "rhsusf_M1237_M2_usarmy_wd",
    "rhsusf_M1237_MK19_usarmy_wd"
];
if (typeOf _vehicle in _vehicleTypeMRAP) exitWith {
    _dialogResult = [
        "MRAP Side Number Selection",
        [
            ["Vehicle Number",["None","VIC 1","VIC 2","VIC 3","VIC 4","VIC 5","VIC 6"],1],
            ["Side Number (1)",["None","A","B","C","S","1","2","3","4","5","6","7","8","9","0"],0],
            ["Side Number (2)",["None","A","B","C","S","1","2","3","4","5","6","7","8","9","0"],0],
            ["Side Number (3)",["None","A","B","C","S","1","2","3","4","5","6","7","8","9","0"],0],
            ["Side Number (4)",["None","A","B","C","S","1","2","3","4","5","6","7","8","9","0"],0]

        ]
    ] call Ares_fnc_ShowChooseDialog;

    if (count _dialogResult == 0) exitWith {};

    _texture1 = switch (_dialogResult select 0) do {
        case 0: {"";};
        case 1: {"vic1";};
        case 2: {"vic2";};
        case 3: {"vic3";};
        case 4: {"vic4";};
        case 5: {"vic5";};
        case 6: {"vic6";};
    };
    _texture2 = switch (_dialogResult select 1) do {
        case 0: {"";};
        case 1: {"A";};
        case 2: {"B";};
        case 3: {"C";};
        case 4: {"S";};
        case 5: {"1";};
        case 6: {"2";};
        case 7: {"3";};
        case 8: {"4";};
        case 9: {"5";};
        case 10: {"6";};
        case 11: {"7";};
        case 12: {"8";};
        case 13: {"9";};
        case 14: {"0";};
    };
    _texture3 = switch (_dialogResult select 2) do {
        case 0: {"";};
        case 1: {"A";};
        case 2: {"B";};
        case 3: {"C";};
        case 4: {"S";};
        case 5: {"1";};
        case 6: {"2";};
        case 7: {"3";};
        case 8: {"4";};
        case 9: {"5";};
        case 10: {"6";};
        case 11: {"7";};
        case 12: {"8";};
        case 13: {"9";};
        case 14: {"0";};
    };
    _texture4 = switch (_dialogResult select 3) do {
        case 0: {"";};
        case 1: {"A";};
        case 2: {"B";};
        case 3: {"C";};
        case 4: {"S";};
        case 5: {"1";};
        case 6: {"2";};
        case 7: {"3";};
        case 8: {"4";};
        case 9: {"5";};
        case 10: {"6";};
        case 11: {"7";};
        case 12: {"8";};
        case 13: {"9";};
        case 14: {"0";};
    };
    _texture5 = switch (_dialogResult select 4) do {
        case 0: {"";};
        case 1: {"A";};
        case 2: {"B";};
        case 3: {"C";};
        case 4: {"S";};
        case 5: {"1";};
        case 6: {"2";};
        case 7: {"3";};
        case 8: {"4";};
        case 9: {"5";};
        case 10: {"6";};
        case 11: {"7";};
        case 12: {"8";};
        case 13: {"9";};
        case 14: {"0";};
    };
    [_vehicle,_texture1,_texture2,_texture3,_texture4,_texture5] remoteExec [QFUNC(setVehicleLable),0,true];
};



// STRYKER
private _vehicleTypeStriker = [
    "M1126_ICV_M134_DG1_NOSLATDES",
    "M1126_ICV_M134_DG1_NOSLATWOOD",
    "M1126_ICV_M2_DG1_NOSLATDES",
    "M1126_ICV_M2_DG1_NOSLATWOOD",
    "M1126_ICV_M2NEST_DG1_NOSLATWOOD",
    "M1126_ICV_M2NEST_DG1_NOSLATDES",
    "M1126_ICV_mk19_DG1_NOSLATWOOD",
    "M1126_ICV_mk19_DG1_NOSLATDES",
    "M1128_MGS_DG1_NOSLATWOOD",
    "M1126_ICV_mk19_DG1_NOSLATDES",
    "M1128_MGS_DG1_NOSLATWOOD",
    "M1128_MGS_DG1_NOSLATDES",
    "M1129_MC_DG1_NOSLATWOOD",
    "M1129_MC_DG1_NOSLATDES",
    "M1130_CV_DG1_NOSLATWOOD",
    "M1130_CV_DG1_NOSLATDES",
    "M1133_MEV_DG1_NOSLATWOOD",
    "M1135_ATGMV_DG1_NOSLATWOOD",
    "M1133_MEV_DG1_NOSLATDES",
    "M1135_ATGMV_DG1_NOSLATDES"
];
if (typeOf _vehicle in _vehicleTypeStriker) exitWith {

    if (count _dialogResult == 0) exitWith {};

    [_vehicle] call FUNC(setVehicleLable);
};



// M1A1 Abrams
private _vehicleTypeAbrams = [
    "rhsusf_m1a1aimd_usarmy",
    "rhsusf_m1a1aim_tuski_d",
    "rhsusf_m1a2sep1d_usarmy",
    "rhsusf_m1a2sep1tuskid_usarmy",
    "rhsusf_m1a2sep1tuskiid_usarmy",
    "rhsusf_m1a1aimwd_usarmy",
    "rhsusf_m1a1aim_tuski_wd",
    "rhsusf_m1a2sep1wd_usarmy",
    "rhsusf_m1a2sep1tuskiwd_usarmy",
    "rhsusf_m1a2sep1tuskiiwd_usarmy",
    "rhsusf_m1a1fep_d",
    "rhsusf_m1a1fep_wd",
    "rhsusf_m1a1fep_od",
    "rhsusf_m1a1hc_wd"
];
if (typeOf _vehicle in _vehicleTypeAbrams) exitWith {
    _dialogResult = [
        "Abrams Vehicle Number Selection",
        [
            ["Vehicle Number (Front)",["None","VIC 1","VIC 2","VIC 3","VIC 4","VIC 5","VIC 6"],1],
            ["Vehicle Number (Side)",["None","VIC 1","VIC 2","VIC 3","VIC 4","VIC 5","VIC 6"],1]
        ]
    ] call Ares_fnc_ShowChooseDialog;

    if (count _dialogResult == 0) exitWith {};

    _texture1 = switch (_dialogResult select 0) do {
        case 0: {"";};
        case 1: {"vic1";};
        case 2: {"vic2";};
        case 3: {"vic3";};
        case 4: {"vic4";};
        case 5: {"vic5";};
        case 6: {"vic6";};
    };
    _texture2 = switch (_dialogResult select 1) do {
        case 0: {"";};
        case 1: {"vic1";};
        case 2: {"vic2";};
        case 3: {"vic3";};
        case 4: {"vic4";};
        case 5: {"vic5";};
        case 6: {"vic6";};
    };
    [_vehicle,_texture1,_texture2] remoteExec [QFUNC(setVehicleLable),0,true];
};



// M2/M3 Bradley
private _vehicleTypeBradly = [
    "RHS_M2A2",
    "RHS_M2A3",
    "RHS_M6",
    "RHS_M2A2_wd",
    "RHS_M2A3_wd",
    "RHS_M6_wd"
];
private _vehicleTypeBradlyBUSK = [
    "RHS_M2A2_BUSKI",
    "RHS_M2A3_BUSKI",
    "RHS_M2A2_BUSKI_WD",
    "RHS_M2A3_BUSKI_wd"
];
private _vehicleTypeBradlyBUSK3 = [
    "RHS_M2A3_BUSKIII",
    "RHS_M2A3_BUSKIII_wd"
];
if (typeOf _vehicle in _vehicleTypeBradly) exitWith {
    _dialogResult = [
        "M2/M3 Bradley Vehicle Number Selection",
        [
            ["Vehicle Number (Side)",["None","VIC 1","VIC 2","VIC 3","VIC 4","VIC 5","VIC 6"],1]
        ]
    ] call Ares_fnc_ShowChooseDialog;

    if (count _dialogResult == 0) exitWith {};

    _texture1 = switch (_dialogResult select 0) do {
        case 0: {"";};
        case 1: {"vic1";};
        case 2: {"vic2";};
        case 3: {"vic3";};
        case 4: {"vic4";};
        case 5: {"vic5";};
        case 6: {"vic6";};
    };
    [_vehicle,_texture1] remoteExec [QFUNC(setVehicleLable),0,true];
};
if (typeOf _vehicle in _vehicleTypeBradlyBUSK) exitWith {
    _dialogResult = [
        "M2/M3 Bradley Vehicle Number Selection",
        [
            ["Vehicle Number (Side)",["None","VIC 1","VIC 2","VIC 3","VIC 4","VIC 5","VIC 6"],1]
        ]
    ] call Ares_fnc_ShowChooseDialog;

    if (count _dialogResult == 0) exitWith {};

    _texture1 = switch (_dialogResult select 0) do {
        case 0: {"";};
        case 1: {"vic1";};
        case 2: {"vic2";};
        case 3: {"vic3";};
        case 4: {"vic4";};
        case 5: {"vic5";};
        case 6: {"vic6";};
    };
    [_vehicle,_texture1] remoteExec [QFUNC(setVehicleLable),0,true];
};
if (typeOf _vehicle in _vehicleTypeBradlyBUSK3) exitWith {
    _dialogResult = [
        "M2/M3 Bradley Vehicle Number Selection",
        [
            ["Vehicle Number (Side)",["None","VIC 1","VIC 2","VIC 3","VIC 4","VIC 5","VIC 6"],1]
        ]
    ] call Ares_fnc_ShowChooseDialog;

    if (count _dialogResult == 0) exitWith {};

    _texture1 = switch (_dialogResult select 0) do {
        case 0: {"";};
        case 1: {"vic1";};
        case 2: {"vic2";};
        case 3: {"vic3";};
        case 4: {"vic4";};
        case 5: {"vic5";};
        case 6: {"vic6";};
    };
    [_vehicle,_texture1] remoteExec [QFUNC(setVehicleLable),0,true];
};

["Not a supported vehicle!"] call Ares_fnc_ShowZeusMessage;
playSound "FD_Start_F";
