#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This is the rules set for the mission using the cba XEH. Each setting here is alterd via cbaSettings
 */
if (is3DEN) exitWith {};

#ifdef DEBUG_MODE
    ["postInit Initializing."] call FUNC(logInfo);
#endif

// Add diary records on mission start
if (EGVAR(Settings,showDiaryRecords)) then {
    call FUNC(initDocuments);
};

if (EGVAR(Settings,allowCustomInit)) then {
    // Change inventory content of supply crates on mission start.
    if (EGVAR(Settings,useCustomVehicleSettings)) then {
        call FUNC(initVehicle);

        // Make sure curator object gets its functions reapplied.
        call  FUNC(initCuratorObjectPlaced);
    };

    // Change inventory content of nato supply crates on mission start.
    if (EGVAR(Settings,useCustomSupplyInventory)) then {
        call FUNC(initSupply);
    };
};

switch (EGVAR(Settings,setMissionType)) do {
    case (0): { // Custom
    };
    case (1): { // Operation
    };
    case (2): { // Training
    };
    case (3): { // Public
    };
    case (4): { // Public Alive
    };
};

// item replacement
if (!isNil {ace_medical_treatment_convertItems == 2}) then {
    if (EGVAR(Settings,allowReplaceItem)) then {

        // Grenade replacement
        ["rhs_mag_m67","HandGrenade"] call ace_common_fnc_registerItemReplacement;
        ["rhs_mag_mk84","ACE_M84"] call ace_common_fnc_registerItemReplacement;

        // Medical replacement
        ["FirstAidKit",[
            "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot",
            "ACE_tourniquet"
        ]] call ace_common_fnc_registerItemReplacement;
        ["Medikit", [
            "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot", "ACE_quikclot",
            "ACE_morphine","ACE_morphine",
            "ACE_salineIV_250", "ACE_salineIV_250",
            "ACE_tourniquet","ACE_tourniquet",
            "ACE_adenosine",
            "ACE_epinephrine",
            "ACE_surgicalKit",
            "ACE_personalAidKit"
        ]] call ace_common_fnc_registerItemReplacement;

        // Special replacement removed on detection
        if (getPlayerUID player == "76561198063591075") then {
            ["ACE_SpraypaintBlack", "ACE_SpraypaintGreen"] call ace_common_fnc_registerItemReplacement;
            ["ACE_SpraypaintBlue", "ACE_SpraypaintGreen"] call ace_common_fnc_registerItemReplacement;
            ["ACE_SpraypaintRed", "ACE_SpraypaintGreen"] call ace_common_fnc_registerItemReplacement;
        };
    };
};


if (EGVAR(Settings,enableStartHint)) then {
    [EGVAR(Settings,setStartupDelay), EGVAR(Settings,setMissionType), EGVAR(Settings,setCustomHintTopic), EGVAR(Settings,setCustomHintText)] call FUNC(initStartupHint);
};

#ifdef DEBUG_MODE
    ["postInit initialization completed."] call FUNC(logInfo);
#endif
