//call {if (count thislist > 0) then {{if (alive _x && _x isKindOf "Man") then {if !(_x call cScripts_fnc_hasGasProtection) then {[_x] call cScripts_fnc_doGasDamaged;}}} forEach thislist};false}

params ["_unit"];

_takenDamage = [_unit, 0.05, "body", "gas"] call ace_medical_fnc_addDamageToUnit;
//[5, true] call ace_common_fnc_blurScreen;
[_unit, 0.6] call ace_medical_fnc_adjustPainLevel;

//[{[5, false] call ace_common_fnc_blurScreen;}, [], 10] call CBA_fnc_waitAndExecute;