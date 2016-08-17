/*
 * Author: CPL.Brostrom.A 
 * This create diary records to all players.
 *
 * Arguments:
 *
 * Example:
 * [this] call cScripts_fnc_initDoc;
 */

#include "..\script_component.hpp";

waitUntil {!isNull player && player == player};

// Add New Topic
if(player diarySubjectExists "7Cav")exitwith{};
player createDiarySubject ["7Cav","7th Cavalry"];

// Load diary records (The load order is reversed. So the top will be at the bottom after load.)

call cScripts_fnc_DocMissionControl; // Recommend to have at the bottom aka top.

call cScripts_fnc_DocOperation;


// Add New Topic
if(player diarySubjectExists "radioReports")exitwith{};
player createDiarySubject ["radioReports","7CAV Radio Reports"];

// Load diary records (The load order is reversed. So the top will be at the bottom after load.)

call cScripts_fnc_DocRadioLACEACE
call cScripts_fnc_DocRadioMEDEVAC;
call cScripts_fnc_DocRadioROTARYPICKUP;
call cScripts_fnc_DocRadioSPOTREP;
