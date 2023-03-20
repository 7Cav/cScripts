#include "..\script_component.hpp";
/*
 * Author: BaerMitUmlaut
 * This function make sure that postInit is run unsceduled.
 *
 * Arguments:
 * none
 *
 * Return Value:
 * nothing
 *
 * Example:
 * call cScripts_fnc_gear_postInitProxy
 *
 */

EFUNC(gear,postInit) call CBA_fnc_directCall;
