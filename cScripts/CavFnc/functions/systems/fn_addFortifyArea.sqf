#include "..\script_component.hpp";
/*
 * Author: SGT.Brostrom.A
 * This function is partly based on Bojan and PFC.Vex.W Fortify system.
 * This function setup a aria around the given vehicle to alow construction of fortification structures
 *
 * Arguments:
 * 0: Vehicle <OBJECT>
 *
 * Return Value:
 * Nothing
 *
 * Example:
 * ["myTruck"] call cScripts_fnc_addFortifyArea
 * ["myTruck", 50] call cScripts_fnc_addFortifyArea
 *
 * Public: Yes
 */
#define DEBUG_MODE
params [
    ["_vehicle", objNull, [objNull]],
    ["_radius", 50, [50]]
];

#ifdef DEBUG_MODE
    [formatText["Adding Fortify location to %1 with a radius of %2.", _vehicle, _radius]] call FUNC(logInfo);
#endif

private _newLocation = [_vehicle, _radius, _radius, 0, false];
private _fortifyLocations = missionNamespace getVariable ["acex_fortify_locations", []];
_fortifyLocations pushBack _newLocation;
missionNamespace setVariable ["acex_fortify_locations", _fortifyLocations];

private _restriction = "";
switch (EGVAR(Settings,setFortifyRestriction)) do {
    case (0): {_restriction = "anyone"};
    case (1): {_restriction = "only <t color='#ffc61a'>Engineers</t>"};
    case (2): {_restriction = "only <t color='#ffc61a'>Advanced Engineers</t>"};
};

_statement = {
    params ["_target", "_player", "_params"];
    hint parseText format["<t color='#00cd00' size='1.2' shadow='1' shadowColor='#000000' align='center'>ALL GREEN!</t><br />This vehicle is equipped with fortification objects!<br /><br />The radius for construction is <t color='#ffc61a'>%1 meters</t> and %2 can construct. Don't forget the <t color='#ffc61a'>Fortify Tool</t>.", (_params select 0), (_params select 1)];
};
_action = ["Fortify_Check_Vehicle", "Check Vehicle", "", _statement, {true}, {}, [_radius, _restriction]] call ace_interact_menu_fnc_createAction;
[_vehicle, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
