#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function return your company
 *
 * Arguments:
 * None
 *
 * Return Value:
 * CompanyName or Empty
 *
 * Example:
 * call cScripts_fnc_player_getCompany;
 *
 * Public: No
 */

private _company = ["company"] call EFUNC(getData);
_company = toLower _company;

_company