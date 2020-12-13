#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function setup the stageing system and automaticly creates respawn marker stageing zones.
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

[format["%1 staging options is setup.", player], "Staging"] call FUNC(logInfo);

private _respawnMarkers = [
    "respawn_west",
    "respawn_west_0",
    "respawn_west_1",
    "respawn_west_2",
    "respawn_west_3",
    "respawn_west_4",
    "respawn_west_5",
    "respawn_west_6",
    "respawn_west_7",
    "respawn_west_8",
    "respawn_west_9",
    "respawn_west_10"
];
{
    if (getMarkerColor _x == "") exitWith {};
    [_x, 60] call FUNC(addStagingZone)
} forEach _respawnMarkers;

private _condition = { call FUNC(checkStagingZone) && EGVAR(Staging,ZoneStatus) };
private _stagingCat = [QEGVAR(Actions,StagingCategory), "Staging Zone", "cScripts\Data\Icon\icon_00.paa", {true}, _condition] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions"], _stagingCat] call ace_interact_menu_fnc_addActionToObject;

private _category = ["ACE_SelfActions", QEGVAR(Actions,StagingCategory)];

// Menu option
[player, true, _category] call FUNC(addReGear);
[player, _category] call FUNC(addHeal);
[player, _category] call FUNC(addInsigniaSelectionList);
[player, true, "ACE_SelfActions"] call FUNC(setupLoadoutSelection);