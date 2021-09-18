#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function add cosmetic options to vehicles
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * ["truckMcTruckLoad"] call cScripts_fnc_vehicle_addCosmeticSelection
 *
 * Public: No
 */

params [["_vehicle", objNull, [objNull]]];

// [className, displayName, [[0, Desert], [0, Woodland], {code}]]
private _textures = [
    ["rhsusf_m1a1tank_base", "Barrel - Diplomacy Failed", [
        [12, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\BarrelArt_Abrams_D\30_ca.paa"],
        [12, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\BarrelArt_Abrams_WD\17_ca.paa"]
    ]],
    ["rhsusf_m1a1tank_base", "Saber-1", [
        [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\1_ca.paa"],
        [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_WD\1_ca.paa"],
        {_vehicle setVariable [QEGVAR(Vehicle,Squad), 1]}
    ]],
    ["rhsusf_m1a1tank_base", "Saber-2", [
        [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\2_ca.paa"],
        [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_WD\2_ca.paa"],
        {_vehicle setVariable [QEGVAR(Vehicle,Squad), 2]}
    ]],
    ["rhsusf_m1a1tank_base", "Saber-3", [
        [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\3_ca.paa"],
        [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_WD\3_ca.paa"],
        {_vehicle setVariable [QEGVAR(Vehicle,Squad), 3]}
    ]],
    ["rhsusf_m1a1tank_base", "Saber-4", [
        [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\4_ca.paa"],
        [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_WD\4_ca.paa"],
        {_vehicle setVariable [QEGVAR(Vehicle,Squad), 4]}
    ]]
];

{
    _x params ["_classname", "_displayName", "_textureCode"];
    if (_vehicle isKindOf _classname) then {

        private _statement = {
            params ["_vehicle", "_player", "_params"];
            _params params [["_desert", []], ["_woodland", []], ["_code", {}, [{}]]];

            if (_vehicle iskindOf "rhsusf_m1a1tank_base") then {
                switch (typeOf _vehicle) do {
                    case "rhsusf_m1a1aimd_usarmy";
                    case "rhsusf_m1a1aim_tuski_d";
                    case "rhsusf_m1a2sep1d_usarmy";
                    case "rhsusf_m1a2sep1tuskid_usarmy";
                    case "rhsusf_m1a2sep1tuskiid_usarmy";
                    case "rhsusf_m1a2sep2d_usarmy": {_vehicle setObjectTextureGlobal _desert;};
                    default {
                        if (count _woodland == 0) then {
                            _vehicle setObjectTextureGlobal _desert;
                        } else {
                            _vehicle setObjectTextureGlobal _woodland;
                        };
                    };
                };
                call _code;
                [
                    [],
                    ["Vehicle Art have been changed"],
                    [if (count _woodland == 0) then {_desert#1} else {_woodland#1}, 10],
                    [""]
                ] call CBA_fnc_notify;
            };
        };

        private _category = ["ACE_SelfActions", QEGVAR(Actions_Vehicle,Main_Cat), QEGVAR(Actions_Vehicle,Cosmetic_Cat)];
        private _action = [format ["cScripts_Cosmetic_%1_%2", _classname, _forEachIndex], _displayName, "", _statement, {true}, nil, _textureCode] call ace_interact_menu_fnc_createAction;
        [_vehicle, 1, _category, _action] call ace_interact_menu_fnc_addActionToObject;

        #ifdef DEBUG_MODE
            [format["Selector for classname '%1' named '%2' added to %3 (%4)", typeOf _vehicle, _displayName, _vehicle, typeOf _vehicle], "Vehicle Cosmetic Selector"] call FUNC(info);
        #endif
    };
} foreach _textures;