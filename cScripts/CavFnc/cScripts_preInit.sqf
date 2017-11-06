if (is3DEN) exitWith {};
if (getNumber (missionConfigFile >> "CfgSettings" >> "isDebugMode") == 1) then {diag_log formatText ["[cScripts] Info: Loading preInit"];};

if (getNumber (missionConfigFile >> "CfgSettings" >> "isMissionType") == 0) then {
    
};

if (getNumber (missionConfigFile >> "CfgSettings" >> "isMissionType") == 1) then {

};

if (getNumber (missionConfigFile >> "CfgSettings" >> "isMissionType") == 2) then {

};
if (getNumber (missionConfigFile >> "CfgSettings" >> "useCustomInit") == 1) then {

};

if (getNumber (missionConfigFile >> "CfgSettings" >> "use7cavZeusModules") == 1) then {
    call cScripts_fnc_initModules;
};
