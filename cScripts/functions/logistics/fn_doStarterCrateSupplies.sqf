#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function adds equipment to a given item baserd on company type.
 *
 * Arguments:
 * 0: Crate <OBJECT>
 * 1: Set company type. <STRING> ["none","alpha","bravo","charlie","medical","full"]
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [this] call cScripts_fnc_doStarterCrateSupplies;
 * [this,"none"] call cScripts_fnc_doStarterCrateSupplies;
 *
 */

if (!isServer) exitWith {};

params [
    ["_crate", objNull, [objNull]],
    ["_companySelector", "NONE"]
];

// Set upper case
_companySelector = toUpper(_companySelector);

// Create categories
private _officer = ["OFFICER"];
private _alpha   = ["ALPHA", "BUFFALO", "TITAN", "RAIDER", "SPARROW"];
private _bravo   = ["BRAVO", "LANCER", "VIKING", "SABER", "BANSHEE", "ATLAS"];
private _charlie = ["CHARLIE", "BANDIT", "MISFIT"];

if !(_companySelector in (["NONE", "FULL", "ALL"] + _officer + _alpha + _bravo + _charlie)) exitWith {
    [format["%1 (Starter Crate Supplies) is using a unsupported cartegory '%2'.", _crate, _companySelector]] call FUNC(error);
};

// Full selector handler
private _alwaysAvalible = if (_companySelector == 'FULL' or _companySelector == 'ALL') then {true} else {false};

// Clear the crate
clearweaponcargoGlobal _crate;
clearmagazinecargoGlobal _crate;
clearitemcargoGlobal _crate;
clearbackpackcargoGlobal _crate;

if (_companySelector == "" OR _companySelector == "NONE") exitWith {};

//          Starter crate inventory

//          G L O B A L   C A R G O
if !(_companySelector == 'NONE') then {
    // TEMP REMOVED THIS RELEASE

    // // Radios
    // if (EGVAR(Settings,enableACRE)) then {
    //      _crate addItemCargoGlobal ["ACRE_PRC152",10];
    //      _crate addItemCargoGlobal ["ACRE_PRC117F",10];
    //      _crate addItemCargoGlobal ["ACRE_PRC343",20];
    // };

    // // Magazines
    // _crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",250];
    // _crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",250];
    // _crate addMagazineCargoGlobal ["rhsusf_200rnd_556x45_mixed_box",250];
    // _crate addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m61_ap",250];

    // // Grenades
    // _crate addMagazineCargoGlobal ["ACE_Chemlight_HiBlue",50];
    // _crate addMagazineCargoGlobal ["ACE_Chemlight_HiGreen",50];
    // _crate addMagazineCargoGlobal ["ACE_Chemlight_HiRed",50];
    // _crate addMagazineCargoGlobal ["ACE_Chemlight_HiWhite",50];
    // _crate addMagazineCargoGlobal ["ACE_Chemlight_HiYellow",50];

    // _crate addMagazineCargoGlobal ["SmokeShell",50];
    // _crate addMagazineCargoGlobal ["SmokeShellBlue",50];
    // _crate addMagazineCargoGlobal ["SmokeShellGreen",50];
    // _crate addMagazineCargoGlobal ["SmokeShellOrange",50];
    // _crate addMagazineCargoGlobal ["SmokeShellPurple",50];
    // _crate addMagazineCargoGlobal ["SmokeShellRed",50];
    // _crate addMagazineCargoGlobal ["SmokeShellYellow",50];

    // _crate addMagazineCargoGlobal ["HandGrenade",50];
    // _crate addMagazineCargoGlobal ["ACE_M84",50];

    // _crate addMagazineCargoGlobal ["B_IR_Grenade",50];
    // _crate addMagazineCargoGlobal ["ACE_Chemlight_IR",50];

    // // Barrel grenades flares and smokes
    // _crate addMagazineCargoGlobal ["rhs_mag_M441_HE",50];
    // _crate addMagazineCargoGlobal ["rhs_mag_M433_HEDP",50];
    // _crate addMagazineCargoGlobal ["rhs_mag_M397_HET",50];

    // _crate addMagazineCargoGlobal ["ACE_40mm_Flare_white",50];
    // _crate addMagazineCargoGlobal ["ACE_40mm_Flare_green",50];
    // _crate addMagazineCargoGlobal ["ACE_40mm_Flare_red",50];
    // _crate addMagazineCargoGlobal ["rhs_mag_m713_Red",50];
    // _crate addMagazineCargoGlobal ["rhs_mag_m714_White",50];
    // _crate addMagazineCargoGlobal ["rhs_mag_m715_Green",50];
    // _crate addMagazineCargoGlobal ["rhs_mag_m716_yellow",50];

    // _crate addMagazineCargoGlobal ["1Rnd_SmokeBlue_Grenade_shell",50];
    // _crate addMagazineCargoGlobal ["1Rnd_SmokeGreen_Grenade_shell",50];
    // _crate addMagazineCargoGlobal ["1Rnd_SmokeOrange_Grenade_shell",50];
    // _crate addMagazineCargoGlobal ["1Rnd_SmokePurple_Grenade_shell",50];
    // _crate addMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell",50];
    // _crate addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell",50];
    // _crate addMagazineCargoGlobal ["1Rnd_SmokeYellow_Grenade_shell",50];

    // _crate addMagazineCargoGlobal ["ACE_HUNTIR_M203",50];

    // // Medical Equipment
    // _crate addItemCargoGlobal ["ACE_quikclot",250];
    // _crate addItemCargoGlobal ["ACE_tourniquet",50];

    // // Gear and protection
    // _crate addItemCargoGlobal ["rhs_googles_black",25];
    // _crate addItemCargoGlobal ["rhs_googles_clear",25];
    // _crate addItemCargoGlobal ["rhsusf_oakley_goggles_blk",25];
    // _crate addItemCargoGlobal ["rhsusf_oakley_goggles_clr",25];
};

