/*
 * Author: CPL.Brostrom.A
 * This function is used to handle player premissions
 *
 * Arguments:
 * 0: Player <STRING>
 * 1: Platoon <STRING>
 * 2: MedicClass <NUMBER>             (Default: 0)
 * 3: Engineer <BOOL>                 (Default: false)
 * 4: Translator Languish  <STRING>   (Optional)
 *
 * Example:
 * [this] call cScripts_fnc_setPreInitPlayerSettings;
 * [this, "charlie"] call cScripts_fnc_setPreInitPlayerSettings;
 * [this, "charlie",0,false,""] call cScripts_fnc_setPreInitPlayerSettings;
 */

#include "..\script_component.hpp";

params [
    ["_player",""],
    ["_platoon",""],
    ["_isMedicClass", 0],
    ["_isEngineer", false],
    ["_translator",""]
];

// Set platoonVariables
private _platoonAlpha = if (_platoon == "alpha") then {true} else {false};
private _platoonBravo = if (_platoon == "bravo") then {true} else {false};
private _platoonCharlie = if (_platoon == "charlie") then {true} else {false};
private _platoonRanger = if (_platoon == "ranger") then {true} else {false};
private _platoonMedical = if (_platoon == "medical") then {true} else {false};
private _platoonS3 = if (_platoon == "s3") then {true} else {false};

(_player) setVariable ["CAV_isCavTrooper", true];
(_player) setVariable ["CAV_isAlphaUnit", _platoonAlpha];
(_player) setVariable ["CAV_isBravoUnit", _platoonBravo];
(_player) setVariable ["CAV_isCharlieUnit", _platoonCharlie];
(_player) setVariable ["CAV_isRangerUnit", _platoonRanger];
(_player) setVariable ["CAV_isMedicalUnit", _platoonMedical];
(_player) setVariable ["CAV_isS3Unit", _platoonS3];

// Set cav native tough langish and secondary if any
switch (_translator) do {
    case "gr": {
        ["en","gr"] call acre_api_fnc_babelSetSpokenLanguages;
        ["en"] call acre_api_fnc_babelSetSpeakingLanguage;
    };
    case "fr": {
        ["en","fr"] call acre_api_fnc_babelSetSpokenLanguages;
        ["en"] call acre_api_fnc_babelSetSpeakingLanguage;
    };
    case "ru": {
        ["en","ru"] call acre_api_fnc_babelSetSpokenLanguages;
        ["en"] call acre_api_fnc_babelSetSpeakingLanguage;
    };
    case "fr": {
        ["en","fr"] call acre_api_fnc_babelSetSpokenLanguages;
        ["en"] call acre_api_fnc_babelSetSpeakingLanguage;
    };
    case "pe": {
        ["en","pe"] call acre_api_fnc_babelSetSpokenLanguages;
        ["en"] call acre_api_fnc_babelSetSpeakingLanguage;
    };
    case "ar": {
        ["en","ar"] call acre_api_fnc_babelSetSpokenLanguages;
        ["en"] call acre_api_fnc_babelSetSpeakingLanguage;
    };
    case "s3": {
        ["en","gr","fr","ru","fr","pe","ar"] call acre_api_fnc_babelSetSpokenLanguages;
        ["en"] call acre_api_fnc_babelSetSpeakingLanguage;
    };
    default {
        ["en"] call acre_api_fnc_babelSetSpokenLanguages;
        ["en"] call acre_api_fnc_babelSetSpeakingLanguage;
    };
};

// Set MedicClass
private _MedicClass = if (_isMedicClass > 1) then {true} else {false};
(_player) setVariable ["ACE_medical_medicClass", _isMedicClass, _MedicClass];

// Set Engineer
(_player) setVariable ["ACE_isEngineer", _isEngineer];

hint "LoadoutApplyed with all the weird shit that come with it!";
