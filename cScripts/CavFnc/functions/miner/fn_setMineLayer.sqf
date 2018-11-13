#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 *  
 *
 * Arguments:
 * 0: Argument Name <OBJECT/BOOL/NUMBER/STRING/ARRAY/CODE> (Optional) (Default; MyDefaultValue)
 *
 * Return Value:
 * Return Name <BOOL/NUMBER/STRING>
 *
 * Example:
 * ["tankMcTank"] call cScripts_fnc_setMineLayer
 *
 * Public: Yes
 */

params[["_vehicle", objNull, [objNull]]];

if (!isNil{_vehicle getVariable QEGVAR(Vehicle,MineLayer)}) exitWith {[formatText["Mine Layer already applied for %1.", _vehicle]] call FUNC(logWarning);};

_vehicle setVariable [QEGVAR(Vehicle,MineMagazines), 6];
_vehicle setVariable [QEGVAR(Vehicle,MineClip), 8];

[
    _vehicle,
    "<t color='#ce1e2a'>Place Mine</t>",
    "\A3\ui_f\data\map\vehicleicons\iconExplosiveAT_ca.paa",
    "\A3\ui_f\data\map\vehicleicons\iconExplosiveAT_ca.paa",
    format ["((player isEqualTo commander objectParent player) && (_target getVariable 'cScripts_Vehicle_MineClip' > 0))", _mineClip],
    "true",
    {},
    {},
    {[(_this select 0), (_this select 2)] call FUNC(doMineDeploy)},
    {},
    [],
    1,
    25,
    false
] call BIS_fnc_holdActionAdd;


_vehicle addAction 
[
    "Reload mine magazine", 
    {
        params ["_target", "_caller", "_actionId", "_arguments"];
        [_target] call FUNC(doMineReload);
    },
    [],
    1.5, 
    true, 
    true, 
    "reloadMagazine",
    format ["((player isEqualTo commander objectParent player) && (_target getVariable 'cScripts_Vehicle_MineClip' == 0) && (_target getVariable 'cScripts_Vehicle_MineMagazines' > 0))", _mineClip, _mineMagazines],
    50,
    false,
    "",
    ""
];


// [
//     _vehicle,
//     "<t color='#104eb2'>Reload mine magazine</t>",
//     "\A3\ui_f\data\map\vehicleicons\iconExplosiveAT_ca.paa",
//     "\A3\ui_f\data\map\vehicleicons\iconExplosiveAT_ca.paa",
//     format ["((player isEqualTo commander objectParent player) && (_target getVariable 'cScripts_Vehicle_MineClip' = 0) && (_target getVariable 'cScripts_Vehicle_MineMagazines' > 0))", _mineClip, _mineMagazines],
//     "true",
//     {},
//     {},
//     {},
//     {},
//     [],
//     10,
//     25,
//     false
// ] call BIS_fnc_holdActionAdd;

_vehicle setVariable [QEGVAR(Vehicle,MineLayer),"true"];
