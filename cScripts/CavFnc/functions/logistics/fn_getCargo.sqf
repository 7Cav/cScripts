#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function return a array of items.
 *
 * Arguments:
 * 0: Container <STRING>
 *
 * Return Value:
 * ARRAY of items
 *
 * Example:
 * ["crateType"] call cScripts_fnc_getCargo;
 */

params [["_type", "", [""]]];

_type = toLower(_type);

private _return = switch (_type) do {
    case "ammo": { [
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG", 20],
        ["rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red", 12]
    ];};
    case "vehicleDefault": { [
        ["ACE_Chemlight_HiRed", 3],
        ["ACE_Chemlight_HiBlue", 3]
    ];};
    default {[]};
};

_return