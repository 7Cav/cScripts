/*
GearVersionDate: 170211
*/
class CommonBlufor {
    backpack[] = {"rhsusf_assault_eagleaiii_ocp"};
    goggles[] = {"rhs_googles_clear"};
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    uniform[] = {"rhs_uniform_cu_ocp_1stcav"};
    vest[] = {"rhsusf_spcs_ocp_rifleman"};

    primary[] = {"rhs_weap_m4a1_carryhandle"};
    secondary[] = {""};
    launcher[] = {""};
    
    binoculars[] = {""};

    magazines[] = {
        "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",9,

        "rhs_mag_m67",6,
        
        "SmokeShell",6
    };
    items[] = {
        // Medical Equipment
        "ACE_quikclot",10,
        "ACE_tourniquet",2,
        
        // Standard
        "ACE_EarPlugs",
        "ACE_MapTools",
        "ACE_CableTie",

        // Electronics
        "ACE_DAGR",

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
        [(_this select 0), currentWeapon (_this select 0), currentMuzzle (_this select 0)] call ace_safemode_fnc_lockSafety; \
        [(_this select 0)] call ace_hearing_fnc_putInEarplugs";
};
class CAV_Alpha_Base : CommonBlufor {
    preLoadout = " \
        (_this select 0) setVariable [""CAV_isAlphaUnit"", true]; \
        (_this select 0) setVariable [""ACE_medical_medicClass"", 0, true]; \
        (_this select 0) setVariable [""ACE_isEngineer"", false];";
    postLoadout = " \
        [(_this select 0), currentWeapon (_this select 0), currentMuzzle (_this select 0)] call ace_safemode_fnc_lockSafety; \
        [(_this select 0)] call ace_hearing_fnc_putInEarplugs";
};
class CAV_Bravo_Base : CommonBlufor {
    
    preLoadout = " \
        (_this select 0) setVariable [""CAV_isBravoUnit"", true]; \
        (_this select 0) setVariable [""ACE_medical_medicClass"", 0, true]; \
        (_this select 0) setVariable [""ACE_isEngineer"", false];";
    postLoadout = " \
        [(_this select 0), currentWeapon (_this select 0), currentMuzzle (_this select 0)] call ace_safemode_fnc_lockSafety; \
        [(_this select 0)] call ace_hearing_fnc_putInEarplugs";
};
class CAV_Charlie_Base : CommonBlufor {
    headgear[] = {"rhsusf_ach_helmet_ocp"};
    preLoadout = " \
        (_this select 0) setVariable [""CAV_isCharlieUnit"", true]; \
        (_this select 0) setVariable [""ACE_medical_medicClass"", 0, true]; \
        (_this select 0) setVariable [""ACE_isEngineer"", false];";
    postLoadout = " \
        [(_this select 0), currentWeapon (_this select 0), currentMuzzle (_this select 0)] call ace_safemode_fnc_lockSafety; \
        [(_this select 0)] call ace_hearing_fnc_putInEarplugs";
};
class CAV_Delta_Base : CommonBlufor {
    
    preLoadout = " \
        (_this select 0) setVariable [""CAV_isDeltaUnit"", true]; \
        (_this select 0) setVariable [""ACE_medical_medicClass"", 0, true]; \
        (_this select 0) setVariable [""ACE_isEngineer"", false];";
    postLoadout = " \
        [(_this select 0), currentWeapon (_this select 0), currentMuzzle (_this select 0)] call ace_safemode_fnc_lockSafety; \
        [(_this select 0)] call ace_hearing_fnc_putInEarplugs";
};
class CAV_Ranger_Base : CommonBlufor {
};

class CAV_Dummy {};