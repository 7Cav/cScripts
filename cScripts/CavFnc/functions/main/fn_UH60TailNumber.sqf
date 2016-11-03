/*
 * Author: CPL.Brostrom.A 
 * Blub
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 * 1: 
 *
 * Example:
 * [this,"b1"] call cScripts_fnc_UH60TailNumber;
 * [this,"b2"] call cScripts_fnc_UH60TailNumber;
 */

if (!isServer) exitWith {};
params [["_vehicle", objNull, [objNull]],"_numberLable","_logoFirst","_logoSecond"];

switch (_numberLable) do {
    case "b1": {
        _logoFirst = "UserTexture1m_F" createVehicle [0,0,0];
        _logoFirst attachTo [_vehicle,[-0.49,-2.45,-1.3]]; 
        _logoFirst setDir 87;
        _logoFirst setObjectTextureGlobal [0, "cScripts\Data\Vehicles\Insignia\B1.paa"];

        _logoSecond = "UserTexture1m_F" createVehicle [0,0,0];
        _logoSecond attachTo [_vehicle,[0.49,-2.45,-1.3]]; 
        _logoSecond setDir -87;
        _logoSecond setObjectTextureGlobal [0, "cScripts\Data\Vehicles\Insignia\B1.paa"];
    };
    case "b2": {
        _logoFirst = "UserTexture1m_F" createVehicle [0,0,0];
        _logoFirst attachTo [_vehicle,[-0.49,-2.45,-1.3]]; 
        _logoFirst setDir 87;
        _logoFirst setObjectTextureGlobal [0, "cScripts\Data\Vehicles\Insignia\B2.paa"];

        _logoSecond = "UserTexture1m_F" createVehicle [0,0,0];
        _logoSecond attachTo [_vehicle,[0.49,-2.45,-1.3]]; 
        _logoSecond setDir -87;
        _logoSecond setObjectTextureGlobal [0, "cScripts\Data\Vehicles\Insignia\B2.paa"];
    };
    case "b3": {
        _logoFirst = "UserTexture1m_F" createVehicle [0,0,0];
        _logoFirst attachTo [_vehicle,[-0.49,-2.45,-1.3]]; 
        _logoFirst setDir 87;
        _logoFirst setObjectTextureGlobal [0, "cScripts\Data\Vehicles\Insignia\B3.paa"];

        _logoSecond = "UserTexture1m_F" createVehicle [0,0,0];
        _logoSecond attachTo [_vehicle,[0.49,-2.45,-1.3]]; 
        _logoSecond setDir -87;
        _logoSecond setObjectTextureGlobal [0, "cScripts\Data\Vehicles\Insignia\B3.paa"];
    };
    case "b4": {
        _logoFirst = "UserTexture1m_F" createVehicle [0,0,0];
        _logoFirst attachTo [_vehicle,[-0.49,-2.45,-1.3]]; 
        _logoFirst setDir 87;
        _logoFirst setObjectTextureGlobal [0, "cScripts\Data\Vehicles\Insignia\B4.paa"];

        _logoSecond = "UserTexture1m_F" createVehicle [0,0,0];
        _logoSecond attachTo [_vehicle,[0.49,-2.45,-1.3]]; 
        _logoSecond setDir -87;
        _logoSecond setObjectTextureGlobal [0, "cScripts\Data\Vehicles\Insignia\B4.paa"];
    };
    case "b5": {
        _logoFirst = "UserTexture1m_F" createVehicle [0,0,0];
        _logoFirst attachTo [_vehicle,[-0.49,-2.45,-1.3]]; 
        _logoFirst setDir 87;
        _logoFirst setObjectTextureGlobal [0, "cScripts\Data\Vehicles\Insignia\B5.paa"];

        _logoSecond = "UserTexture1m_F" createVehicle [0,0,0];
        _logoSecond attachTo [_vehicle,[0.49,-2.45,-1.3]]; 
        _logoSecond setDir -87;
        _logoSecond setObjectTextureGlobal [0, "cScripts\Data\Vehicles\Insignia\B5.paa"];
    };
};