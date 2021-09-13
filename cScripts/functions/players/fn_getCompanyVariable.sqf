#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * Show you your current company variable.
 *
 * Arguments:
 * none
 *
 * Return Value:
 * player company variable <STRING>
 *
 * Example:
 * [player] call cScripts_fnc_getCompanyVariable
 *
 */

player getVariable [QEGVAR(Cav,Company), "none"];
