//Wip


//Fetch squad name
private _squadName = getText (configFile >> "CfgVehicles" >> typeOf _unit >> "displayName");
_squadName = _getTeamName splitString " ";
_squadName = _getTeamName select 5;

[group _unit, _squadName] call CBA_fnc_setCallsign;
