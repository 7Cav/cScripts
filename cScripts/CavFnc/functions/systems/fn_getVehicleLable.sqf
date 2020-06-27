#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function returns a texture path from a given string name..
 *
 * Arguments:
 * 0: Texture <STRING> (Optional)
 *
 * Return Value:
 * Texture path <STRING>
 *
 * Example:
 * ["MyExsampleTexture"] call cScripts_fnc_getVehicleLable
 *
 */

params [["_texturePath", ""]];

private _vehicleTypeUH60 = [
    "RHS_UH60M_d", 
    "RHS_UH60M_ESSS_d", 
    "RHS_UH60M_ESSS2_d", 
    "RHS_UH60M2_d", 
    "RHS_UH60M_MEV2_d", 
    "RHS_UH60M_MEV_d", 
    "RHS_UH60M", 
    "RHS_UH60M_ESSS", 
    "RHS_UH60M_ESSS2", 
    "RHS_UH60M2", 
    "RHS_UH60M_MEV2", 
    "RHS_UH60M_MEV",
    "Cav_Alpha_UH60M",
    "Cav_Alpha_UH60M_MEV2",
    "Cav_Alpha_UH60M2"
];
private _vehicleTypeC130J = [
    "RHS_C130J",
    "Cav_Alpha_C130J"
];

switch (_texturePath) do {

    // Letters
    case ("A"): {
        _texturePath = "\z\cav\addons\textures\data\vehicles\label\letters\default_A_ca.paa";
        if (typeOf _vehicle in _vehicleTypeUH60) then {_texturePath = "\z\cav\addons\textures\data\vehicles\label\letters\c_A_ca.paa";};
    };
    case ("B"): {
        _texturePath = "\z\cav\addons\textures\data\vehicles\label\letters\default_B_ca.paa";
        if (typeOf _vehicle in _vehicleTypeUH60) then {_texturePath = "\z\cav\addons\textures\data\vehicles\label\letters\c_B_ca.paa";};
    };
    case ("C"): {
        _texturePath = "\z\cav\addons\textures\data\vehicles\label\letters\default_C_ca.paa";
        if (typeOf _vehicle in _vehicleTypeUH60) then {_texturePath = "\z\cav\addons\textures\data\vehicles\label\letters\c_C_ca.paa";};
    };
    case ("S"): {
        _texturePath = "\z\cav\addons\textures\data\vehicles\label\letters\default_S_ca.paa";
        if (typeOf _vehicle in _vehicleTypeUH60) then {_texturePath = "\z\cav\addons\textures\data\vehicles\label\letters\c_S_ca.paa";};
    };

    // Numbers
    case ("1"): {
        _texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\default_1_ca.paa";
        if (typeOf _vehicle in _vehicleTypeUH60) then {_texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\c_1_ca.paa";};
        if (typeOf _vehicle in _vehicleTypeC130J) then {_texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\lc_1_ca.paa";};
    };
    case ("2"): {
        _texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\default_2_ca.paa";
        if (typeOf _vehicle in _vehicleTypeUH60) then {_texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\c_2_ca.paa";};
        if (typeOf _vehicle in _vehicleTypeC130J) then {_texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\lc_2_ca.paa";};
    };
    case ("3"): {
        _texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\default_3_ca.paa";
        if (typeOf _vehicle in _vehicleTypeUH60) then {_texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\c_3_ca.paa";};
        if (typeOf _vehicle in _vehicleTypeC130J) then {_texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\lc_3_ca.paa";};
    };
    case ("4"): {
        _texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\default_4_ca.paa";
        if (typeOf _vehicle in _vehicleTypeUH60) then {_texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\c_4_ca.paa";};
        if (typeOf _vehicle in _vehicleTypeC130J) then {_texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\lc_4_ca.paa";};
    };
    case ("5"): {
        _texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\default_5_ca.paa";
        if (typeOf _vehicle in _vehicleTypeUH60) then {_texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\c_5_ca.paa";};
        if (typeOf _vehicle in _vehicleTypeC130J) then {_texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\lc_5_ca.paa";};
    };
    case ("6"): {
        _texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\default_6_ca.paa";
        if (typeOf _vehicle in _vehicleTypeUH60) then {_texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\c_6_ca.paa";};
        if (typeOf _vehicle in _vehicleTypeC130J) then {_texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\lc_6_ca.paa";};
    };
    case ("7"): {
        _texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\default_7_ca.paa";
        if (typeOf _vehicle in _vehicleTypeUH60) then {_texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\c_7_ca.paa";};
        if (typeOf _vehicle in _vehicleTypeC130J) then {_texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\lc_7_ca.paa";};
    };
    case ("8"): {
        _texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\default_8_ca.paa";
        if (typeOf _vehicle in _vehicleTypeUH60) then {_texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\c_8_ca.paa";};
        if (typeOf _vehicle in _vehicleTypeC130J) then {_texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\lc_8_ca.paa";};
    };
    case ("9"): {
        _texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\default_9_ca.paa";
        if (typeOf _vehicle in _vehicleTypeUH60) then {_texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\c_9_ca.paa";};
        if (typeOf _vehicle in _vehicleTypeC130J) then {_texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\lc_9_ca.paa";};
    };
    case ("0"): {
        _texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\default_0_ca.paa";
        if (typeOf _vehicle in _vehicleTypeUH60) then {_texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\c_0_ca.paa";};
        if (typeOf _vehicle in _vehicleTypeC130J) then {_texturePath = "\z\cav\addons\textures\data\vehicles\label\numbers\lc_0_ca.paa";};
    };

    // Symbols
    case ("LINE"): {
        _texturePath = "\z\cav\addons\textures\data\vehicles\label\symbols\c_line_ca.paa";
    };

    // Custom insignia
    /* case ("bancheeRed"): {
        _texturePath = "\z\cav\addons\textures\data\vehicles\label\insignia\BancheeRed_ca.paa";
    };
    case ("bancheeSand"): {
        _texturePath = "\z\cav\addons\textures\data\vehicles\label\insignia\BancheeSand_ca.paa";
    }; */

    // Special
    case ("STRYKER"): {
        _texturePath = "\z\cav\addons\textures\data\vehicles\label\special\stryker_ca.paa";
    };

    case ("VIC1"): {
        _texturePath = "\z\cav\addons\textures\data\vehicles\label\special\vic1_ca.paa";
    };
    case ("VIC2"): {
        _texturePath = "\z\cav\addons\textures\data\vehicles\label\special\vic2_ca.paa";
    };
    case ("VIC3"): {
        _texturePath = "\z\cav\addons\textures\data\vehicles\label\special\vic3_ca.paa";
    };
    case ("VIC4"): {
        _texturePath = "\z\cav\addons\textures\data\vehicles\label\special\vic4_ca.paa";
    };
    case ("VIC5"): {
        _texturePath = "\z\cav\addons\textures\data\vehicles\label\special\vic5_ca.paa";
    };
    case ("VIC6"): {
        _texturePath = "\z\cav\addons\textures\data\vehicles\label\special\vic6_ca.paa";
    };
};

_texturePath
