#include "..\script_component.hpp";
/*
 * Author: AR.Zlobin.N, 1LT.Sweetwater.I
 * This module function add object to Alive
 * Grants unit authorization to speak to civilians
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Example:
 * bob call cScripts_fnc_moduleAddToAlive
 *
 * Public: No
 */

params ["_unit"];

_unit = [_logic, false] call Ares_fnc_GetUnitUnderCursor;

if (_unit isKindOf "Man") then {
    private _unitID = getPlayerUID _unit;
    private _oldAuthorized = [ALiVE_civInteractHandler, "authorized", []] call ALiVE_fnc_hashGet;
    private _newAuthorized = [_unitID,true] call ALiVE_fnc_stringListToArray;
    _oldAuthorized pushBack _newAuthorized;
    [ALiVE_civInteractHandler, "authorized", _authorized] call ALiVE_fnc_hashSet;
};
private _res = [ALiVE_civInteractHandler, "authorized", []] call ALiVE_fnc_hashGet;
hint format ["Authorized: %1", _res];
