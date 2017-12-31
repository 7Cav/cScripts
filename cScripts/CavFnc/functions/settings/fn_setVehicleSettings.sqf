/*
 * Author: CPL.Brostrom.A
 * This
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Lable <INTERGER> (Optinal)
 *
 * Example:
 *
 */

 if (!isServer) exitwith {};

private _helo = ["RHS_UH60M_MEV_d","RHS_UH60M_MEV2_d","RHS_UH60M2_d","RHS_UH60M_ESSS_d","RHS_UH60M_ESSS2_d","RHS_UH60M_d","RHS_UH60M","RHS_UH60M_ESSS","RHS_UH60M_ESSS2","RHS_UH60M2","RHS_UH60M_MEV2","RHS_UH60M_MEV","RHS_UH1Y_FFAR_d","RHS_UH1Y_d","RHS_UH1Y_UNARMED_d","RHS_UH1Y_FFAR","RHS_UH1Y","RHS_UH1Y_UNARMED","B_Heli_Transport_01_F"];

switch (true) do {
    case (typeOf _vehicle in _helo): {
        [(_this select 0)] call FUNC(addGetOutHelo);
    };
};
