/*
 * Author: CPL.Brostrom.A 
 * This refits a given vehicle with a more Cav suited supplies equipment.
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 * 1: Scale cargo ammount <NUMBER> (Default: 1)
 *
 * Example:
 * [this] call cScripts_fnc_initVehicle;
 * [this,1] call cScripts_fnc_initVehicle;
 */
 
#include "..\script_component.hpp";

if (isServer) then {
    /*["AllVehicles", "init", {
        [(_this select 0)] call FUNC(initVehicle);
    }, nil, nil, true] call CBA_fnc_addClassEventHandler; */

    //UH60M
    ["RHS_UH60_Base", "init", {
        //[(_this select 0)] call FUNC(addGetOutUH60);
        clearweaponcargoGlobal (_this select 0);
        clearmagazinecargoGlobal (_this select 0);
        clearitemcargoGlobal (_this select 0);
        clearbackpackcargoGlobal (_this select 0);
        (_this select 0) addItemCargoGlobal ["ACE_EarPlugs",3];
        (_this select 0) addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),2];
        (_this select 0) addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),1];
        (_this select 0) addMagazineCargoGlobal ["Chemlight_Blue",3];
        (_this select 0) addMagazineCargoGlobal ["Chemlight_Red",3];
        (_this select 0) addItemCargoGlobal ["Toolkit",1];
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;
    ["RHS_UH60M_MEV", "init", {
        //[(_this select 0)] call FUNC(addGetOutUH60);
        clearweaponcargoGlobal (_this select 0);
        clearmagazinecargoGlobal (_this select 0);
        clearitemcargoGlobal (_this select 0);
        clearbackpackcargoGlobal (_this select 0);
        (_this select 0) addItemCargoGlobal ["ACE_EarPlugs",15];
        (_this select 0) addItemCargoGlobal ["ACE_salineIV_500",10];
        (_this select 0) addItemCargoGlobal ["ACE_morphine",30];
        (_this select 0) addItemCargoGlobal ["ACE_epinephrine",20];
        (_this select 0) addItemCargoGlobal ["ACE_atropine",20];
        (_this select 0) addItemCargoGlobal ["ACE_tourniquet",8];
        (_this select 0) addItemCargoGlobal ["ACE_FieldDressing",10];
        (_this select 0) addItemCargoGlobal ["ACE_packingBandage",40];
        (_this select 0) addItemCargoGlobal ["ACE_elasticBandage",40];
        (_this select 0) addItemCargoGlobal ["ACE_quikclot",40];
        (_this select 0) addItemCargoGlobal ["ACE_bodyBag",12];
        (_this select 0) addItemCargoGlobal ["ACE_personalAidKit",8];
        (_this select 0) addItemCargoGlobal ["ACE_surgicalKit",2];

        (_this select 0) addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),2];
        (_this select 0) addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),2];
        (_this select 0) addMagazineCargoGlobal ["Chemlight_Blue",3];
        (_this select 0) addMagazineCargoGlobal ["Chemlight_Red",3];
        (_this select 0) addItemCargoGlobal ["Toolkit",1];
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;
    ["RHS_CH_47F_base", "init", {
        clearweaponcargoGlobal (_this select 0);
        clearmagazinecargoGlobal (_this select 0);
        clearitemcargoGlobal (_this select 0);
        clearbackpackcargoGlobal (_this select 0);
        (_this select 0) addItemCargoGlobal ["ACE_EarPlugs",3];
        (_this select 0) addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),2];
        (_this select 0) addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),1];
        (_this select 0) addMagazineCargoGlobal ["Chemlight_Blue",3];
        (_this select 0) addMagazineCargoGlobal ["Chemlight_Red",3];
        (_this select 0) addItemCargoGlobal ["Toolkit",1];
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;
    ["RHS_AH64_base", "init", {
        clearweaponcargoGlobal (_this select 0);
        clearmagazinecargoGlobal (_this select 0);
        clearitemcargoGlobal (_this select 0);
        clearbackpackcargoGlobal (_this select 0);
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;

    ["rhsusf_hmmwe_base", "init", {
        clearweaponcargoGlobal (_this select 0);
        clearmagazinecargoGlobal (_this select 0);
        clearitemcargoGlobal (_this select 0);
        clearbackpackcargoGlobal (_this select 0);
        (_this select 0) addItemCargoGlobal ["ACE_EarPlugs",3];
        (_this select 0) addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),2];
        (_this select 0) addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),1];
        (_this select 0) addMagazineCargoGlobal ["Chemlight_Blue",3];
        (_this select 0) addMagazineCargoGlobal ["Chemlight_Red",3];
        (_this select 0) addItemCargoGlobal ["Toolkit",1];
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;
    ["rhsusf_rg33_base", "init", {
        clearweaponcargoGlobal (_this select 0);
        clearmagazinecargoGlobal (_this select 0);
        clearitemcargoGlobal (_this select 0);
        clearbackpackcargoGlobal (_this select 0);
        (_this select 0) addItemCargoGlobal ["ACE_EarPlugs",3];
        (_this select 0) addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),2];
        (_this select 0) addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),1];
        (_this select 0) addMagazineCargoGlobal ["Chemlight_Blue",3];
        (_this select 0) addMagazineCargoGlobal ["Chemlight_Red",3];
        (_this select 0) addItemCargoGlobal ["Toolkit",1];
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;
    ["rhsusf_fmtv_base", "init", {
        clearweaponcargoGlobal (_this select 0);
        clearmagazinecargoGlobal (_this select 0);
        clearitemcargoGlobal (_this select 0);
        clearbackpackcargoGlobal (_this select 0);
        (_this select 0) addItemCargoGlobal ["ACE_EarPlugs",3];
        (_this select 0) addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),2];
        (_this select 0) addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),1];
        (_this select 0) addMagazineCargoGlobal ["Chemlight_Blue",3];
        (_this select 0) addMagazineCargoGlobal ["Chemlight_Red",3];
        (_this select 0) addItemCargoGlobal ["Toolkit",1];
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;
    ["rhsusf_HEMTT_A4_base", "init", {
        clearweaponcargoGlobal (_this select 0);
        clearmagazinecargoGlobal (_this select 0);
        clearitemcargoGlobal (_this select 0);
        clearbackpackcargoGlobal (_this select 0);
        (_this select 0) addItemCargoGlobal ["ACE_EarPlugs",3];
        (_this select 0) addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),2];
        (_this select 0) addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),1];
        (_this select 0) addMagazineCargoGlobal ["Chemlight_Blue",3];
        (_this select 0) addMagazineCargoGlobal ["Chemlight_Red",3];
        (_this select 0) addItemCargoGlobal ["Toolkit",1];
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;
    ["B_Truck_01_transport_F", "init", {
        clearweaponcargoGlobal (_this select 0);
        clearmagazinecargoGlobal (_this select 0);
        clearitemcargoGlobal (_this select 0);
        clearbackpackcargoGlobal (_this select 0);
        (_this select 0) addItemCargoGlobal ["ACE_EarPlugs",3];
        (_this select 0) addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),2];
        (_this select 0) addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),1];
        (_this select 0) addMagazineCargoGlobal ["Chemlight_Blue",3];
        (_this select 0) addMagazineCargoGlobal ["Chemlight_Red",3];
        (_this select 0) addItemCargoGlobal ["Toolkit",1];
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;

    ["StrykerBase_DG1DES", "init", {
        clearweaponcargoGlobal (_this select 0);
        clearmagazinecargoGlobal (_this select 0);
        clearitemcargoGlobal (_this select 0);
        clearbackpackcargoGlobal (_this select 0);
        (_this select 0) addItemCargoGlobal ["ACE_EarPlugs",3];
        (_this select 0) addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),2];
        (_this select 0) addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),1];
        (_this select 0) addMagazineCargoGlobal ["Chemlight_Blue",3];
        (_this select 0) addMagazineCargoGlobal ["Chemlight_Red",3];
        (_this select 0) addItemCargoGlobal ["Toolkit",1];
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;
    ["rhsusf_m113_usarmy", "init", {
        clearweaponcargoGlobal (_this select 0);
        clearmagazinecargoGlobal (_this select 0);
        clearitemcargoGlobal (_this select 0);
        clearbackpackcargoGlobal (_this select 0);
        (_this select 0) addItemCargoGlobal ["ACE_EarPlugs",3];
        (_this select 0) addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),2];
        (_this select 0) addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),1];
        (_this select 0) addMagazineCargoGlobal ["Chemlight_Blue",3];
        (_this select 0) addMagazineCargoGlobal ["Chemlight_Red",3];
        (_this select 0) addItemCargoGlobal ["Toolkit",1];
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;
    ["rhsusf_m113_usarmy_medical", "init", {
        clearweaponcargoGlobal (_this select 0);
        clearmagazinecargoGlobal (_this select 0);
        clearitemcargoGlobal (_this select 0);
        clearbackpackcargoGlobal (_this select 0);
        (_this select 0) addItemCargoGlobal ["ACE_EarPlugs",15];
        (_this select 0) addItemCargoGlobal ["ACE_salineIV_500",10];
        (_this select 0) addItemCargoGlobal ["ACE_morphine",30];
        (_this select 0) addItemCargoGlobal ["ACE_epinephrine",20];
        (_this select 0) addItemCargoGlobal ["ACE_atropine",20];
        (_this select 0) addItemCargoGlobal ["ACE_tourniquet",8];
        (_this select 0) addItemCargoGlobal ["ACE_FieldDressing",10];
        (_this select 0) addItemCargoGlobal ["ACE_packingBandage",40];
        (_this select 0) addItemCargoGlobal ["ACE_elasticBandage",40];
        (_this select 0) addItemCargoGlobal ["ACE_quikclot",40];
        (_this select 0) addItemCargoGlobal ["ACE_bodyBag",12];
        (_this select 0) addItemCargoGlobal ["ACE_personalAidKit",8];
        (_this select 0) addItemCargoGlobal ["ACE_surgicalKit",2];

        (_this select 0) addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),2];
        (_this select 0) addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),2];
        (_this select 0) addMagazineCargoGlobal ["Chemlight_Blue",3];
        (_this select 0) addMagazineCargoGlobal ["Chemlight_Red",3];
        (_this select 0) addItemCargoGlobal ["Toolkit",1];
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;
    ["RHS_M2A2_Base", "init", {
        clearweaponcargoGlobal (_this select 0);
        clearmagazinecargoGlobal (_this select 0);
        clearitemcargoGlobal (_this select 0);
        clearbackpackcargoGlobal (_this select 0);
        (_this select 0) addItemCargoGlobal ["ACE_EarPlugs",3];
        (_this select 0) addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),2];
        (_this select 0) addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),1];
        (_this select 0) addMagazineCargoGlobal ["Chemlight_Blue",3];
        (_this select 0) addMagazineCargoGlobal ["Chemlight_Red",3];
        (_this select 0) addItemCargoGlobal ["Toolkit",1];
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;

    ["rhsusf_m1a1tank_base", "init", {
        clearweaponcargoGlobal (_this select 0);
        clearmagazinecargoGlobal (_this select 0);
        clearitemcargoGlobal (_this select 0);
        clearbackpackcargoGlobal (_this select 0);
        (_this select 0) addItemCargoGlobal ["ACE_EarPlugs",3];
        (_this select 0) addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),2];
        (_this select 0) addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),1];
        (_this select 0) addMagazineCargoGlobal ["Chemlight_Blue",3];
        (_this select 0) addMagazineCargoGlobal ["Chemlight_Red",3];
        (_this select 0) addItemCargoGlobal ["Toolkit",1];
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;
    ["rhsusf_m109_usarmy", "init", {
        clearweaponcargoGlobal (_this select 0);
        clearmagazinecargoGlobal (_this select 0);
        clearitemcargoGlobal (_this select 0);
        clearbackpackcargoGlobal (_this select 0);
        (_this select 0) addItemCargoGlobal ["ACE_EarPlugs",3];
        (_this select 0) addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE),2];
        (_this select 0) addMagazineCargoGlobal [QUOTE(_GRENADE_SMOKE_BLUE),1];
        (_this select 0) addMagazineCargoGlobal ["Chemlight_Blue",3];
        (_this select 0) addMagazineCargoGlobal ["Chemlight_Red",3];
        (_this select 0) addItemCargoGlobal ["Toolkit",1];
    }, nil, nil, true] call CBA_fnc_addClassEventHandler;
};