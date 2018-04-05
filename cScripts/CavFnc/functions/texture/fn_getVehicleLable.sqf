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
 * Public: No
 */

params [["_texturePath", ""]];

switch (_texturePath) do {

    // Letters
    case ("A"): {
        _texturePath = "cScripts\Data\Vehicles\letters\A.paa";
    };
    case ("B"): {
        _texturePath = "cScripts\Data\Vehicles\letters\B.paa";
    };
    case ("C"): {
        _texturePath = "cScripts\Data\Vehicles\letters\C.paa";
    };
    case ("S"): {
        _texturePath = "cScripts\Data\Vehicles\letters\S.paa";
    };

    // Numbers
    case ("1"): {
        _texturePath = "cScripts\Data\Vehicles\numbers\1.paa";
    };
    case ("2"): {
        _texturePath = "cScripts\Data\Vehicles\numbers\2.paa";
    };
    case ("3"): {
        _texturePath = "cScripts\Data\Vehicles\numbers\3.paa";
    };
    case ("4"): {
        _texturePath = "cScripts\Data\Vehicles\numbers\4.paa";
    };
    case ("5"): {
        _texturePath = "cScripts\Data\Vehicles\numbers\5.paa";
    };
    case ("6"): {
        _texturePath = "cScripts\Data\Vehicles\numbers\6.paa";
    };
    case ("7"): {
        _texturePath = "cScripts\Data\Vehicles\numbers\7.paa";
    };
    case ("8"): {
        _texturePath = "cScripts\Data\Vehicles\numbers\8.paa";
    };
    case ("9"): {
        _texturePath = "cScripts\Data\Vehicles\numbers\9.paa";
    };
    case ("0"): {
        _texturePath = "cScripts\Data\Vehicles\numbers\0.paa";
    };

    // Symbols
    case ("line"): {
        _texturePath = "cScripts\Data\Vehicles\symbols\line.paa";
    };

    // Custom insignia
    /* case ("bancheeRed"): {
        _texturePath = "cScripts\Data\Vehicles\insignia\BancheeRed.paa";
    };
    case ("bancheeSand"): {
        _texturePath = "cScripts\Data\Vehicles\insignia\BancheeSand.paa";
    };
    case ("guidon"): {
        _texturePath = "cScripts\Data\Vehicles\insignia\Guidon.paa";
    };
    case ("v1"): {
        _texturePath = "cScripts\Data\Vehicles\insignia\Vic1.paa";
    }; */

    // Special
    case ("stryker"): {
        _texturePath = "cScripts\Data\Vehicles\special\stryker.paa";
    };
};

_texturePath
