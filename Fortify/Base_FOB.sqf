{
  _radius = 100;
  missionNamespace setVariable ["acex_fortify_locations", [[_this select 0,_radius,_radius,0,false]], true];
  [_this select 0, 8] call ace_cargo_fnc_setSpace;
  [_this select 0, -1] call ace_cargo_fnc_setSize;
}
