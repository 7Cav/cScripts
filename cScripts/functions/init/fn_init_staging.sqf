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

INFO("Staging", "Setting up Staging");

private _stagingZoneMarkers = [];
{
    private _markerName = [_x, 0, 11] call BIS_fnc_trimString;
    _markerName = toLower _markerName;
    if (_markerName in ["zone_staging", "respawn_west", "cscripts_staging_zone"]) then {
        private _type = markerShape _x;
        private _pos = getMarkerPos _x;
        _x setMarkerAlpha 0;
        _stagingZoneMarkers append [[_x, _type, _pos]];
    };
} forEach allMapMarkers;

{
    _x params["_marker", "_type", "_pos"];
    private _size = if (_type == "ICON") then {60} else {_type};
    private _zone = if (_type == "ICON") then {_pos} else {_marker};
    [_zone, _size] call FUNC(addStagingZone);
} forEach _stagingZoneMarkers;


// Player specific actions
if !(GVAR(isPlayer)) exitWith {};

// Interaction system
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
[player, "ACE_SelfActions", false] call FUNC(setupLoadoutSelection);
[_category] call FUNC(addArsenal);

INFO_1("Staging", "Staging options for %1 have been setup.", name player)
