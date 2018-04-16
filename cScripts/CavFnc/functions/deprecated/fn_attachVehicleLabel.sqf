if (!isMultipayer) then {
    ["You are using a deprecated function. Use this instead: Scripts_fnc_setVehicleLable", "WARNING", [true, false, true]] call CBA_fnc_debug;
};

params [["_vehicle", objNull, [objNull]]];

private _vehicleTypeUH60 = [
    "RHS_UH60M_d",
    "RHS_UH60M_MEV2_d",
    "RHS_UH60M_MEV_d",
    "RHS_UH60M",
    "RHS_UH60M_MEV2",
    "RHS_UH60M_MEV"
];

if (typeOf _vehicle in _vehicleTypeUH60) then {
    [_vehicle,"B","1"] call cScripts_fnc_attachVehicleLabel;
};

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

if (typeOf _vehicle in _vehicleTypeStriker) then {
    [_vehicle,"stryker"] call cScripts_fnc_attachVehicleLabel;
};
