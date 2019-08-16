#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function adds equipment to a given item baserd on company type.
 *
 * Arguments:
 * 0: Crate <OBJECT>
 * 1: Set company type. <STRING> ["none","alpha","bravo","charlie","ranger","medical","full"]
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
private _bravo   = ["BRAVO", "LANCER", "VIKING", "SABER", "BANSHEE", "APOLLO", "MUSTANG"];
private _charlie = ["CHARLIE", "BANDIT", "MISFIT"];
private _ranger  = ["RANGER", "SNIPER"];

// Full selector handler
private _alwaysAvalible = if (_companySelector == 'FULL' or _companySelector == 'ALL') then {true} else {false};

// Clear the crate
clearweaponcargoGlobal _crate;
clearmagazinecargoGlobal _crate;
clearitemcargoGlobal _crate;
clearbackpackcargoGlobal _crate;

if (_companySelector == "" OR _companySelector == "NONE") exitWith {};

//          G L O B A L   C A R G O
if !(_companySelector == 'NONE') then {

    // Radios
    _crate addItemCargoGlobal ["ACRE_PRC152", 25];
    _crate addItemCargoGlobal ["ACRE_PRC343", 50];
        
    // Magazines
    _crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 250];
    _crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 250];
    _crate addMagazineCargoGlobal ["rhsusf_200Rnd_556x45_box", 250];
    _crate addMagazineCargoGlobal ["rhsusf_200rnd_556x45_mixed_box", 250];
    
    // Optics
    _crate addItemCargoGlobal ["rhsusf_acc_compm4", 50];

    _crate addItemCargoGlobal ["rhsusf_acc_anpeq15side_bk", 50];
    _crate addItemCargoGlobal ["rhsusf_acc_anpeq15_bk_top", 50];
    _crate addItemCargoGlobal ["rhsusf_acc_anpeq15_bk", 50];
    _crate addItemCargoGlobal ["rhsusf_acc_m952v", 50];

    _crate addItemCargoGlobal ["rhsusf_acc_tdstubby_blk", 50];
    
    // Chemlights
    _crate addMagazineCargoGlobal ["ACE_Chemlight_HiBlue", 100];
    _crate addMagazineCargoGlobal ["ACE_Chemlight_HiGreen", 100];
    _crate addMagazineCargoGlobal ["ACE_Chemlight_HiRed", 100];
    _crate addMagazineCargoGlobal ["ACE_Chemlight_HiWhite", 100];
    _crate addMagazineCargoGlobal ["ACE_Chemlight_HiYellow", 100];

    // Smoke grenades
    _crate addMagazineCargoGlobal ["SmokeShell", 100];
    _crate addMagazineCargoGlobal ["SmokeShellBlue", 100];
    _crate addMagazineCargoGlobal ["SmokeShellGreen", 100];
    _crate addMagazineCargoGlobal ["SmokeShellOrange", 100];
    _crate addMagazineCargoGlobal ["SmokeShellPurple", 100];
    _crate addMagazineCargoGlobal ["SmokeShellRed", 100];
    _crate addMagazineCargoGlobal ["SmokeShellYellow", 100];

    // Medical Equipment
    _crate addItemCargoGlobal ["ACE_EarPlugs", 100];
    _crate addItemCargoGlobal ["ACE_quikclot", 250];
    _crate addItemCargoGlobal ["ACE_tourniquet", 50];

    // Gear and protection
    _crate addItemCargoGlobal ["rhs_googles_black", 25];
    _crate addItemCargoGlobal ["rhs_googles_clear", 25];
    _crate addItemCargoGlobal ["rhsusf_oakley_goggles_blk", 25];
    _crate addItemCargoGlobal ["rhsusf_oakley_goggles_clr", 25];

    _crate addItemCargoGlobal ["ACE_Flashlight_XL50", 50];
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
};

