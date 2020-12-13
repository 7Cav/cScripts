#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function sets up a list of insignias as aceAction or addAction on a given object. (Ussaly the Starter Crate).
 *
 * Arguments:
 * 0: Object <OBJECT>
 * 1: Main ACE Category <STRING> (Optional)
 *
 * Example:
 * ["my_box"] call cScripts_fnc_addInsigniaSelectionList;
 *
 * Public: No 
 */

if !(isClass (configFile >> "CfgPatches" >> "cav_insignia")) exitWith {["cfgPatches for Cav Addon Insignias not detected, terminating insignia selection tab on object."] call FUNC(logInfo);};

params [
    ["_object", objNull, [objNull]],
    ["_aceCategory", ["ACE_MainActions"], [["ACE_MainActions"]]]
];

#ifdef DEBUG_MODE
    [format["Setting up insignia selecton list on %1...",_object]] call FUNC(logInfo);
#endif

private _defaultCategory = _aceCategory + ["cScriptInsigniaSelectionMenu"];
private _alphaCategory   = _aceCategory + ["cScriptInsigniaSelectionMenu", "cScriptInsigniaSelectionAlpha"];
private _bravoCategory   = _aceCategory + ["cScriptInsigniaSelectionMenu", "cScriptInsigniaSelectionBravo"];
private _charlieCategory = _aceCategory + ["cScriptInsigniaSelectionMenu", "cScriptInsigniaSelectionCharlie"];
private _specialCategory = _aceCategory + ["cScriptInsigniaSelectionMenu", "cScriptInsigniaSelectionSpecial"];

// Make ACE Category
private _icon = "cScripts\Data\Icon\icon_00.paa";
[_object, "cScriptInsigniaSelectionMenu", "Insignia", _Icon, _aceCategory] call FUNC(addAceCategory);
[_object, "cScriptInsigniaSelectionAlpha", "Alpha Co.", _Icon, _defaultCategory] call FUNC(addAceCategory);
[_object, "cScriptInsigniaSelectionBravo", "Bravo Co.", _Icon, _defaultCategory] call FUNC(addAceCategory);
[_object, "cScriptInsigniaSelectionCharlie", "Charlie Co.", _Icon, _defaultCategory] call FUNC(addAceCategory);
[_object, "cScriptInsigniaSelectionSpecial", "Special", _Icon, _defaultCategory] call FUNC(addAceCategory);

// Make addAction Topic.
if (!isPlayer _object) then {
    _object addAction ["Insignia Selection", {}, [], 1.5, true, true, "", "true", 5];
};

// Add the Insignia Selections
[_object,"Remove Insignia"] call FUNC(addInsigniaSelection);


// 7th Cavalry Gaming Insignias
[_object,"7th Cavalry Insignia","Custom_Cav_7","z\cav\addons\insignia\data\Custom_Cav_7.paa", _defaultCategory] call FUNC(addInsigniaSelection);
[_object,"7th Cavalry Insignia (M81)","Custom_Cav_7_m81","z\cav\addons\insignia\data\Custom_Cav_7_m81.paa", _defaultCategory] call FUNC(addInsigniaSelection);
[_object,"7th Cavalry Insignia (OCP)","Custom_Cav_7_ocp","z\cav\addons\insignia\data\Custom_Cav_7_ocp.paa", _defaultCategory] call FUNC(addInsigniaSelection);


// Alpha Company 1st Platoon
//[_object,"Platoon Insignia 1/A/1-7","Alpha_1","z\cav\addons\insignia\data\Alpha_1.paa",_alphaCategory] call FUNC(addInsigniaSelection);
//[_object,"Squad Insignia A/1/A/1-7","Alpha_1_A","z\cav\addons\insignia\data\Alpha_1_A.paa",_alphaCategory] call FUNC(addInsigniaSelection);
//[_object,"Squad Insignia B/1/A/1-7","Alpha_1_B","z\cav\addons\insignia\data\Alpha_1_B.paa",_alphaCategory] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia C/1/A/1-7","Alpha_1_C","z\cav\addons\insignia\data\Alpha_1_C.paa",_alphaCategory] call FUNC(addInsigniaSelection);
//[_object,"Squad Insignia D/1/A/1-7","Alpha_1_D","z\cav\addons\insignia\data\Alpha_1_D.paa",_alphaCategory] call FUNC(addInsigniaSelection);

