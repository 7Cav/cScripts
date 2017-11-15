/*
GearVersionDate: 170211
*/
class CommonBlufor {
    backpack[] = {""};
    goggles[] = {""};
    headgear[] = {""};
    uniform[] = {"rhs_uniform_cu_ocp_1stcav"};
    vest[] = {""};

    primary[] = {""};
    secondary[] = {""};
    launcher[] = {""};
    
    binoculars[] = {""};

    magazines[] = {""};
    items[] = {""};

    compass[] = {""};
    gps[] = {""};
    map[] = {""};
    nvgs[] = {""};
    watch[] = {""};

    insignia[] = {""};
    preLoadout = " \
        (_this select 0) setVariable [""ACE_medical_medicClass"", 0, true]; \
        (_this select 0) setVariable [""ACE_isEngineer"", false];";
    postLoadout = " \
        [(_this select 0), currentWeapon (_this select 0), currentMuzzle (_this select 0)] call ace_safemode_fnc_lockSafety; \
        [(_this select 0)] call ace_hearing_fnc_putInEarplugs";
};

class CAV_Alpha_Base : CommonBlufor {
    backpack[] = {""};
    goggles[] = {""};
    headgear[] = {""};
    //uniform[] = {"rhs_uniform_cu_ocp_1stcav"};
    vest[] = {""};

    primary[] = {""};
    secondary[] = {""};
    launcher[] = {""};
    
    binoculars[] = {""};

    magazines[] = {""};
    items[] = {""};

    compass[] = {""};
    gps[] = {""};
    map[] = {""};
    nvgs[] = {""};
    watch[] = {""};

    insignia[] = {""};
    preLoadout = " \
        (_this select 0) setVariable [""CAV_isAlphaUnit"", true]; \
        (_this select 0) setVariable [""ACE_medical_medicClass"", 0, true]; \
        (_this select 0) setVariable [""ACE_isEngineer"", false];";
    postLoadout = " \
        [(_this select 0), currentWeapon (_this select 0), currentMuzzle (_this select 0)] call ace_safemode_fnc_lockSafety; \
        [(_this select 0)] call ace_hearing_fnc_putInEarplugs";
};

class CAV_Bravo_Base : CommonBlufor {
    backpack[] = {""};
    goggles[] = {""};
    headgear[] = {""};
    //uniform[] = {"rhs_uniform_cu_ocp_1stcav"};
    vest[] = {""};

    primary[] = {""};
    secondary[] = {""};
    launcher[] = {""};
    
    binoculars[] = {""};

    magazines[] = {""};
    items[] = {""};

    compass[] = {""};
    gps[] = {""};
    map[] = {""};
    nvgs[] = {""};
    watch[] = {""};
    
    insignia[] = {""};
    preLoadout = " \
        (_this select 0) setVariable [""CAV_isBravoUnit"", true]; \
        (_this select 0) setVariable [""ACE_medical_medicClass"", 0, true]; \
        (_this select 0) setVariable [""ACE_isEngineer"", false];";
    postLoadout = " \
        [(_this select 0), currentWeapon (_this select 0), currentMuzzle (_this select 0)] call ace_safemode_fnc_lockSafety; \
        [(_this select 0)] call ace_hearing_fnc_putInEarplugs";
};

class CAV_Charlie_Base : CommonBlufor {
    backpack[] = {""};
    goggles[] = {""};
    headgear[] = {""};
    //uniform[] = {"rhs_uniform_cu_ocp_1stcav"};
    vest[] = {""};

    primary[] = {""};
    secondary[] = {""};
    launcher[] = {""};
    
    binoculars[] = {""};

    magazines[] = {""};
    items[] = {""};

    compass[] = {""};
    gps[] = {""};
    map[] = {""};
    nvgs[] = {""};
    watch[] = {""};
    
    insignia[] = {""};
    preLoadout = " \
        (_this select 0) setVariable [""CAV_isCharlieUnit"", true]; \
        (_this select 0) setVariable [""ACE_medical_medicClass"", 0, true]; \
        (_this select 0) setVariable [""ACE_isEngineer"", false];";
    postLoadout = " \
        [(_this select 0), currentWeapon (_this select 0), currentMuzzle (_this select 0)] call ace_safemode_fnc_lockSafety; \
        [(_this select 0)] call ace_hearing_fnc_putInEarplugs";
};

class CAV_Medical_Base : CommonBlufor {
    backpack[] = {""};
    goggles[] = {""};
    headgear[] = {""};
    //uniform[] = {"rhs_uniform_cu_ocp_1stcav"};
    vest[] = {""};

    primary[] = {""};
    secondary[] = {""};
    launcher[] = {""};
    
    binoculars[] = {""};

    magazines[] = {""};
    items[] = {""};

    compass[] = {""};
    gps[] = {""};
    map[] = {""};
    nvgs[] = {""};
    watch[] = {""};
    
    insignia[] = {""};
    preLoadout = " \
        (_this select 0) setVariable [""CAV_isMedicalUnit"", true]; \
        (_this select 0) setVariable [""ACE_medical_medicClass"", 0, true]; \
        (_this select 0) setVariable [""ACE_isEngineer"", false];";
    postLoadout = " \
        [(_this select 0), currentWeapon (_this select 0), currentMuzzle (_this select 0)] call ace_safemode_fnc_lockSafety; \
        [(_this select 0)] call ace_hearing_fnc_putInEarplugs";
};

class CAV_Ranger_Base : CommonBlufor {
    backpack[] = {""};
    goggles[] = {""};
    headgear[] = {""};
    //uniform[] = {"rhs_uniform_cu_ocp_1stcav"};
    vest[] = {""};

    primary[] = {""};
    secondary[] = {""};
    launcher[] = {""};
    
    binoculars[] = {""};

    magazines[] = {""};
    items[] = {""};

    compass[] = {""};
    gps[] = {""};
    map[] = {""};
    nvgs[] = {""};
    watch[] = {""};
    
    insignia[] = {""};
    preLoadout = " \
        (_this select 0) setVariable [""CAV_isRangerUnit"", true]; \
        (_this select 0) setVariable [""ACE_medical_medicClass"", 0, true]; \
        (_this select 0) setVariable [""ACE_isEngineer"", false];";
    postLoadout = " \
        [(_this select 0), currentWeapon (_this select 0), currentMuzzle (_this select 0)] call ace_safemode_fnc_lockSafety; \
        [(_this select 0)] call ace_hearing_fnc_putInEarplugs";
};