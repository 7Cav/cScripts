#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function apply abilities to a player based on config entries
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
    "_config"
];

private _abilityMedicLevel    = getNumber (_config >> "abilityMedic");
private _abilityEngineerLevel = getNumber (_config >> "abilityEngineer");
private _abilityEOD           = getNumber (_config >> "abilityEOD");

// Set Medic ability
private _isMedic = (_abilityMedicLevel > 0);
_unit setVariable ["ACE_medical_medicClass", _abilityMedicLevel, _isMedic];
_unit setUnitTrait ["medic", _isMedic];

// Set Engineer ability
private _isEngineer = (_abilityEngineerLevel > 0);
_unit setVariable ["ACE_isEngineer", _abilityEngineerLevel, _isEngineer];
_unit setUnitTrait ["engineer", _isEngineer];

// Set EOD ability
private _isEOD = (_abilityEOD > 0);
_unit setVariable ["ACE_isEOD", _isEOD, _isEOD];
_unit setUnitTrait ["explosiveSpecialist", _isEOD];

_unit setVariable [QEGVAR(Player,Abilities), [["Medic", _abilityMedicLevel, _isMedic], ["Engineer", _abilityEngineerLevel, _isEngineer], ["EOD", _isEOD, _isEOD]]];
