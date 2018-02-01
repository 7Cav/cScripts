/*
 * Author: CPL.Brostrom.A
 * This function is used to handle player premissions
 *
 * Arguments:
 * 0: Player <STRING>
 * 1: Platoon <STRING>
 * 2: MedicClass <NUMBER>             (Default: 0)
 * 3: Engineer <BOOL>                 (Default: false)
 * 4: Translator Languish  <STRING>   (Optional)    NOT IMPLEMENTED
 *
 * Example:
 * [this] call cScripts_fnc_setPreInitPlayerSettings;
 * [this, "charlie"] call cScripts_fnc_setPreInitPlayerSettings;
 * [this, "charlie",0,false,""] call cScripts_fnc_setPreInitPlayerSettings;
 */

#include "..\script_component.hpp";

INFO("Applying PreLoadout Player Settings");

params [
    ["_player",""],
    ["_setPlatoon",""],
    ["_isMedicClass", 0],
    ["_isEngineer", false]
    //["_translator",""]    Not implemented
];

// Set platoonVariables
private _platoonAlpha = if (_setPlatoon == "alpha") then {true} else {false};
private _platoonBravo = if (_setPlatoon == "bravo") then {true} else {false};
private _platoonCharlie = if (_setPlatoon == "charlie") then {true} else {false};
private _platoonRanger = if (_setPlatoon == "ranger") then {true} else {false};
private _platoonMedical = if (_setPlatoon == "medical") then {true} else {false};
private _platoonTraining = if (_setPlatoon == "training") then {true} else {false};
private _platoonS3 = if (_setPlatoon == "s3") then {true} else {false};

(_player) setVariable ["CAV_isCavTrooper", true];
(_player) setVariable ["CAV_isAlphaUnit", _platoonAlpha];
(_player) setVariable ["CAV_isBravoUnit", _platoonBravo];
(_player) setVariable ["CAV_isCharlieUnit", _platoonCharlie];
(_player) setVariable ["CAV_isRangerUnit", _platoonRanger];
(_player) setVariable ["CAV_isMedicalUnit", _platoonMedical];
(_player) setVariable ["CAV_isTrainingUnit", _platoonTraining];
(_player) setVariable ["CAV_isS3Unit", _platoonS3];

// Set MedicClass
private _MedicClass = if (_isMedicClass > 1) then {true} else {false};
(_player) setVariable ["ACE_medical_medicClass", _isMedicClass, _MedicClass];

// Set Engineer
(_player) setVariable ["ACE_isEngineer", _isEngineer];

INFO("Done Applying PreLoadout Player Settings");
