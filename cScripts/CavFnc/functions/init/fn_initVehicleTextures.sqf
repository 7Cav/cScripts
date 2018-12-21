#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function apply texture to vehilces.
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_initVehicleTextures
 *
 * Public: No
 */
#define DEBUG_MODE;

#ifdef DEBUG_MODE
    ["Setting up init Event Handlers to objects to handle textures..."] call FUNC(logInfo);
#endif

["B_Mortar_01_F", "init", {
    _this select 0 setObjectTextureGlobal [0,"cScripts\Data\Vehicles\McGehee\Mortar_McGehee_ceremonial_black.paa"];
}, true, [], true] call CBA_fnc_addClassEventHandler;

["B_G_Mortar_01_F", "init", {
    _this select 0 setObjectTextureGlobal [0,"cScripts\Data\Vehicles\McGehee\Mortar_McGehee_camo_Green.paa"];
}, true, [], true] call CBA_fnc_addClassEventHandler;