//          B R A V O   C O M P A N Y   C A R G O
if (_companySelector in _bravo or _alwaysAvalible) then {

    // Container Lancer
    if (_companySelector in ['BRAVO', 'LANCER'] or _alwaysAvalible) then {
        //================== RADIOS ==================\\

        //================== WEAPONS ==================\\

        //================== AMMO ==================\\
        _crate addMagazineCargoGlobal ["rhsusf_200rnd_556x45_mixed_box",250];

        //================== GRENADES ==================\\

        //================== EXPLOSIVES ==================\\

        //================== ITEMS ==================\\
        _crate addItemCargoGlobal ["ACE_SpareBarrel", 10];

        //================== MEDICAL ==================\\

        //================== BACKPACKS ==================\\

        //================== HELMETS ==================\\

    };
    // Container Viking
    if (_companySelector in ['BRAVO', 'VIKING'] or _alwaysAvalible) then {

        // Launchers
        _crate addMagazineCargoGlobal ["cav_m3maaws_heat_cs", 50];
        _crate addMagazineCargoGlobal ["tf47_m3maaws_ILLUM", 50];
        _crate addMagazineCargoGlobal ["tf47_m3maaws_HE", 50];
        _crate addMagazineCargoGlobal ["tf47_m3maaws_HEAT", 50];
        _crate addMagazineCargoGlobal ["rhs_fim92_mag", 10];
        _crate addMagazineCargoGlobal ["rhs_fgm148_magazine_AT", 10];

        // Optics and assesories
        _crate addItemCargoGlobal ["tf47_optic_m3maaws", 25];

        // Under barrel shells
        _crate addMagazineCargoGlobal ["ACE_HuntIR_M203", 50];
        _crate addMagazineCargoGlobal ["rhs_mag_M397_HET", 50];
        _crate addMagazineCargoGlobal ["rhs_mag_M433_HEDP", 50];
        _crate addMagazineCargoGlobal ["rhs_mag_M441_HE", 50];

        _crate addMagazineCargoGlobal ["rhs_mag_M585_white", 50];
        _crate addMagazineCargoGlobal ["rhs_mag_m661_green", 50];
        _crate addMagazineCargoGlobal ["rhs_mag_m662_red", 50];
        
        _crate addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell", 100];
        _crate addMagazineCargoGlobal ["1Rnd_SmokeBlue_Grenade_shell", 50];
        _crate addMagazineCargoGlobal ["1Rnd_SmokeGreen_Grenade_shell", 50];
        _crate addMagazineCargoGlobal ["1Rnd_SmokeOrange_Grenade_shell", 50];
        _crate addMagazineCargoGlobal ["1Rnd_SmokePurple_Grenade_shell", 50];
        _crate addMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell", 50];
        _crate addMagazineCargoGlobal ["1Rnd_SmokeYellow_Grenade_shell", 50];

        // Gear and protection
        _crate addItemCargoGlobal ["ACE_CableTie", 50];
        _crate addItemCargoGlobal ["ACE_Chemlight_Shield", 50];
        _crate addItemCargoGlobal ["ACE_EntrenchingTool", 50];
        
    };

    // Container Mustang
    if (_companySelector in ['BRAVO', 'MUSTANG'] or _alwaysAvalible) then {

        // Medical Equipment
        _crate addItemCargoGlobal ["FirstAidKit", 50];
        _crate addItemCargoGlobal ["ACE_elasticBandage", 250];
        _crate addItemCargoGlobal ["ACE_packingBandage", 250];
        _crate addItemCargoGlobal ["ACE_fieldDressing", 250];

        _crate addItemCargoGlobal ["ACE_salineIV_500", 150];
        _crate addItemCargoGlobal ["ACE_salineIV_250", 150];

        _crate addItemCargoGlobal ["ACE_morphine", 200];
        _crate addItemCargoGlobal ["ACE_adenosine", 200];
        _crate addItemCargoGlobal ["ACE_atropine", 200];
        _crate addItemCargoGlobal ["ACE_epinephrine", 200];

        _crate addItemCargoGlobal ["ACE_tourniquet", 100];

        _crate addItemCargoGlobal ["ACE_surgicalKit", 50];
        _crate addItemCargoGlobal ["ACE_personalAidKit", 100];

        _crate addItemCargoGlobal ["ACE_bodyBag", 50];
    };
    // Container Apollo
    if (_companySelector in ['BRAVO', 'APOLLO'] or _alwaysAvalible) then {
        _crate addItemCargoGlobal ["ACE_EntrenchingTool", 50];
        _crate addItemCargoGlobal ["ACE_wirecutter", 50];
        _crate addItemCargoGlobal ["ToolKit", 50];

        _crate addItemCargoGlobal ["ACE_DefusalKit", 50];
        _crate addItemCargoGlobal ["ACE_bodyBag", 50];
    };

    // Container Sabre
    if (_companySelector in ['BRAVO', 'SABER'] or _alwaysAvalible) then {
        _crate addItemCargoGlobal ["ToolKit", 50];
    };
    // Container Banshee
    if (_companySelector in ['BRAVO', 'BANSHEE'] or _alwaysAvalible) then {
<<<<<<< HEAD
=======
        _crate addItemCargoGlobal ["ToolKit", 50];
>>>>>>> Adjustments and updates
    };
};

