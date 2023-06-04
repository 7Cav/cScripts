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

params ["_crate",["_quaScale",1],"_crateType"];

// Remove all items from crate
clearweaponcargoGlobal _crate;
clearmagazinecargoGlobal _crate;
clearitemcargoGlobal _crate;
clearbackpackcargoGlobal _crate;


// Add items to the crate in order of category. Items in crate vary depending on crate type selected.
switch (_crateType) do {
    case "atlas": {

        // AEDs
        _crate addItemCargoGlobal ["kat_AED",(_quaScale * 2)];
        _crate addItemCargoGlobal ["kat_X_AED",(_quaScale * 2)];

        // Bandages
        _crate addItemCargoGlobal ["ACE_elasticBandage",(_quaScale * 160)];
        _crate addItemCargoGlobal ["ACE_packingBandage",(_quaScale * 90)];
        _crate addItemCargoGlobal ["ACE_quikclot",(_quaScale * 200)];

        // Tourniquets
        _crate addItemCargoGlobal ["ACE_tourniquet",(_quaScale * 20)];

        // Fluids
        _crate addItemCargoGlobal ["ACE_plasmaIV",(_quaScale * 30)];
        _crate addItemCargoGlobal ["ACE_plasmaIV_500",(_quaScale * 30)];
        _crate addItemCargoGlobal ["ACE_salineIV_250",(_quaScale * 20)];

        // IV & IO Catheters
        _crate addItemCargoGlobal ["kat_IO_FAST",(_quaScale * 20)];
        _crate addItemCargoGlobal ["kat_IV_16",(_quaScale * 40)];

        // Blood Pressure Medication
        _crate addItemCargoGlobal ["kat_nitroglycerin",(_quaScale * 40)];
        _crate addItemCargoGlobal ["kat_phenylephrine",(_quaScale * 40)];
        _crate addItemCargoGlobal ["kat_norepinephrine",(_quaScale * 40)];

        // Hemorrhage Control Medication
        _crate addItemCargoGlobal ["kat_EACA",(_quaScale * 40)];
        _crate addItemCargoGlobal ["kat_TXA",(_quaScale * 40)];

        // Oral Medication
        _crate addMagazineCargoGlobal ["kat_carbonate",(_quaScale * 20)];
        _crate addMagazineCargoGlobal ["kat_Painkiller",(_quaScale * 40)];

        // Autoinjector & Nasal Spray Medication
        _crate addItemCargoGlobal ["kat_naloxone",(_quaScale * 20)];
        _crate addItemCargoGlobal ["ACE_morphine",(_quaScale * 20)];
        _crate addItemCargoGlobal ["ACE_epinephrine",(_quaScale * 40)];
        _crate addItemCargoGlobal ["ACE_phenylephrine_inject",(_quaScale * 40)];

        // Splints
        _crate addItemCargoGlobal ["ACE_splint",(_quaScale * 40)];

        // Surgical Equipment
        _crate addItemCargoGlobal ["kat_scalpel",(_quaScale * 30)];
        _crate addItemCargoGlobal ["kat_plate",(_quaScale * 10)];
        _crate addItemCargoGlobal ["kat_clamp",(_quaScale * 4)];
        _crate addItemCargoGlobal ["kat_retractor",(_quaScale * 4)];
        _crate addItemCargoGlobal ["kat_vacuum",(_quaScale * 2)];

        // Surgical Medication
        _crate addItemCargoGlobal ["kat_lidocaine",(_quaScale * 20)];
        _crate addItemCargoGlobal ["kat_lorazepam",(_quaScale * 10)];
        _crate addItemCargoGlobal ["kat_etomidate",(_quaScale * 20)];
        _crate addItemCargoGlobal ["kat_flumazenil",(_quaScale * 10)];

        // Surgical Kits
        _crate addItemCargoGlobal ["ACE_surgicalKit",(_quaScale * 8)];

        // Body Bags
        _crate addItemCargoGlobal ["ACE_bodyBag", (_quaScale * 10)];

        // Signalling equipment
        _crate addItemCargoGlobal ["SmokeShell",(_quaScale * 16)];
        _crate addItemCargoGlobal ["SmokeShellBlue",(_quaScale * 8)];
        _crate addItemCargoGlobal ["SmokeShellGreen",(_quaScale * 8)];
        _crate addItemCargoGlobal ["SmokeShellPurple",(_quaScale * 8)];
    };
    case "platoon": {
        // Bandages
        _crate addItemCargoGlobal ["ACE_elasticBandage",(_quaScale * 60)];
        _crate addItemCargoGlobal ["ACE_packingBandage",(_quaScale * 90)];
        _crate addItemCargoGlobal ["ACE_quikclot",(_quaScale * 200)];
        
        // Tourniquets
        _crate addItemCargoGlobal ["ACE_tourniquet",(_quaScale * 50)];

        // Fluids
        _crate addItemCargoGlobal ["ACE_plasmaIV",(_quaScale * 20)];
        _crate addItemCargoGlobal ["ACE_plasmaIV_500",(_quaScale * 20)];
        
        // IV & IO Catheters
        _crate addItemCargoGlobal ["kat_IO_FAST",(_quaScale * 10)];
        _crate addItemCargoGlobal ["kat_IV_16",(_quaScale * 20)];
        
        // Autoinjector Medication
        _crate addItemCargoGlobal ["kat_naloxone",(_quaScale * 20)];
        _crate addItemCargoGlobal ["ACE_epinephrine",(_quaScale * 20)];
        _crate addItemCargoGlobal ["kat_phenylephrine_inject",(_quaScale * 24)];

        // Oral Medication
        _crate addMagazineCargoGlobal ["kat_Painkiller",(_quaScale * 60)];

        // Splints
        _crate addItemCargoGlobal ["ACE_splint",(_quaScale * 40)];

        // Surgical Medication
        _crate addItemCargoGlobal ["kat_lidocaine",(_quaScale * 16)];

        // Surgical Kits
        _crate addItemCargoGlobal ["ACE_surgicalKit",(_quaScale * 2)];

        // Body Bags
        _crate addItemCargoGlobal ["ACE_bodyBag", (_quaScale * 20)];
    };
    // TO-DO: Crate for resupplying surgical equipment only
    default {};
};


