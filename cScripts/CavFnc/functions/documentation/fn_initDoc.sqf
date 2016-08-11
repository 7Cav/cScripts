/*
 * Author: A.Brostrom
 * This create diary records to all players.
 *
 * Arguments:
 *
 * Example:
 * [this] call cScripts_fnc_initDoc;
 */

#include "..\script_component.hpp";

waitUntil {!isNull player && player == player};

if(player diarySubjectExists "7Cav")exitwith{};

player createDiarySubject ["7Cav","7th Cavalry"];

// Load diary records (The load order is reversed. So the top will be at the bottom after load.)

call cScripts_fnc_DocMC; // Recommend to have at the bottom aka top.

call cScripts_fnc_DocMedicalSystemAdvancedEasy;
call cScripts_fnc_DocMedicalSystemAdvanced;
call cScripts_fnc_DocMedicalSystemBasic;
