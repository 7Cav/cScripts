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
 * call cScripts_fnc_profile_saveInsignia
 *
 * Public: No
 */

params [["_insignia", "", [""]]];

if (!GVAR(isPlayer)) exitWith {};

// remove later
if (!isNil{profileNamespace getVariable [QEGVAR(Profile,Insignia), nil]}) then {
    profileNamespace setVariable [QEGVAR(Profile,Insignia), nil];
};

INFO_2("PlayerProfile", %1 insignia '%2' saved on profile variable...", player, _insignia);

private _map = profileNamespace getVariable [EGVAR(player,profile), createHashMap];
_map = _map set ["insignia", _insignia]
profileNamespace setVariable [EGVAR(player,profile), _map];