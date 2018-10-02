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
    "RHS_UH60M_MEV"
];
private _vehicleTypeC130J = [
    "RHS_C130J"
];

switch (_texturePath) do {

    // Letters
    case ("A"): {
        _texturePath = "cScripts\Data\Vehicles\letters\default_A_ca.paa";
        if (typeOf _vehicle in _vehicleTypeUH60) then {_texturePath = "cScripts\Data\Vehicles\letters\c_A_ca.paa";};
    };
    case ("B"): {
        _texturePath = "cScripts\Data\Vehicles\letters\default_B_ca.paa";
        if (typeOf _vehicle in _vehicleTypeUH60) then {_texturePath = "cScripts\Data\Vehicles\letters\c_B_ca.paa";};
    };
    case ("C"): {
        _texturePath = "cScripts\Data\Vehicles\letters\default_C_ca.paa";
        if (typeOf _vehicle in _vehicleTypeUH60) then {_texturePath = "cScripts\Data\Vehicles\letters\c_C_ca.paa";};
    };
    case ("S"): {
        _texturePath = "cScripts\Data\Vehicles\letters\default_D_ca.paa";
        if (typeOf _vehicle in _vehicleTypeUH60) then {_texturePath = "cScripts\Data\Vehicles\letters\c_S_ca.paa";};
    };

    // Numbers
    case ("1"): {
        _texturePath = "cScripts\Data\Vehicles\numbers\default_1_ca.paa";
        if (typeOf _vehicle in _vehicleTypeUH60) then {_texturePath = "cScripts\Data\Vehicles\numbers\c_1_ca.paa";};
        if (typeOf _vehicle in _vehicleTypeC130J) then {_texturePath = "cScripts\Data\Vehicles\numbers\lc_1_ca.paa";};
    };
    case ("2"): {
        _texturePath = "cScripts\Data\Vehicles\numbers\default_2_ca.paa";
        if (typeOf _vehicle in _vehicleTypeUH60) then {_texturePath = "cScripts\Data\Vehicles\numbers\c_2_ca.paa";};
        if (typeOf _vehicle in _vehicleTypeC130J) then {_texturePath = "cScripts\Data\Vehicles\numbers\lc_2_ca.paa";};
    };
    case ("3"): {
        _texturePath = "cScripts\Data\Vehicles\numbers\default_3_ca.paa";
        if (typeOf _vehicle in _vehicleTypeUH60) then {_texturePath = "cScripts\Data\Vehicles\numbers\c_3_ca.paa";};
        if (typeOf _vehicle in _vehicleTypeC130J) then {_texturePath = "cScripts\Data\Vehicles\numbers\lc_3_ca.paa";};
    };
    case ("4"): {
        _texturePath = "cScripts\Data\Vehicles\numbers\default_4_ca.paa";
        if (typeOf _vehicle in _vehicleTypeUH60) then {_texturePath = "cScripts\Data\Vehicles\numbers\c_4_ca.paa";};
        if (typeOf _vehicle in _vehicleTypeC130J) then {_texturePath = "cScripts\Data\Vehicles\numbers\lc_4_ca.paa";};
    };
    case ("5"): {
        _texturePath = "cScripts\Data\Vehicles\numbers\default_5_ca.paa";
        if (typeOf _vehicle in _vehicleTypeUH60) then {_texturePath = "cScripts\Data\Vehicles\numbers\c_5_ca.paa";};
        if (typeOf _vehicle in _vehicleTypeC130J) then {_texturePath = "cScripts\Data\Vehicles\numbers\lc_5_ca.paa";};
    };
    case ("6"): {
        _texturePath = "cScripts\Data\Vehicles\numbers\default_6_ca.paa";
        if (typeOf _vehicle in _vehicleTypeUH60) then {_texturePath = "cScripts\Data\Vehicles\numbers\c_6_ca.paa";};
        if (typeOf _vehicle in _vehicleTypeC130J) then {_texturePath = "cScripts\Data\Vehicles\numbers\lc_6_ca.paa";};
    };
    case ("7"): {
        _texturePath = "cScripts\Data\Vehicles\numbers\default_7_ca.paa";
        if (typeOf _vehicle in _vehicleTypeUH60) then {_texturePath = "cScripts\Data\Vehicles\numbers\c_7_ca.paa";};
        if (typeOf _vehicle in _vehicleTypeC130J) then {_texturePath = "cScripts\Data\Vehicles\numbers\lc_7_ca.paa";};
    };
    case ("8"): {
        _texturePath = "cScripts\Data\Vehicles\numbers\default_8_ca.paa";
        if (typeOf _vehicle in _vehicleTypeUH60) then {_texturePath = "cScripts\Data\Vehicles\numbers\c_8_ca.paa";};
        if (typeOf _vehicle in _vehicleTypeC130J) then {_texturePath = "cScripts\Data\Vehicles\numbers\lc_8_ca.paa";};
    };
    case ("9"): {
        _texturePath = "cScripts\Data\Vehicles\numbers\default_9_ca.paa";
        if (typeOf _vehicle in _vehicleTypeUH60) then {_texturePath = "cScripts\Data\Vehicles\numbers\c_9_ca.paa";};
        if (typeOf _vehicle in _vehicleTypeC130J) then {_texturePath = "cScripts\Data\Vehicles\numbers\lc_9_ca.paa";};
    };
    case ("0"): {
        _texturePath = "cScripts\Data\Vehicles\numbers\default_0_ca.paa";
        if (typeOf _vehicle in _vehicleTypeUH60) then {_texturePath = "cScripts\Data\Vehicles\numbers\c_0_ca.paa";};
        if (typeOf _vehicle in _vehicleTypeC130J) then {_texturePath = "cScripts\Data\Vehicles\numbers\lc_0_ca.paa";};
    };

    // Symbols
    case ("LINE"): {
        _texturePath = "cScripts\Data\Vehicles\symbols\c_line_ca.paa";
    };

    // Custom insignia
    /* case ("bancheeRed"): {
        _texturePath = "cScripts\Data\Vehicles\insignia\BancheeRed_ca.paa";
    };
    case ("bancheeSand"): {
        _texturePath = "cScripts\Data\Vehicles\insignia\BancheeSand_ca.paa";
    }; */

    // Special
    case ("STRYKER"): {
        _texturePath = "cScripts\Data\Vehicles\special\stryker_ca.paa";
    };

    case ("VIC1"): {
        _texturePath = "cScripts\Data\Vehicles\special\vic1_ca.paa";
    };
    case ("VIC2"): {
        _texturePath = "cScripts\Data\Vehicles\special\vic2_ca.paa";
    };
    case ("VIC3"): {
        _texturePath = "cScripts\Data\Vehicles\special\vic3_ca.paa";
    };
    case ("VIC4"): {
        _texturePath = "cScripts\Data\Vehicles\special\vic4_ca.paa";
    };
    case ("VIC5"): {
        _texturePath = "cScripts\Data\Vehicles\special\vic5_ca.paa";
    };
    case ("VIC6"): {
        _texturePath = "cScripts\Data\Vehicles\special\vic6_ca.paa";
    };
};

_texturePath
