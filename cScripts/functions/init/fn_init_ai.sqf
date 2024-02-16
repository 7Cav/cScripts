#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function changes AI behaviours 
 *
 * Example:
 * call cScripts_fnc_init_ai
 *
 * Public: No
 */

if (!isServer) exitWith {};
INFO("AI", "Applying AI Custom AI...");

// AI Behavior
if (EGVAR(Settings,setAiBanDismountOfCrew)) then {
    SHOW_WARNING("AI Experimental", "Vehicle AI dismount ban system applied to all vehicles.");
    ["AllVehicles", "init", {
        params ["_vehicle"];
        _vehicle setUnloadInCombat [true, false];
        _vehicle allowCrewInImmobile [false, true];
    }, true, ["man"], true] call CBA_fnc_addClassEventHandler;
};

// AI Skills
if (EGVAR(Settings,setAiSystemDifficulty) >= 1 ) then {
    ["CAManBase", "init", {
        params ["_unit"];
    
        if !(isPlayer _unit) then {
            if (EGVAR(Settings,setAiSystemDifficulty) == 1) then {
                _unit setSkill ["aimingspeed",     0.420];
                _unit setSkill ["aimingaccuracy",  1.000];
                _unit setSkill ["aimingshake",     0.360];
                _unit setSkill ["spottime",        1.000];
                _unit setSkill ["spotdistance",    1.000];
                _unit setSkill ["commanding",      1.0];
                _unit setSkill ["general",         1.0];
            };
            if (EGVAR(Settings,setAiSystemDifficulty) == 2) then {
                if (getLighting select 1 <= 5) then {
                    if (hmd _unit != "") then {
                        _unit setSkill ["spottime",        0.015];
                        _unit setSkill ["spotdistance",    0.015];
                    } else {
                        _unit setSkill ["spottime",        0.520];
                        _unit setSkill ["spotdistance",    0.520];
                    };
                } else {
                    _unit setSkill ["spottime",        1.000];
                    _unit setSkill ["spotdistance",    1.000];
                };
    
                switch (faction _unit) do {
                    case "rhs_faction_msv";
                    case "rhs_faction_rva";
                    case "rhs_faction_tv";
                    case "rhs_faction_vdv_45";
                    case "rhs_faction_vdv";
                    case "rhs_faction_vmf";
                    case "rhs_faction_vpvo";
                    case "rhs_faction_vv";
                    case "rhs_faction_vvs_c";
                    case "rhs_faction_vvs": {
                        _unit setSkill ["general",         1.000];
                        _unit setSkill ["commanding",      0.950];
                        _unit setSkill ["courage",         1.000];
                        _unit setSkill ["aimingspeed",     0.720];
                        _unit setSkill ["aimingaccuracy",  0.920];
                        _unit setSkill ["aimingshake",     0.260];
                        _unit setSkill ["reloadSpeed",     1.000];
                    };
                    default {
                        _unit setSkill ["general",         0.900]; //  Bad <=> Good
                        _unit setSkill ["commanding",      0.750]; //  Bad <=> Good
                        _unit setSkill ["courage",         0.750]; //  Bad <=> Good
                        _unit setSkill ["aimingspeed",     0.620]; //  Bad <=> Good
                        _unit setSkill ["aimingaccuracy",  0.830]; //  Bad <=> Good
                        _unit setSkill ["aimingshake",     0.360]; // Good <=> Bad
                        _unit setSkill ["reloadSpeed",     0.750]; //  Bad <=> Good
                    };
                };
    
                // Role adjusted
                if (getText (configfile >> "CfgVehicles" >> typeOf _unit >> "textSingular") == "machinegunner") then {
                        _unit setSkill ["aimingspeed",     0.820];
                        _unit setSkill ["aimingaccuracy",  0.820];
                        _unit setSkill ["aimingshake",     0.350];
                        _unit setSkill ["reloadSpeed",     0.800];
                };
                if (getText (configfile >> "CfgVehicles" >> typeOf _unit >> "textSingular") == "sniper") then {
                        _unit setSkill ["aimingspeed",     0.600];
                        _unit setSkill ["aimingaccuracy",  0.950];
                        _unit setSkill ["aimingshake",     0.100];
                        _unit setSkill ["reloadSpeed",     0.800];
                };
    
                // For logging
                private _skillArray = [
                    ["general", _unit skill "general", _unit skillFinal "general"],
                    ["commanding", _unit skill "commanding", _unit skillFinal "commanding"],
                    ["courage", _unit skill "courage", _unit skillFinal "courage"],
                    ["aimingspeed", _unit skill "aimingspeed", _unit skillFinal "aimingspeed"],
                    ["aimingaccuracy", _unit skill "aimingaccuracy", _unit skillFinal "aimingaccuracy"],
                    ["aimingshake", _unit skill "aimingshake", _unit skillFinal "aimingshake"],
                    ["reloadSpeed", _unit skill "reloadSpeed", _unit skillFinal "reloadSpeed"],
                    ["spottime", _unit skill "spottime", _unit skill "spottime"],
                    ["spotdistance", _unit skill "spotdistance", _unit skillFinal "spotdistance"]
                ];
                INFO_3("AI","Unit %1 (%2) have skill levels %3.", _unit, typeOf _unit, _skillArray);
            };
        };
    }, true, [], true] call CBA_fnc_addClassEventHandler;
};
