/*
 * Author: Waldie.A
 * This function adds a jump out action to a curator spawned mk6 mortar.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_initCuratorMk6Mortar
 */

#include "..\script_component.hpp";

#ifdef DEBUG_MODE
    ["Applying CuratorObjectPlaced EH to Curator to handle C130 settings application."] call FUNC(logInfo);
#endif

/*Curator texturing of the mk6 mortar in honour of McGehee - Waldie.A & Brostrom
B_Mortar_01_F = NATO MORTAR, B_G_Mortar_01_F = FIA MORTAR*/
{
    addMortarTexture = _x addEventHandler ["CuratorObjectPlaced", {
        private _veh = ["B_Mortar_01_F"];
        private _entity = _this select 1;
        if ((typeOf _entity) in _veh) then {
            _entity setObjectTextureGlobal  [0,"cScripts\Data\Vehicles\McGehee\Mortar_McGehee_ceremonial_black.paa"];
        };
    }];
} forEach allCurators;

{
    addMortarTexture = _x addEventHandler ["CuratorObjectPlaced", {
        private _veh = ["B_G_Mortar_01_F"];
        private _entity = _this select 1;
        if ((typeOf _entity) in _veh) then {
            _entity setObjectTextureGlobal  [0,"cScripts\Data\Vehicles\McGehee\Mortar_McGehee_camo_Green.paa"];
        };
    }];
} forEach allCurators;
