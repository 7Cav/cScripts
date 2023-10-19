#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function enables standardization of item use by swaping items to desired item.
 *
 * Example:
 * call cScripts_fnc_init_aceItemReplace
 *
 * Public: No
 */

if (!EGVAR(patches,usesACE)) exitWith {};

INFO("init", "Initializing Item replacement system.");

if (!isNil {ace_medical_treatment_convertItems == 2}) then {
    switch (EGVAR(Settings,replaceMedical)) do {
        case (1): {
            ["FirstAidKit",[
                "ACE_quikclot",
                "ACE_splint",
                "ACE_quikclot", "ACE_quikclot", "ACE_quikclot",
                "ACE_tourniquet"
            ]] call ace_common_fnc_registerItemReplacement;
            ["Medikit",[
                "ACE_splint",
                "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot",
                "ACE_morphine", "ACE_morphine",
                "ACE_salineIV_500", "ACE_salineIV_500",
                "ACE_tourniquet","ACE_tourniquet",
                "ACE_adenosine",
                "ACE_epinephrine", "ACE_epinephrine",
                "ACE_surgicalKit",
                "ACE_personalAidKit"
            ]] call ace_common_fnc_registerItemReplacement;
        };
    };
};

switch (EGVAR(Settings,replaceMagazines)) do {
    case (1): {
        private _magazines = [
            ["30Rnd_556x45_Stanag",                     "rhs_mag_30Rnd_556x45_M855A1_Stanag"],
            ["30Rnd_556x45_Stanag_red",                 "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"],
            ["30Rnd_556x45_Stanag_green",               "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green"],
            ["30Rnd_556x45_Stanag_Tracer_Red",          "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"],
            ["30Rnd_556x45_Stanag_Tracer_Green",        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green"],
            ["30Rnd_556x45_Stanag_Tracer_Yellow",       "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow"],
            //["ACE_30Rnd_556x45_Stanag_M995_AP_mag",   ""],
            ["ACE_30Rnd_556x45_Stanag_Mk262_mag",       "rhs_mag_30Rnd_556x45_Mk262_Stanag"],
            ["ACE_30Rnd_556x45_Stanag_Mk318_mag",       "rhs_mag_30Rnd_556x45_Mk318_Stanag"]
            //["ACE_30Rnd_556x45_Stanag_Tracer_Dim",      ""]
        ];
        { _x call ace_common_fnc_registerItemReplacement; } forEach _magazines;
    };
    case (2): {
        private _magazines = [
            ["30Rnd_556x45_Stanag",                     "rhs_mag_30Rnd_556x45_M855A1_Stanag"],
            ["30Rnd_556x45_Stanag_red",                 "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"],
            ["30Rnd_556x45_Stanag_green",               "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green"],
            ["30Rnd_556x45_Stanag_Tracer_Red",          "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"],
            ["30Rnd_556x45_Stanag_Tracer_Green",        "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green"],
            ["30Rnd_556x45_Stanag_Tracer_Yellow",       "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow"],
            //["ACE_30Rnd_556x45_Stanag_M995_AP_mag",   ""],
            ["rhs_mag_30Rnd_556x45_Mk262_Stanag",       "ACE_30Rnd_556x45_Stanag_Mk262_mag"],
            ["rhs_mag_30Rnd_556x45_Mk318_Stanag",       "ACE_30Rnd_556x45_Stanag_Mk318_mag"]
            //["ACE_30Rnd_556x45_Stanag_Tracer_Dim",      ""]
        ];
        { _x call ace_common_fnc_registerItemReplacement; } forEach _magazines;
    };
};


switch (EGVAR(Settings,replaceHandGrenades)) do {
    case (1): {["rhs_mag_m67","HandGrenade"] call ace_common_fnc_registerItemReplacement};
    case (2): {["HandGrenade","rhs_mag_m67"] call ace_common_fnc_registerItemReplacement};
};

switch (EGVAR(Settings,replaceStunGrenades)) do {
    case (1): {["rhs_mag_mk84","ACE_M84"] call ace_common_fnc_registerItemReplacement};
    case (2): {["ACE_M84","rhs_mag_mk84"] call ace_common_fnc_registerItemReplacement};
};

switch (EGVAR(Settings,replaceSmokeGrenades)) do {
    case (1): {
        ["rhs_mag_m18_green","SmokeShellGreen"] call ace_common_fnc_registerItemReplacement;
        ["rhs_mag_m18_purple","SmokeShellPurple"] call ace_common_fnc_registerItemReplacement;
        ["rhs_mag_m18_red","SmokeShellRed"] call ace_common_fnc_registerItemReplacement;
        ["rhs_mag_m18_yellow","SmokeShellYellow"] call ace_common_fnc_registerItemReplacement;
    };
    case (2): {
        ["SmokeShellGreen","rhs_mag_m18_green"] call ace_common_fnc_registerItemReplacement;
        ["SmokeShellPurple","rhs_mag_m18_purple"] call ace_common_fnc_registerItemReplacement;
        ["SmokeShellRed","rhs_mag_m18_red"] call ace_common_fnc_registerItemReplacement;
        ["SmokeShellYellow","rhs_mag_m18_yellow"] call ace_common_fnc_registerItemReplacement;
    };
};

INFO("init", "Item replacement initialization completed.");
