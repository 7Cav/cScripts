#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function applies abilities to a player based on unit loadout or classname
 *
 * Arguments:
 * 0: Unit <OBJECT>
 * 1: Config <CONFIG>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [player, (missionConfigFile >> "CfgLoadouts" >> "Cav_B_B_Atlas_Medic_TeamLeader_F")] call cScripts_fnc_gear_applyAbilities
 *
 */

params [
    ["_unit", objNull, [objNull]],
    ["_config", configNull, [configNull]]
];

private _abilityMedicLevel    = getNumber (_config >> "abilityMedic");
private _abilityEngineerLevel = getNumber (_config >> "abilityEngineer");
private _abilityEOD           = getNumber (_config >> "abilityEOD");


// Set Medic ability
private _isMedic = (_abilityMedicLevel > 0);
_unit setVariable ["ACE_medical_medicClass", _abilityMedicLevel, true];
_unit setUnitTrait ["medic", _isMedic];


// Set Engineer ability
private _isEngineer = (_abilityEngineerLevel > 0);
_unit setVariable ["ACE_isEngineer", _abilityEngineerLevel, true];
_unit setUnitTrait ["engineer", _isEngineer];


// Set EOD ability
private _isEOD = (_abilityEOD > 0);
_unit setVariable ["ACE_isEOD", _isEOD, true];
_unit setUnitTrait ["explosiveSpecialist", _isEOD];

[[abilityMedic, [_abilityMedicLevel, _isMedic]]] call EFUNC(player,setData);
[[abilityEngineer, [_abilityEngineerLevel, _isEngineer]]] call EFUNC(player,setData);
[[abilityEOD, [_isEOD, _isEOD]]] call EFUNC(player,setData);
