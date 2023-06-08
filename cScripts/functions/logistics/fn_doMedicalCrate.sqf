#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A, SPC.Turn.J
 * This function resupply a crate and changes it's texture.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 * 1: Scale <AMMOUNT>
 * 2: Crate Type <STRING>
 *
 * Example:
 * [this,0.5,"atlasTeam"] call cScripts_fnc_doMedicalCrate;
 * [this,1,"infantryPlatoon"] call cScripts_fnc_doMedicalCrate;
 */

if (!isServer) exitWith {};

params ["_crate","_crateType"];

// Remove all items from crate
clearweaponcargoGlobal _crate;
clearmagazinecargoGlobal _crate;
clearitemcargoGlobal _crate;
clearbackpackcargoGlobal _crate;


// Add items to the crate in order of category. Items in crate vary depending on crate type selected.
switch (_crateType) do {
    case "atlas": {

        // AEDs
        _crate addItemCargoGlobal ["kat_AED",2];
        _crate addItemCargoGlobal ["kat_X_AED",2];

        // Bandages
        _crate addItemCargoGlobal ["ACE_elasticBandage",160];
        _crate addItemCargoGlobal ["ACE_packingBandage",90];
        _crate addItemCargoGlobal ["ACE_quikclot",200];

        // Tourniquets
        _crate addItemCargoGlobal ["ACE_tourniquet",20];

        // Fluids
        _crate addItemCargoGlobal ["ACE_plasmaIV",30];
        _crate addItemCargoGlobal ["ACE_plasmaIV_500",30];
        _crate addItemCargoGlobal ["ACE_salineIV_250",20];

        // IV & IO Catheters
        _crate addItemCargoGlobal ["kat_IO_FAST",20];
        _crate addItemCargoGlobal ["kat_IV_16",40];

        // Blood Pressure Medication
        _crate addItemCargoGlobal ["kat_nitroglycerin",40];
        _crate addItemCargoGlobal ["kat_phenylephrine",40];
        _crate addItemCargoGlobal ["kat_norepinephrine",40];

        // Hemorrhage Control Medication
        _crate addItemCargoGlobal ["kat_EACA",40];
        _crate addItemCargoGlobal ["kat_TXA",40];

        // Oral Medication
        _crate addMagazineCargoGlobal ["kat_carbonate",20];
        _crate addMagazineCargoGlobal ["kat_Painkiller",40];

        // Autoinjector & Nasal Spray Medication
        _crate addItemCargoGlobal ["kat_naloxone",20];
        _crate addItemCargoGlobal ["ACE_morphine",20];
        _crate addItemCargoGlobal ["ACE_epinephrine",40];
        _crate addItemCargoGlobal ["ACE_phenylephrine_inject",40];

        // Splints
        _crate addItemCargoGlobal ["ACE_splint",40];

        // Surgical Equipment
        _crate addItemCargoGlobal ["kat_scalpel",30];
        _crate addItemCargoGlobal ["kat_plate",10];
        _crate addItemCargoGlobal ["kat_clamp",4];
        _crate addItemCargoGlobal ["kat_retractor",4];
        _crate addItemCargoGlobal ["kat_vacuum",2];

        // Surgical Medication
        _crate addItemCargoGlobal ["kat_lidocaine",20];
        _crate addItemCargoGlobal ["kat_lorazepam",10];
        _crate addItemCargoGlobal ["kat_etomidate",20];
        _crate addItemCargoGlobal ["kat_flumazenil",10];

        // Surgical Kits
        _crate addItemCargoGlobal ["ACE_surgicalKit",8];

        // Body Bags
        _crate addItemCargoGlobal ["ACE_bodyBag", 10];

        // Signalling equipment
        _crate addItemCargoGlobal ["SmokeShell",16];
        _crate addItemCargoGlobal ["SmokeShellBlue",8];
        _crate addItemCargoGlobal ["SmokeShellGreen",8];
        _crate addItemCargoGlobal ["SmokeShellPurple",8];
    };
    case "platoon": {
        // Bandages
        _crate addItemCargoGlobal ["ACE_elasticBandage",60];
        _crate addItemCargoGlobal ["ACE_packingBandage",90];
        _crate addItemCargoGlobal ["ACE_quikclot",200];
        
        // Tourniquets
        _crate addItemCargoGlobal ["ACE_tourniquet",50];

        // Fluids
        _crate addItemCargoGlobal ["ACE_plasmaIV",20];
        _crate addItemCargoGlobal ["ACE_plasmaIV_500",20];
        
        // IV & IO Catheters
        _crate addItemCargoGlobal ["kat_IO_FAST",10];
        _crate addItemCargoGlobal ["kat_IV_16",20];
        
        // Autoinjector Medication
        _crate addItemCargoGlobal ["kat_naloxone",20];
        _crate addItemCargoGlobal ["ACE_epinephrine",20];
        _crate addItemCargoGlobal ["kat_phenylephrine_inject",24];

        // Oral Medication
        _crate addMagazineCargoGlobal ["kat_Painkiller",60];

        // Splints
        _crate addItemCargoGlobal ["ACE_splint",40];

        // Surgical Medication
        _crate addItemCargoGlobal ["kat_lidocaine",16];

        // Surgical Kits
        _crate addItemCargoGlobal ["ACE_surgicalKit",2];

        // Body Bags
        _crate addItemCargoGlobal ["ACE_bodyBag", 20];
    };
    // TO-DO: Crate for resupplying surgical equipment only
    default {};
};