//          O F F I C E R   C A R G O
if (_companySelector in _officer or _alwaysAvalible) then {
};

//          A L P H A   C O M P A N Y   C A R G O
if (_companySelector in _alpha or _alwaysAvalible) then {

    // Container Buffalo
    if (_companySelector in ['ALPHA', 'BUFFALO'] or _alwaysAvalible) then {
    };
    // Container Titan
    if (_companySelector in ['ALPHA', 'TITAN'] or _alwaysAvalible) then {
    };
    // Container Raider
    if (_companySelector in ['ALPHA', 'RAIDER'] or _alwaysAvalible) then {
    };
    // Container Sparrow
    if (_companySelector in ['ALPHA', 'SPARROW'] or _alwaysAvalible) then {
    };

    // Old Container
    if (_companySelector in ['ALPHA', 'BUFFALO', 'TITAN', 'RAIDER', 'SPARROW' ] or _alwaysAvalible) then {
        //================== RADIOS ==================\\
        // if (EGVAR(Settings,enableACRE)) then {
        //     _crate addItemCargoGlobal ["ACRE_PRC152",50];
        //     _crate addItemCargoGlobal ["ACRE_PRC117F",10];
        //     _crate addItemCargoGlobal ["ACRE_PRC343",12];
        // };

        ["starter_alpha"] call EFUNC(logistics,getContainer);
    };
};


//          B R A V O   C O M P A N Y   C A R G O
if (_companySelector in _bravo or _alwaysAvalible) then {


    // Container Viking
    if (_companySelector in ['BRAVO', 'VIKING'] or _alwaysAvalible) then {
        //================== RADIOS ==================\\
        // if (EGVAR(Settings,enableACRE)) then {
        //     _crate addItemCargoGlobal ["ACRE_PRC152",50];
        //     _crate addItemCargoGlobal ["ACRE_PRC117F",10];
        //     _crate addItemCargoGlobal ["ACRE_PRC343",12];
        // };

        ["starter_bravo_viking"] call EFUNC(logistics,getContainer);
        
    };
    
    // Container ATLAS
    if (_companySelector in ['BRAVO', 'ATLAS'] or _alwaysAvalible) then {
        //================== RADIOS ==================\\
        if (EGVAR(Settings,enableACRE)) then {
            _crate addItemCargoGlobal ["ACRE_PRC152",50];
            _crate addItemCargoGlobal ["ACRE_PRC117F",10];
            _crate addItemCargoGlobal ["ACRE_PRC343",12];
        };

        ["starter_bravo_atlas"] call EFUNC(logistics,getContainer);
        
    };
    // Container Sabre
    if (_companySelector in ['BRAVO', 'SABER'] or _alwaysAvalible) then {
    };
};

//          C H A R L I E   C O M P A N Y   C A R G O
if (_companySelector in _charlie or _alwaysAvalible) then {
    // Loadouts Bandit & Misfit
    if (_companySelector in ['CHARLIE', 'BANDIT', 'MISFIT'] or _alwaysAvalible) then {
    };
    

    // //================== RADIOS ==================\\
    // if (EGVAR(Settings,enableACRE)) then {
    //     _crate addItemCargoGlobal ["ACRE_PRC343",12];
    //     _crate addItemCargoGlobal ["ACRE_PRC152",10];
    // };

    ["starter_charlie"] call EFUNC(logistics,getContainer);
    
};
