/*
 * Author: CPL.Brostrom.A
 * This scripts crate the 7th cavalry field hostpital.
 * It adds equipment and some optional selections to a given object.
 *
 * Arguments:
 * 0: Crate <OBJECT>
 * 1: Medical Facility <BOOL> (Default: true)
 * 2: Scale cargo ammount <NUMBER> (Default: 1)
 *
 * Example:
 * [this] call cScripts_fnc_doFieldHospital;
 * [this, true, 1] call cScripts_fnc_doFieldHospital;
 */

#include "..\script_component.hpp";

params [
    ["_object", objNull, [objNull]],
    ["_isFacility", true],
    ["_quaScale", 1]
];

// Make addAction Topic
_object addAction ["<img image='cScripts\Data\Icon\icon_00.paa' /> 7th Cavalry Field Hospital", {}];

if (_isFacility) then {
    _object setVariable ["ace_medical_isMedicalFacility", _isFacility, true];
};

if (isServer) then {
    _crate addItemCargoGlobal ["ACE_EarPlugs",(_quaScale * 25)];

    _crate addItemCargoGlobal ["ACE_FieldDressing",(_quaScale * 100)];
    _crate addItemCargoGlobal ["ACE_packingBandage",(_quaScale * 100)];
    _crate addItemCargoGlobal ["ACE_elasticBandage",(_quaScale * 100)];
    _crate addItemCargoGlobal ["ACE_quikclot",(_quaScale * 100)];

    _crate addItemCargoGlobal ["ACE_personalAidKit",(_quaScale * 50)];

    _crate addItemCargoGlobal ["ACE_salineIV",(_quaScale * 25)];
    _crate addItemCargoGlobal ["ACE_salineIV_500",(_quaScale * 25)];

    _crate addItemCargoGlobal ["ACE_morphine",(_quaScale * 25)];
    _crate addItemCargoGlobal ["ACE_epinephrine",(_quaScale * 25)];
    _crate addItemCargoGlobal ["ACE_adenosine",(_quaScale * 25)];
};

// Change ace logistics size of crate
[_crate, 1] remoteExec ["ace_cargo_fnc_setSize",0,true];
[_crate, true] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
[_crate, true] remoteExec ["ace_dragging_fnc_setCarryable",0,true];
