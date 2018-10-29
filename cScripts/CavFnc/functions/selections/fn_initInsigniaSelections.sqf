#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function contain insignia selection buttons and categorys.
 *
 * Arguments:
 * 0: Object <OBJECT>
 *
 * Example:
 * call cScripts_fnc_initInsigniaSelections;
 */

params [["_object", objNull, [objNull]]];

#ifdef DEBUG_MODE
    [format["Setting up Insinia Selector on %1.",_object]] call FUNC(logInfo);
#endif

// Make ACE Category
private _icon = "cScripts\Data\Icon\icon_00.paa";
[_object,"cScriptInsigniaSelectionMenu","Insignia",_Icon,["ACE_MainActions"]] call FUNC(addAceCategory);
[_object,"cScriptInsigniaSelectionAlpha","Alpha Co.",_Icon,["ACE_MainActions","cScriptInsigniaSelectionMenu"]] call FUNC(addAceCategory);
[_object,"cScriptInsigniaSelectionBravo","Bravo Co.",_Icon,["ACE_MainActions","cScriptInsigniaSelectionMenu"]] call FUNC(addAceCategory);
[_object,"cScriptInsigniaSelectionCharlie","Charlie Co.",_Icon,["ACE_MainActions","cScriptInsigniaSelectionMenu"]] call FUNC(addAceCategory);

// Make addAction Topic.
_object addAction ["Insignia Selection", {}, [], 1.5, true, true, "", "true", 5];

// Add the Insignia Selections
[_object,"Remove Insignia"] call FUNC(addInsigniaSelection);



// 7th Cavalry Gaming Insignias
[_object,"7th Cavalry Insignia","Custom_Cav_7","cScripts\Data\Insignia\Custom_Cav_7.paa"] call FUNC(addInsigniaSelection);
[_object,"7th Cavalry Insignia (M81)","Custom_Cav_7_m81","cScripts\Data\Insignia\Custom_Cav_7_m81.paa"] call FUNC(addInsigniaSelection);
[_object,"7th Cavalry Insignia (OCP)","Custom_Cav_7_ocp","cScripts\Data\Insignia\Custom_Cav_7_ocp.paa"] call FUNC(addInsigniaSelection);


// Alpha Company 1st Platoon
//[_object,"Platoon Insignia 1/A/1-7","Alpha_1","cScripts\Data\Insignia\Alpha_1.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionAlpha']] call FUNC(addInsigniaSelection);
//[_object,"Squad Insignia A/1/A/1-7","Alpha_1_A","cScripts\Data\Insignia\Alpha_1_A.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionAlpha']] call FUNC(addInsigniaSelection);
//[_object,"Squad Insignia B/1/A/1-7","Alpha_1_B","cScripts\Data\Insignia\Alpha_1_B.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionAlpha']] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia C/1/A/1-7","Alpha_1_C","cScripts\Data\Insignia\Alpha_1_C.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionAlpha']] call FUNC(addInsigniaSelection);
//[_object,"Squad Insignia D/1/A/1-7","Alpha_1_D","cScripts\Data\Insignia\Alpha_1_D.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionAlpha']] call FUNC(addInsigniaSelection);

