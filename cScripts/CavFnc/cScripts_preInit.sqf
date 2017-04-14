if (getNumber (missionConfigFile >> "CfgSettings" >> "isDebugMode") == 1) then {diag_log formatText ["[cScripts] Info: Loading preInit"];};

if (getNumber (missionConfigFile >> "CfgSettings" >> "isMissionType") == 0) then {
    
};

if (getNumber (missionConfigFile >> "CfgSettings" >> "isMissionType") == 1) then {

};

if (getNumber (missionConfigFile >> "CfgSettings" >> "isMissionType") == 2) then {

};
if (getNumber (missionConfigFile >> "CfgSettings" >> "useCustomInit") == 1) then {

};

if (getNumber (missionConfigFile >> "CfgSettings" >> "use7cavZeusModuels") == 1) then {
    ["7Cav Logistics", "Transform to Starter Crate",{
        [(_this select 1)] call cScripts_fnc_doStarterCrate;
    }] call Ares_fnc_RegisterCustomModule;
    ["7Cav Logistics", "Transform to Cav Supply",{
        [(_this select 1)] call cScripts_fnc_initSupply;
    }] call Ares_fnc_RegisterCustomModule;
    ["7Cav Logistics", "Transform to Vehicle",{
        [(_this select 1)] call cScripts_fnc_initVehicle;
    }] call Ares_fnc_RegisterCustomModule;

    ["7Cav Helicopters", "Add Get Out",{
        [(_this select 1)] call cScripts_fnc_initHelo;
    }] call Ares_fnc_RegisterCustomModule;
    ["7Cav Helicopters", "Add Tail Number: B1",{
        [(_this select 1),"b1"] call cScripts_fnc_UH60TailNumber;
    }] call Ares_fnc_RegisterCustomModule;
    ["7Cav Helicopters", "Add Tail Number: B2",{
        [(_this select 1),"b2"] call cScripts_fnc_UH60TailNumber;
    }] call Ares_fnc_RegisterCustomModule;
    ["7Cav Helicopters", "Add Tail Number: B3",{
        [(_this select 1),"b3"] call cScripts_fnc_UH60TailNumber;
    }] call Ares_fnc_RegisterCustomModule;
    ["7Cav Helicopters", "Add Tail Number: B4",{
        [(_this select 1),"b4"] call cScripts_fnc_UH60TailNumber;
    }] call Ares_fnc_RegisterCustomModule;

    ["7Cav Misc", "Add the Yellow 7Cav Flag",{
        [(_this select 1), "yellow"] call cScripts_fnc_flag;
    }] call Ares_fnc_RegisterCustomModule;
    ["7Cav Misc", "Add the Black 7Cav Flag",{
        [(_this select 1), "black"] call cScripts_fnc_flag;
    }] call Ares_fnc_RegisterCustomModule;
};
