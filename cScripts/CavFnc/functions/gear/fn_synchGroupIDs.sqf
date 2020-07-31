#include "..\script_component.hpp";
/*
 * Author: BaerMitUmlaut
 * Sync all Group ids in the mission
 *
 * Arguments:
 * none
 *
 * Example:
 * call cScripts_fnc_groupIDsSynched
 *
 */
 
{
    _x setGroupIdGlobal [groupID _x];
    false
} count allGroups;

GVAR(groupIDsSynched) = true;
publicVariable QGVAR(groupIDsSynched);
