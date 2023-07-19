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

private _textures = [
    ["rhsusf_m1a1tank_base", "Saber-1 (120mm IV)", [
        "\z\cav\addons\textures\data\vehicles\abrams\BarrelArt_120mmIV_ca.paa",
        {
            _vehicle setObjectTextureGlobal [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\1_ca.paa"];
            _vehicle setObjectTextureGlobal [12, "\z\cav\addons\textures\data\vehicles\abrams\BarrelArt_120mmIV_ca.paa"];
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), 1, true];
        }
    ]],
    ["rhsusf_m1a1tank_base", "Saber-2 (Bounty Hunters)", [
        "\z\cav\addons\textures\data\vehicles\abrams\BarrelArt_BountyHunters_ca.paa",
        {
            _vehicle setObjectTextureGlobal [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\2_ca.paa"];
            _vehicle setObjectTextureGlobal [12, "\z\cav\addons\textures\data\vehicles\abrams\BarrelArt_BountyHunters_ca.paa"];
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), 2, true];
        }
    ]],
    ["rhsusf_m1a1tank_base", "Saber-3 (Iron Clad Lads)", [
        "\z\cav\addons\textures\data\vehicles\abrams\BarrelArt_IronCladLads_ca.paa",
        {
            _vehicle setObjectTextureGlobal [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\3_ca.paa"];
            _vehicle setObjectTextureGlobal [12, "\z\cav\addons\textures\data\vehicles\abrams\BarrelArt_IronCladLads_ca.paa"];
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), 3, true];
        }
    ]],
    ["rhsusf_m1a1tank_base", "Saber-4 (War Saw)", [
        "\z\cav\addons\textures\data\vehicles\abrams\BarrelArt_WarSaw_ca.paa",
        {
            _vehicle setObjectTextureGlobal [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\4_ca.paa"];
            _vehicle setObjectTextureGlobal [12, "\z\cav\addons\textures\data\vehicles\abrams\BarrelArt_WarSaw_ca.paa"];
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), 4, true];
        }
    ]],
        ["rhsusf_m1a1tank_base", "Saber-1", [
        "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\1_ca.paa",
        {
            _vehicle setObjectTextureGlobal [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\1_ca.paa"];
            _vehicle setObjectTextureGlobal [12, ""];
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), -1, true];
        }
    ]],
    ["rhsusf_m1a1tank_base", "Saber-2", [
        "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\2_ca.paa",
        {
            _vehicle setObjectTextureGlobal [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\2_ca.paa"];
            _vehicle setObjectTextureGlobal [12, ""];
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), -2, true];
        }
    ]],
    ["rhsusf_m1a1tank_base", "Saber-3", [
        "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\3_ca.paa",
        {
            _vehicle setObjectTextureGlobal [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\3_ca.paa"];
            _vehicle setObjectTextureGlobal [12, ""];
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), -3, true];
        }
    ]],
    ["rhsusf_m1a1tank_base", "Saber-4", [
        "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\4_ca.paa",
        {
            _vehicle setObjectTextureGlobal [11, "\rhsusf\addons\RHSUSF_Decals\Data\Labels\ArmyPlt_Abrams_D\4_ca.paa"];
            _vehicle setObjectTextureGlobal [12, ""];
            _vehicle setVariable [QEGVAR(Vehicle,Callsign), -4, true];
        }
    ]],
    ["I_APC_Wheeled_03_cannon_F", "OD Paint", [
        "",
        {
            [_vehicle, [
                [0,"\a3\data_f_tacops\data\apc_wheeled_03_ext_ig_03_co.paa"],
                [1,"\a3\data_f_tacops\data\apc_wheeled_03_ext2_ig_03_co.paa"],
                [2,"\a3\data_f_tacops\data\rcws30_ig_03_co.paa"],
                [3,"\a3\data_f_tacops\data\apc_wheeled_03_ext_alpha_ig_03_co.paa"],
                [4,"\a3\armor_f\data\camonet_aaf_fia_green_co.paa"],
                [5,"\a3\armor_f\data\cage_g3_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
        }
    ]],
    ["I_APC_Wheeled_03_cannon_F", "FDE Paint", [
        "",
        {
            [_vehicle, [
                [0, "\a3\data_f_tacops\data\apc_wheeled_03_ext_ig_02_co.paa"],
                [1, "\a3\data_f_tacops\data\apc_wheeled_03_ext2_ig_02_co.paa"],
                [2, "\a3\data_f_tacops\data\rcws30_ig_02_co.paa"],
                [3, "\a3\data_f_tacops\data\apc_wheeled_03_ext_alpha_ig_02_co.paa"],
                [4, "\a3\armor_f\data\camonet_aaf_fia_desert_co.paa"],
                [5, "\a3\armor_f\data\cage_sand_co.paa"]
            ]] call EFUNC(vehicle,applyTextures);
        }
    ]],
    ["I_APC_Wheeled_03_cannon_F", "Toggle Slats", [
        "",
        {
            private _slatsAreAttached = _vehicle animationSourcePhase "showSLATHull";
            if (_slatsAreAttached == 1) then {
                _vehicle animateSource ["showSLATHull",0, true];
            } else {
                _vehicle animateSource ["showSLATHull",1, true];
            };
        }
    ]]
];

{
    _x params ["_classname", "_displayName", "_textureCode"];
    if (_vehicle isKindOf _classname) then {

        private _statement = {
            params ["_vehicle", "_player", "_params"];
            _params params [["_texture", "", [""]], ["_code", {}, [{}]]];

            call _code;
            [
                [],
                ["Vehicle art have been changed"],
                [_texture, 10],
                [""]
            ] call CBA_fnc_notify;
        };

        private _category = ["ACE_SelfActions", QEGVAR(Actions_Vehicle,Main_Cat), QEGVAR(Actions_Vehicle,Cosmetic_Cat)];
        private _action = [format ["cScripts_Cosmetic_%1_%2", _classname, _forEachIndex], _displayName, "", _statement, {true}, nil, _textureCode] call ace_interact_menu_fnc_createAction;
        [_vehicle, 1, _category, _action] call ace_interact_menu_fnc_addActionToObject;

        #ifdef DEBUG_MODE
            [format["Selector for classname '%1' named '%2' added to %3 (%4)", typeOf _vehicle, _displayName, _vehicle, typeOf _vehicle], "Vehicle Cosmetic Selector"] call FUNC(info);
        #endif
    };
} foreach _textures;
