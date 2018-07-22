/*
 * Author: SSG.Argus.J
 * This function adds a get out right and left on all curator spawned helicopters.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_initCuratorHeloGetOutRL
 *
 */

#include "..\script_component.hpp";

{
    addHeloGetOut = _x addEventHandler ["CuratorObjectPlaced", {
        private _helo = ["RHS_UH60M_MEV_d","RHS_UH60M_MEV2_d","RHS_UH60M2_d","RHS_UH60M_ESSS_d","RHS_UH60M_ESSS2_d","RHS_UH60M_d","RHS_UH60M","RHS_UH60M_ESSS","RHS_UH60M_ESSS2","RHS_UH60M2","RHS_UH60M_MEV2","RHS_UH60M_MEV","RHS_UH1Y_FFAR_d","RHS_UH1Y_d","RHS_UH1Y_UNARMED_d","RHS_UH1Y_FFAR","RHS_UH1Y","RHS_UH1Y_UNARMED","B_Heli_Transport_01_F"];
        private _entity = _this select 1;
        if ((typeOf _entity) in _helo) then {
            [_entity] call FUNC(addGetOutHelo);
        };
    }];
} forEach allCurators;
