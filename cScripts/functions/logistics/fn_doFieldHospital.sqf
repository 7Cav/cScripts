#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A, SPC.Turn.J
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

params [
    ["_crate", objNull, [objNull]],
    ["_isFacility", true]
];

INFO("", "Field Hostiptal applied to %1.", _crate);

// Make addAction Topic
_crate addAction ["<img image='cScripts\Data\Icon\icon_00.paa' /> 7th Cavalry Field Hospital", {}, [], 1.5, true, true, "", "true", 5];

if (_isFacility) then {
    _crate setVariable ["ace_medical_isMedicalFacility", true, true];
};

// If isServer add medical equipment
if (isServer) then {
    private _crateContent = ["atlas"] call FUNC(getMedicalCrate);
    [_crate, _crateContent] call FUNC(setCargo);
};

// Change ace logistics size of crate
[_crate, 1] remoteExec ["ace_cargo_fnc_setSize",0,true];
[_crate, true] remoteExec ["ace_dragging_fnc_setDraggable",0,true];
[_crate, true] remoteExec ["ace_dragging_fnc_setCarryable",0,true];
