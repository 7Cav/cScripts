if (getNumber (missionConfigFile >> "CfgSettings" >> "isDebugMode") == 1) then {diag_log formatText ["[cScripts] Info: Loading postInit"];};

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

if (getNumber (missionConfigFile >> "CfgSettings" >> "isMissionType") == 0) then {
};

if (getNumber (missionConfigFile >> "CfgSettings" >> "isMissionType") == 1) then {
// Set time and run the "Red Light" start script.
    if (getNumber (missionConfigFile >> "CfgSettings" >> "useRedLightStart") == 1) then {
        private _setRedLightTime = getNumber (missionConfigFile >> "CfgSettings" >> "setRedLightTime");
        [_setRedLightTime] call cScripts_fnc_initMissionStartHint;
    };
};

if (getNumber (missionConfigFile >> "CfgSettings" >> "isMissionType") == 2) then {
// Set time and run Training Mission start script.
    if (getNumber (missionConfigFile >> "CfgSettings" >> "useTrainingHintStart") == 1) then {
        private _setTrainingHintTime = getNumber (missionConfigFile >> "CfgSettings" >> "setTrainingHintTime");
        [_setTrainingHintTime] call cScripts_fnc_initTrainingStartHint;
    };
};
