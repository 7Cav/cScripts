
// Add diary records on mission start
if (getNumber (missionConfigFile >> "CfgSettings" >> "showDiaryRecords") == 1) then {
    call cScripts_fnc_initDocuments;
};

if (getNumber (missionConfigFile >> "CfgSettings" >> "useCustomInit") == 1) then {
    call cScripts_fnc_init;

    // Change inventory content of supply crates on mission start.
    if (getNumber (missionConfigFile >> "CfgSettings" >> "useScriptVehicleInventory") == 1) then {
        call cScripts_fnc_initSupply;
    };

    // Change inventory content of vehicle on mission start.
    if (getNumber (missionConfigFile >> "CfgSettings" >> "useScriptSupplyInventory") == 1) then {
        call cScripts_fnc_initVehicle;
    };
    // Add a Get Out Right and Left on all BlackHawks on Mission Start
    if (getNumber (missionConfigFile >> "CfgSettings" >> "addUH60SelectGetOut") == 1) then {
        call cScripts_fnc_initUH60M;
    };
};

// Set time and run the "Red Light" start script.
if (getNumber (missionConfigFile >> "CfgSettings" >> "useRedLightStart") == 1) then {
    private _setRedLightTime = getNumber (missionConfigFile >> "CfgSettings" >> "setRedLightTime");
    [_setRedLightTime] call cScripts_fnc_initMissionStartHint;
};