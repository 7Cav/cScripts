#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A, SPC.Turn.J
 * This function return a array of content
 *
 * Arguments:
 * 0: Crate type <STRING>
 *
 * Return:
 * ARRAY of items or empty
 *
 * Example:
 * ["atlas"] call cScripts_fnc_getMedicalCrate;
 * ["platoon"] call cScripts_fnc_getMedicalCrate;
 */

params ["_crateType"];

private _crateContents = [];

// Add items to the crate in order of category. Items in crate vary depending on crate type selected.
switch (_crateType) do {
    case "atlas": {
        _crateContents = [
            // AEDs
            ["kat_AED",1],
            ["kat_X_AED",1],

            // Bandages
            ["ACE_elasticBandage",150],
            ["ACE_packingBandage",90],
            ["ACE_quikclot",150],

            // Tourniquets
            ["ACE_tourniquet",20],

            // Fluids
            ["ACE_plasmaIV",30],
            ["ACE_plasmaIV_500",30],
            ["ACE_salineIV_250",20],

            // IV & IO Catheters
            ["kat_IO_FAST",20],
            ["kat_IV_16",40],

            // Blood Pressure Medication
            ["kat_nitroglycerin",40],
            ["kat_phenylephrine",40],
            ["kat_norepinephrine",40],

            // Hemorrhage Control Medication
            ["kat_EACA",40],
            ["kat_TXA",40],

            // Oral Medication
            ["kat_carbonate",20],
            ["kat_Painkiller",40],

            // Autoinjector & Nasal Spray Medication
            ["kat_naloxone",20],
            ["ACE_morphine",20],
            ["ACE_epinephrine",40],
            ["ACE_phenylephrine_inject",40],

            // Splints
            ["ACE_splint",40],

            // Surgical Equipment
            ["kat_scalpel",40],
            ["kat_plate",10],
            ["kat_clamp",4],
            ["kat_retractor",4],
            ["kat_vacuum",1],

            // Surgical Medication
            ["kat_lidocaine",20],
            ["kat_lorazepam",10],
            ["kat_etomidate",20],
            ["kat_flumazenil",10],

            // Surgical Kits
            ["ACE_surgicalKit",8],

            // Body Bags
            ["ACE_bodyBag",10],

            // E-Tools
            ["ACE_EntrenchingTool",4],

            // Signalling equipment //

            // Smokes
            ["SmokeShell",16],
            ["SmokeShellBlue",8],
            ["SmokeShellGreen",8],
            ["SmokeShellPurple",8],

            // Flags and Paint
            ["ace_marker_flags_green",4],
            ["ace_marker_flags_red",4],
            ["ace_marker_flags_blue",4],
            ["ACE_SpraypaintBlue",1],
            ["ACE_SpraypaintRed",1]
        ];
    };
    case "platoon": {
        _crateContents = [
            // Bandages
            ["ACE_elasticBandage",60],
            ["ACE_packingBandage",90],
            ["ACE_quikclot",150],

            // Tourniquets
            ["ACE_tourniquet",50],

            // Fluids
            ["ACE_plasmaIV",20],
            ["ACE_plasmaIV_500",20],

            // IV & IO Catheters
            ["kat_IO_FAST",10],
            ["kat_IV_16",20],

            // Autoinjector Medication
            ["kat_naloxone",20],
            ["ACE_epinephrine",20],
            ["kat_phenylephrine_inject",24],

            // Oral Medication
            ["kat_Painkiller",60],

            // Splints
            ["ACE_splint",40],

            // Surgical Medication
            ["kat_lidocaine",16],

            // Surgical Kits
            ["ACE_surgicalKit",2],

            // Body Bags
            ["ACE_bodyBag", 20]
        ];
    };
    // TO-DO: Crate for resupplying surgical equipment only
    default {_crateContents = []};
};

_crateContents;