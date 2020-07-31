#include "..\script_component.hpp";
/*
 * Author: BaerMitUmlaut, CPL.Brostrom.A
 * This function apply abilities to a player based on config entries
 *
 * Arguments:
 * 0: Unit <OBJECT>
 * 1: Loadout <STRING / ARRAY>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * [player, "B_Soldier_F"] call cScripts_fnc_applyAbilities
 *
 */

params [
    ["_unit", objNull, [objNull]],
    "_config"
];

if (_unit getVariable QEGVAR(Gear,Loadout) == QEGVAR(Gear,SavedArsenalLoadout)) exitWith {};


private _abilityMedicLevel    = _config >> "abilityMedic";
private _abilityEngineerLevel = _config >> "abilityEngineer";
private _abilityEOD           = _config >> "abilityEOD";

private _loadMedicConfig    = _abilityMedicLevel isEqualType 0;
private _loadEngineerConfig = _abilityEngineerLevel isEqualType 0;
private _loadEODConfig      = _abilityEngineerLevel isEqualType 0;

// Set medic ability
if (_loadMedicConfig) then {
    private _isMedic = _abilityMedicLevel >= 1;
    _unit setVariable ["ACE_medical_medicClass", _abilityMedicLevel, _isMedic];
    _unit setUnitTrait ["medic", _isMedic]
};

// Set engineer ability
if (_loadEngineerConfig) then {
    private _isEngineer = _abilityEngineerLevel >= 1;
    _unit setVariable ["ACE_medical_medicClass", _abilityEngineerLevel, _isEngineer];
    _unit setUnitTrait ["medic", _isEngineer]
};

// Set eod ability
if (_loadEngineerConfig) then {
    private _isEOD = _loadEODConfig >= 1;
    _unit setVariable ["ACE_isEOD", _isEOD];
};

// Immortal
if (EGVAR(Settings,curatorImmortality)) then {
    //_unit allowDamage false;
};