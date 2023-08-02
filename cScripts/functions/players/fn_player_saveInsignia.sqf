#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function saves your selected insignia to your profile
 *
 * Arguments:
 * 0: InsigniaClassname
 *
 * Return Value:
 * True
 *
 * Example:
 * call cScripts_fnc_player_saveInsignia
 *
 * Public: No
 */

params [["_insignia", "", [""]]];

// remove later
if (!isNil{profileNamespace getVariable [EGVAR(cav,insignia), nil]}) then {
    profileNamespace setVariable [EGVAR(cav,insignia), nil];
};

#ifdef DEBUG_MODE
    [format["%1 insignia '%2' saved on profile variable...", player, _insignia], "PlayerProfile"] call FUNC(info);
#endif

private _map = profileNamespace getVariable [EGVAR(player,profile), createHashMap];
_map = _map set ["insignia", _insignia]
profileNamespace setVariable [EGVAR(player,profile), _map];