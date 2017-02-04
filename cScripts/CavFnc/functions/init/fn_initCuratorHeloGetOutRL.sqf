/*
 * Author: SSG.Argus.J
 * This fuction is executed to give all helicopters on curator placement to aply FRIES to all helos.
 *
 * Arguments:
 *
 * Example:
 * call cScripts_fnc_initCuratorHeloGetOutRL;
 */

#include "..\script_component.hpp";
{
    addHeloGetOut = _x addEventHandler ["CuratorObjectPlaced", {
        _helo = ["RHS_UH60M","RHS_UH60M_MEV","RHS_UH60M_MEV2","RHS_UH60M_d","RHS_UH60M_MEV_d","RHS_UH60M_MEV2_d","B_Heli_Transport_01_F","B_Heli_Transport_01_camo_F","RHS_UH1Y","RHS_UH1Y_FFAR","RHS_UH1Y_GS","RHS_UH1Y_UNARMED","RHS_UH1Y_d","RHS_UH1Y_FFAR_d","RHS_UH1Y_d_GS","RHS_UH1Y_UNARMED_d"];
        _entity = _this select 1;
        if ((typeOf _entity) in _helo) then {
            [_entity] call FUNC(addGetOutHelo);
        };
    }];
} forEach allCurators;