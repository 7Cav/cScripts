#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This function setup the staging system and automaticly creates respawn marker staging zones.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * call cScripts_fnc_init_staging
 *
 * Public: No
 */

if !(EGVAR(Settings,enableStagingSystem)) exitWith {};

#ifdef DEBUG_MODE
    ["Setting up Staging", "staging"] call FUNC(info);
#endif

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
private _stagingMarkers = [
    "zone_staging",
    "zone_staging_0",
    "zone_staging_1",
    "zone_staging_2",
    "zone_staging_3",
    "zone_staging_4",
    "zone_staging_5",
    "zone_staging_6",
    "zone_staging_7",
    "zone_staging_8",
    "zone_staging_9",
    "zone_staging_10",
    "zone_staging_11",
    "zone_staging_12",
    "zone_staging_13",
    "zone_staging_14",
    "zone_staging_15"
];

{
    if (_x in allMapMarkers) then {
        [_x, 60] call FUNC(addStagingZone);
    };
} forEach _respawnMarkers + _stagingMarkers;

if !(GVAR(isPlayer)) exitWith {};

private _condition = { call FUNC(checkStagingZone) };
private _stagingCat = [QEGVAR(Actions,StagingCategory), "Staging Zone", "cScripts\Data\Icon\icon_00.paa", {true}, _condition] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions"], _stagingCat] call ace_interact_menu_fnc_addActionToObject;

private _category = ["ACE_SelfActions", QEGVAR(Actions,StagingCategory)];

// addAction notice
player addAction [
    "<img image='cScripts\Data\Icon\icon_00.paa' /> <t color='#ffc61a'>7th Cavalry Staging Zone</t> <img image='cScripts\Data\Icon\icon_00.paa' />",
    {
        params ["_target", "_caller", "_actionId", "_arguments"];
        [
            [],
            ["Staging Zone", 1.2, [1, 0.776, 0.102, 1]],
            ["You are currently in a staging zone."],
            ["This allow you to change loadouts and so on"],
            ["from your ace self interact."],
            [""],
            [""]
        ] call CBA_fnc_notify;
        playSound "hint";
    }, nil, 10, false, false, "",
    QUOTE(call FUNC(checkStagingZone)),
    0
];

// Inventory event handler to save loadout within stadgeing zone
player addEventHandler ["InventoryClosed", {
    params ["_unit", "_container"];
    if (call FUNC(checkStagingZone)) then {
        [player] call EFUNC(gear,saveLoadout);
    };
}];

// Menu option
[player, _category] call FUNC(addReGear);
if !(GVAR(OneLife)) then {[player, _category] call FUNC(addHeal)};
[player, _category] call FUNC(addInsigniaSelectionList);
[player, true, "ACE_SelfActions"] call FUNC(setupLoadoutSelection);
[_category] call FUNC(addArsenal);

[format["Staging options for %1 have been setup.", name player], "Staging"] call FUNC(info);