// Alpha Company 2nd Platoon
[_object,"Platoon Insignia 2/A/1-7","Alpha_2","z\cav\addons\insignia\data\Alpha_2.paa",_alphaCategory] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia A/2/A/1-7","Alpha_2_A","z\cav\addons\insignia\data\Alpha_2_A.paa",_alphaCategory] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia B/2/A/1-7","Alpha_2_B","z\cav\addons\insignia\data\Alpha_2_B.paa",_alphaCategory] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia C/2/A/1-7","Alpha_2_C","z\cav\addons\insignia\data\Alpha_2_C.paa",_alphaCategory] call FUNC(addInsigniaSelection);
//[_object,"Squad Insignia D/2/A/1-7","Alpha_2_D","z\cav\addons\insignia\data\Alpha_2_D.paa",_alphaCategory] call FUNC(addInsigniaSelection);


// Bravo Company 1st Platoon
//[_object,"Platoon Insignia 1/B/1-7","Bravo_2","z\cav\addons\insignia\data\Bravo_1.paa",_bravoCategory] call FUNC(addInsigniaSelection);
//[_object,"Squad Insignia 1/1/B/1-7","Bravo_2_1","z\cav\addons\insignia\data\Bravo_1_1.paa",_bravoCategory] call FUNC(addInsigniaSelection);
//[_object,"Squad Insignia 2/1/B/1-7","Bravo_2_2","z\cav\addons\insignia\data\Bravo_1_2.paa",_bravoCategory] call FUNC(addInsigniaSelection);
//[_object,"Squad Insignia 3/1/B/1-7","Bravo_2_3","z\cav\addons\insignia\data\Bravo_1_3.paa",_bravoCategory] call FUNC(addInsigniaSelection);
//[_object,"Squad Insignia 4/1/B/1-7","Bravo_2_4","z\cav\addons\insignia\data\Bravo_1_4.paa",_bravoCategory] call FUNC(addInsigniaSelection);

// Bravo Company 2nd Platoon
[_object,"Platoon Insignia 2/B/1-7","Bravo_2","z\cav\addons\insignia\data\Bravo_2.paa",_bravoCategory] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia 1/2/B/1-7","Bravo_2_1","z\cav\addons\insignia\data\Bravo_2_1.paa",_bravoCategory] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia 2/2/B/1-7","Bravo_2_2","z\cav\addons\insignia\data\Bravo_2_2.paa",_bravoCategory] call FUNC(addInsigniaSelection);
//[_object,"Squad Insignia 3/2/B/1-7","Bravo_2_3","z\cav\addons\insignia\data\Bravo_2_3.paa",_bravoCategory] call FUNC(addInsigniaSelection);
//[_object,"Squad Insignia 4/2/B/1-7","Bravo_2_4","z\cav\addons\insignia\data\Bravo_2_4.paa",_bravoCategory] call FUNC(addInsigniaSelection);


// Charlie Company  1st Platoon
[_object,"Platoon Insignia 1/C/1-7","Charlie_1","z\cav\addons\insignia\data\Charlie_1.paa",_charlieCategory] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia 1/1/C/1-7","Charlie_1_1","z\cav\addons\insignia\data\Charlie_1_1.paa",_charlieCategory] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia 2/1/C/1-7","Charlie_1_2","z\cav\addons\insignia\data\Charlie_1_2.paa",_charlieCategory] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia 3/1/C/1-7","Charlie_1_3","z\cav\addons\insignia\data\Charlie_1_3.paa",_charlieCategory] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia 4/1/C/1-7","Charlie_1_4","z\cav\addons\insignia\data\Charlie_1_4.paa",_charlieCategory] call FUNC(addInsigniaSelection);

// Charlie Company  2nd Platoon
[_object,"Platoon Insignia 2/C/1-7","Charlie_2","z\cav\addons\insignia\data\Charlie_2.paa",_charlieCategory] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia 1/2/C/1-7","Charlie_2_1","z\cav\addons\insignia\data\Charlie_2_1.paa",_charlieCategory] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia 2/2/C/1-7","Charlie_2_2","z\cav\addons\insignia\data\Charlie_2_2.paa",_charlieCategory] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia 3/2/C/1-7","Charlie_2_3","z\cav\addons\insignia\data\Charlie_2_3.paa",_charlieCategory] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia 4/2/C/1-7","Charlie_2_4","z\cav\addons\insignia\data\Charlie_2_4.paa",_charlieCategory] call FUNC(addInsigniaSelection);

// Special
[_object,"Airborn","Specialized_Airborne","z\cav\addons\insignia\data\Specialized_Airborne.paa",_specialCategory] call FUNC(addInsigniaSelection);
[_object,"CLS","Specialized_CLS","z\cav\addons\insignia\data\Specialized_CLS.paa",_specialCategory] call FUNC(addInsigniaSelection);


#ifdef DEBUG_MODE
    [format["Setup insignia selection list on %1 is completed.",_object]] call FUNC(logInfo);
#endif
