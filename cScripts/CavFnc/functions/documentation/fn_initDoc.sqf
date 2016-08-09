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

call cScripts_fnc_DocMC;