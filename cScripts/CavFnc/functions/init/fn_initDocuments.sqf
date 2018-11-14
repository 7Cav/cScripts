#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function add diary records for all players.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_initDocuments
 *
 * Public: No
 */

waitUntil {!isNull player && player == player};

#ifdef DEBUG_MODE
    ["Applying diary records."] call FUNC(logInfo);
#endif

// Add New Topic (7th Cavalry)
if (player diarySubjectExists "7Cav") exitwith {};
player createDiarySubject ["7Cav","7th Cavalry"];

// Load diary records (NOTE! The load order is reversed. So the top will be at the bottom after load.)

call FUNC(Doc_MissionControl);
call FUNC(Doc_Info);

// Add New Topic (Checklists)
if (player diarySubjectExists "Chklists") exitwith {};
player createDiarySubject ["Chklists","Checklists"];

call FUNC(DocChklist_LZEXTRACT);
call FUNC(DocChklist_LZINSERT);
call FUNC(DocChklist_LZSPECS);
call FUNC(DocChklist_JMTASKS);
call FUNC(DocChklist_CFF);

// Add New Topic (Radio Reports)
if (player diarySubjectExists "radioReports") exitwith{};
player createDiarySubject ["radioReports","Radio Reports"];

// Load diary records (NOTE! The load order is reversed. So the top will be at the bottom after load.)

call FUNC(DocRadio_LACEACE);
call FUNC(DocRadio_MEDEVAC);
call FUNC(DocRadio_ROTARYPICKUP);
call FUNC(DocRadio_SPOTREP);
