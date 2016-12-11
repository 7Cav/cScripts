/*
GearVersionDate: 161211
*/
class CommonBlufor {
    backpack[] = {"rhsusf_assault_eagleaiii_ocp"};
    goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"rhs_uniform_g3_mc"};
    vest[] = {"rhsusf_iotv_ocp"};

    primary[] = {"rhs_weap_m4a1_carryhandle"};
    secondary[] = {""};
    launcher[] = {""};
    
    binoculars[] = {""};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",9,

        "rhs_mag_m67",6,

        "rhs_mag_an_m8hc",8,

        "Chemlight_red",2,
        "Chemlight_blue",2
    };
    items[] = {
        // Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",
        
        // Standard
        "ACE_EarPlugs",2,
        "ACE_MapTools",
        "ACE_Flashlight_MX991",
        "ACE_CableTie",2,
        

        // Electronics
        "ACE_DAGR",
        "ACE_IR_Strobe_Item",

        // Tools
        "ACE_EntrenchingTool"
    };

    compass[] = {"ItemCompass"};
    gps[] = {""};
    map[] = {"ItemMap"};
    nvgs[] = {"rhsusf_ANPVS_14"};
    watch[] = {"tf_microdagr"};

    insignia[] = {""};
    preLoadout = " \
        (_this select 0) setVariable [""ACE_medical_medicClass"", 0, true]; \
        (_this select 0) setVariable [""ACE_isEngineer"", false];";
    postLoadout = " \
        [(_this select 0), currentWeapon (_this select 0)] call ace_weaponselect_fnc_selectWeaponMode; \
        [(_this select 0)] call ace_hearing_fnc_putInEarplugs";
};