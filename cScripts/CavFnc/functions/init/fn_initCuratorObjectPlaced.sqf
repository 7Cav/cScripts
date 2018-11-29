#include "..\script_component.hpp";
/*
 * Author: SSG.Argus.J, CPL.Brostrom.A
 * This function adds a jump out action to a curator spawned C130.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_initCuratorObjectPlaced
 *
 * Public: No
 */

#ifdef DEBUG_MODE
    [format["Executing Curator Object Placed event handler."]] call FUNC(logInfo);
#endif

{
    GVAR(Curator_EventHandler) = _x addEventHandler ["CuratorObjectPlaced", {
        private _entity = _this select 1;

        private _plane = ["RHS_C130J"];
        if ((typeOf _entity) in _plane) then {
            [_entity] call FUNC(addJump);
        };

        private _helo = [ "B_Heli_Transport_01_F", "B_CTRG_Heli_Transport_01_sand_F", "B_CTRG_Heli_Transport_01_tropic_F", "O_Heli_Light_02_unarmed_F", "O_Heli_Light_02_dynamicLoadout_F", "I_Heli_light_03_dynamicLoadout_F", "I_Heli_light_03_unarmed_F", "RHS_UH60M_MEV_d", "RHS_UH60M_MEV2_d", "RHS_UH60M2_d", "RHS_UH60M_ESSS_d", "RHS_UH60M_ESSS2_d", "RHS_UH60M_d", "RHS_UH60M", "RHS_UH60M_ESSS", "RHS_UH60M_ESSS2", "RHS_UH60M2", "RHS_UH60M_MEV2", "RHS_UH60M_MEV", "RHS_UH1Y_FFAR_d", "RHS_UH1Y_d", "RHS_UH1Y_UNARMED_d", "RHS_UH1Y_FFAR", "RHS_UH1Y", "RHS_UH1Y_UNARMED", "rhs_uh1h_hidf", "rhs_uh1h_hidf_gunship", "rhs_uh1h_hidf_unarmed"];
        if ((typeOf _entity) in _helo) then {
            [_entity] call FUNC(addGetOutHelo);
        };

        private _mortarA = ["B_Mortar_01_F"];
        if ((typeOf _entity) in _mortarA) then {
            _entity setObjectTextureGlobal  [0,"cScripts\Data\Vehicles\McGehee\Mortar_McGehee_ceremonial_black.paa"];
        };

        private _mortarB = ["B_G_Mortar_01_F"];
        if ((typeOf _entity) in _mortarB) then {
            _entity setObjectTextureGlobal  [0,"cScripts\Data\Vehicles\McGehee\Mortar_McGehee_camo_Green.paa"];
        };
    }];
} forEach allCurators;