// Alpha Company 2nd Platoon
[_object,"Platoon Insignia 2/A/1-7","Alpha_2","cScripts\Data\Insignia\Alpha_2.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionAlpha']] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia A/2/A/1-7","Alpha_2_A","cScripts\Data\Insignia\Alpha_2_A.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionAlpha']] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia B/2/A/1-7","Alpha_2_B","cScripts\Data\Insignia\Alpha_2_B.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionAlpha']] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia C/2/A/1-7","Alpha_2_C","cScripts\Data\Insignia\Alpha_2_C.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionAlpha']] call FUNC(addInsigniaSelection);
//[_object,"Squad Insignia D/2/A/1-7","Alpha_2_D","cScripts\Data\Insignia\Alpha_2_D.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionAlpha']] call FUNC(addInsigniaSelection);


// Bravo Company 1st Platoon
//[_object,"Platoon Insignia 1/B/1-7","Bravo_2","cScripts\Data\Insignia\Bravo_1.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionBravo']] call FUNC(addInsigniaSelection);
//[_object,"Squad Insignia 1/1/B/1-7","Bravo_2_1","cScripts\Data\Insignia\Bravo_1_1.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionBravo']] call FUNC(addInsigniaSelection);
//[_object,"Squad Insignia 2/1/B/1-7","Bravo_2_2","cScripts\Data\Insignia\Bravo_1_2.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionBravo']] call FUNC(addInsigniaSelection);
//[_object,"Squad Insignia 3/1/B/1-7","Bravo_2_3","cScripts\Data\Insignia\Bravo_1_3.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionBravo']] call FUNC(addInsigniaSelection);
//[_object,"Squad Insignia 4/1/B/1-7","Bravo_2_4","cScripts\Data\Insignia\Bravo_1_4.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionBravo']] call FUNC(addInsigniaSelection);

// Bravo Company 2nd Platoon
[_object,"Platoon Insignia 2/B/1-7","Bravo_2","cScripts\Data\Insignia\Bravo_2.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionBravo']] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia 1/2/B/1-7","Bravo_2_1","cScripts\Data\Insignia\Bravo_2_1.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionBravo']] call FUNC(addInsigniaSelection);
//[_object,"Squad Insignia 2/2/B/1-7","Bravo_2_2","cScripts\Data\Insignia\Bravo_2_2.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionBravo']] call FUNC(addInsigniaSelection);
//[_object,"Squad Insignia 3/2/B/1-7","Bravo_2_3","cScripts\Data\Insignia\Bravo_2_3.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionBravo']] call FUNC(addInsigniaSelection);
//[_object,"Squad Insignia 4/2/B/1-7","Bravo_2_4","cScripts\Data\Insignia\Bravo_2_4.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionBravo']] call FUNC(addInsigniaSelection);


// Charlie Company  1st Platoon
[_object,"Platoon Insignia 1/C/1-7","Charlie_1","cScripts\Data\Insignia\Charlie_1.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionCharlie']] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia 1/1/C/1-7","Charlie_1_1","cScripts\Data\Insignia\Charlie_1_1.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionCharlie']] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia 2/1/C/1-7","Charlie_1_2","cScripts\Data\Insignia\Charlie_1_2.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionCharlie']] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia 3/1/C/1-7","Charlie_1_3","cScripts\Data\Insignia\Charlie_1_3.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionCharlie']] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia 4/1/C/1-7","Charlie_1_4","cScripts\Data\Insignia\Charlie_1_4.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionCharlie']] call FUNC(addInsigniaSelection);

// Charlie Company  2nd Platoon
[_object,"Platoon Insignia 2/C/1-7","Charlie_2","cScripts\Data\Insignia\Charlie_2.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionCharlie']] call FUNC(addInsigniaSelection);
[_object,"Squad Insignia 1/2/C/1-7","Charlie_2_1","cScripts\Data\Insignia\Charlie_2_1.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionCharlie']] call FUNC(addInsigniaSelection);
//[_object,"Squad Insignia 2/2/C/1-7","Charlie_2_2","cScripts\Data\Insignia\Charlie_2_2.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionCharlie']] call FUNC(addInsigniaSelection);
//[_object,"Squad Insignia 3/2/C/1-7","Charlie_2_3","cScripts\Data\Insignia\Charlie_2_3.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionCharlie']] call FUNC(addInsigniaSelection);
//[_object,"Squad Insignia 4/2/C/1-7","Charlie_2_4","cScripts\Data\Insignia\Charlie_2_4.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionCharlie']] call FUNC(addInsigniaSelection);

#ifdef DEBUG_MODE
    [format["Setup Insinia Selector on %1 completed.",_object]] call FUNC(logInfo);
#endif