//          C H A R L I E   C O M P A N Y   C A R G O
if (_companySelector in _charlie or _alwaysAvalible) then {
    // Container Bandit & Misfit
    if (_companySelector in ['CHARLIE', 'BANDIT', 'MISFIT'] or _alwaysAvalible) then {
<<<<<<< HEAD
=======
        // Magazines
        _crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 250];
        _crate addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 250];
        _crate addMagazineCargoGlobal ["rhsusf_200Rnd_556x45_soft_pouch", 125];
        _crate addMagazineCargoGlobal ["rhsusf_200Rnd_556x45_mixed_soft_pouch", 125];
        _crate addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m62_tracer", 250];
        _crate addMagazineCargoGlobal ["rhsusf_100Rnd_762x51_m61_ap", 250];

        // Optics and assesories
        _crate addItemCargoGlobal ["tf47_optic_m3maaws", 25];
        _crate addItemCargoGlobal ["rhsusf_acc_elcan_ard", 50];
        _crate addItemCargoGlobal ["rhsusf_acc_acog_mdo", 50];
        _crate addItemCargoGlobal ["rhsusf_acc_t1_high", 50];
        _crate addItemCargoGlobal ["rhsusf_acc_acog_rmr", 50];
        _crate addItemCargoGlobal ["rhsusf_acc_acog2", 50];
        _crate addItemCargoGlobal ["rhsusf_acc_compm4", 50];
        _crate addItemCargoGlobal ["rhsusf_acc_rx01", 50];
        _crate addItemCargoGlobal ["rhsusf_acc_eotech_xps3", 50];
        _crate addItemCargoGlobal ["rhsusf_acc_eotech_552", 50];
        
        // Under barrel shells
        _crate addMagazineCargoGlobal ["ACE_HuntIR_M203", 50];
        _crate addMagazineCargoGlobal ["rhs_mag_M397_HET", 50];
        _crate addMagazineCargoGlobal ["rhs_mag_M433_HEDP", 50];
        _crate addMagazineCargoGlobal ["rhs_mag_M441_HE", 50];

        _crate addMagazineCargoGlobal ["rhs_mag_M585_white", 50];
        _crate addMagazineCargoGlobal ["rhs_mag_m661_green", 50];
        _crate addMagazineCargoGlobal ["rhs_mag_m662_red", 50];

        _crate addMagazineCargoGlobal ["1Rnd_Smoke_Grenade_shell", 100];
        _crate addMagazineCargoGlobal ["1Rnd_SmokeBlue_Grenade_shell", 50];
        _crate addMagazineCargoGlobal ["1Rnd_SmokeGreen_Grenade_shell", 50];
        _crate addMagazineCargoGlobal ["1Rnd_SmokeOrange_Grenade_shell", 50];
        _crate addMagazineCargoGlobal ["1Rnd_SmokePurple_Grenade_shell", 50];
        _crate addMagazineCargoGlobal ["1Rnd_SmokeRed_Grenade_shell", 50];
        _crate addMagazineCargoGlobal ["1Rnd_SmokeYellow_Grenade_shell", 50];

        // Launchers
        _crate addMagazineCargoGlobal ["cav_m3maaws_heat_cs", 50];
        _crate addMagazineCargoGlobal ["tf47_m3maaws_ILLUM", 50];
        _crate addMagazineCargoGlobal ["tf47_m3maaws_HE", 50];
        _crate addMagazineCargoGlobal ["tf47_m3maaws_HEAT", 50];
        _crate addMagazineCargoGlobal ["rhs_fim92_mag", 10];
        _crate addMagazineCargoGlobal ["rhs_fgm148_magazine_AT", 10];

        // Gear and protection
        _crate addItemCargoGlobal ["ACE_CableTie", 50];
        _crate addItemCargoGlobal ["ACE_Chemlight_Shield", 50];
        _crate addItemCargoGlobal ["ACE_wirecutter", 50];
        _crate addItemCargoGlobal ["ACE_EntrenchingTool", 50];
    };
};

