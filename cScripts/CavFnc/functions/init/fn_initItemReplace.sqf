#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * Thius function handle item convertions
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_initItemReplace
 *
 * Public: No
 */


#ifdef DEBUG_MODE
    ["Initializing Item replacement system."] call FUNC(logInfo);
#endif


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

// Special replacement removed on detection
if (getPlayerUID player == "76561198063591075") then {
    ["ACE_SpraypaintBlack", "ACE_SpraypaintGreen"] call ace_common_fnc_registerItemReplacement;
    ["ACE_SpraypaintBlue", "ACE_SpraypaintGreen"] call ace_common_fnc_registerItemReplacement;
    ["ACE_SpraypaintRed", "ACE_SpraypaintGreen"] call ace_common_fnc_registerItemReplacement;
};

#ifdef DEBUG_MODE
    ["Item replacement initialization completed."] call FUNC(logInfo);
#endif
