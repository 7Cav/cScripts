#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function add eventhandelers to all units.
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_initAI
 *
 * Public: No
 */

#ifdef DEBUG_MODE
    ["Applying Event Handers (init) to all non player characters...", "InitAI"] call FUNC(logInfo);
#endif

["CAManBase", "init", {
    params ["_unit"];

    if !(isPlayer _unit) then {
        if ((lightnings < 0.3)) then {
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
                _unit setSkill ["commanding",      1.000];
                _unit setSkill ["courage",         1.000];
                _unit setSkill ["aimingspeed",     0.420];
                _unit setSkill ["aimingaccuracy",  1.000];
                _unit setSkill ["aimingshake",     0.260];
                _unit setSkill ["reloadSpeed",     1.000];
            };
            default {
                _unit setSkill ["general",         0.900]; //  Bad <=> Good
                _unit setSkill ["commanding",      0.750]; //  Bad <=> Good
                _unit setSkill ["courage",         0.750]; //  Bad <=> Good
                _unit setSkill ["aimingspeed",     0.420]; //  Bad <=> Good
                _unit setSkill ["aimingaccuracy",  0.850]; //  Bad <=> Good
                _unit setSkill ["aimingshake",     0.360]; // Good <=> Bad
                _unit setSkill ["reloadSpeed",     0.750]; //  Bad <=> Good
            };
        };
    };
}, true, [], true] call CBA_fnc_addClassEventHandler;