//          R A N G E R   C O M P A N Y   C A R G O
if (_companySelector in _ranger or _alwaysAvalible) then {

    // Container Ranger
    if (_companySelector in ['RANGER'] or _alwaysAvalible) then {
>>>>>>> Adjustments and updates
        //================== RADIOS ==================\\

        //================== WEAPONS ==================\\

        //================== AMMO ==================\\
        _crate addMagazineCargoGlobal ["rhsusf_200rnd_556x45_mixed_box",250];

        //================== GRENADES ==================\\

        //================== EXPLOSIVES ==================\\

        //================== ITEMS ==================\\
        _crate addItemCargoGlobal ["ACE_SpareBarrel", 10];

        //================== MEDICAL ==================\\

        //================== BACKPACKS ==================\\

        //================== HELMETS ==================\\
        
    };
};

//          R A N G E R   C O M P A N Y   C A R G O
if (_companySelector in _ranger or _alwaysAvalible) then {

    // Container Ranger
    if (_companySelector in ['RANGER'] or _alwaysAvalible) then {
        //================== RADIOS ==================\\

        //================== WEAPONS ==================\\

        //================== AMMO ==================\\

        //================== GRENADES ==================\\

        //================== EXPLOSIVES ==================\\

        //================== ITEMS ==================\\

        //================== MEDICAL ==================\\

        //================== BACKPACKS ==================\\

        //================== HELMETS ==================\\
    };

    // Container Sniper
    if (_companySelector in ['SNIPER'] or _alwaysAvalible) then {
        //================== RADIOS ==================\\

        //================== WEAPONS ==================\\

        //================== AMMO ==================\\

        //================== GRENADES ==================\\

        //================== EXPLOSIVES ==================\\

        //================== ITEMS ==================\\

        //================== MEDICAL ==================\\

        //================== BACKPACKS ==================\\

        //================== HELMETS ==================\\
    };
};

if !(_companySelector in (["FULL", "ALL"] + _officer + _alpha + _bravo + _charlie + _ranger)) then {
    [formatText["%1 (Starter Crate) is using a unsupported cartegory '%2'.", _crate, _companySelector]] call FUNC(logError);
    if (!isMultiplayer || {is3DENMultiplayer}) then { systemChat format["ERROR: %1 (Starter Crate) is using a unsupported cartegory '%2'. This will cause the crate to be empty.", _crate, _companySelector] };
};