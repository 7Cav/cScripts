#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function return your profile saved insignia
 *
 * Arguments:
 * Nothing
 *
 * Return Value:
 * Classname of insignia
 *
 * Example:
 * call cScripts_fnc_profile_loadInsignia
 *
 * Public: No
 */

if (!GVAR(isPlayer)) exitWith {""};

// TODO: Legacy handler, remove later
if (!isNil{profileNamespace getVariable [QEGVAR(Cav,Insignia), nil];}) then {
    private _legacy = profileNamespace getVariable [QEGVAR(Cav,Insignia), nil];
    // Save New 
    profileNamespace setVariable [QEGVAR(Profile,Insignia), _legacy];
    // Remove Legacy
    profileNamespace setVariable [QEGVAR(Cav,Insignia), nil];
};

private _insignia = GETPRVAR(EGVAR(Profile,Insignia), "");

INFO_2("PlayerProfile", "%1 insignia '%2' obtained on profile variable...", player, _insignia);

_insignia