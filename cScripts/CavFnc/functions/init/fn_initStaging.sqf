#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function add eventhandelers chaning the inventory of all crates.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_initStaging
 *
 * Public: No
 */

//if (!isServer) exitWith {};

[format["%1 staging options is setup.", player], "Staging"] call FUNC(logInfo);

private _condition = {
    [12] call FUNC(getStagingZone);
};
private _stagingCat = [QEGVAR(Actions,StagingCategory), "Staging Zone", "cScripts\Data\Icon\icon_00.paa", {true}, _condition] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions"], _stagingCat] call ace_interact_menu_fnc_addActionToObject;

private _category = ["ACE_SelfActions", QEGVAR(Actions,StagingCategory)];

// Menu option
[player, true, _category] call FUNC(addReGear);
[player, _category] call FUNC(addHeal);
[player, _category] call FUNC(addInsigniaSelectionList);
[player, "full", true, ["ACE_SelfActions"]] call FUNC(addQuickSelectionsList);