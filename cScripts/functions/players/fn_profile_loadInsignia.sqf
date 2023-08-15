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

// remove later
if (!isNil{profileNamespace getVariable [EGVAR(cav,insignia), nil]}) then {
    private _legacy = profileNamespace getVariable [EGVAR(cav,insignia), nil]
    profileNamespace setVariable [EGVAR(player,insignia), _legacy];
    profileNamespace setVariable [EGVAR(cav,insignia), nil];
};

private _insignia = profileNamespace getVariable [EGVAR(player,insignia), ""];

#ifdef DEBUG_MODE
    [format["%1 insignia '%2' obtained on profile variable...", player, _insignia], "PlayerProfile"] call FUNC(info);
#endif

_insignia