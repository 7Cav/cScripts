#include "..\script_component.hpp"
params ["_unit", "_array"];

// ACRE and TFAR replace the radios on their own.
if (GVAR(usesACRE) || {GVAR(usesTFAR)}) exitWith {};

private _radio = selectRandom _array;
_unit unlinkItem "ItemRadio";
if (_radio != "") then {
    _unit linkItem _radio;
};
