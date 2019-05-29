[{
  params ["_unit", "_side", "_object"];
  _apollo_units = ["rhsusf_usmc_marpat_wd_engineer", "rhsusf_usmc_marpat_wd_rifleman_m590", "rhsusf_usmc_marpat_wd_grenadier", "rhsusf_usmc_marpat_wd_machinegunner"];
  _return = true;

  // Check if Apollo
  if(!(typeOf player in _apollo_units)) then {
    _return = false;
    hint format ["You may not Fortify because you're not an Apollo unit.", player];
  };

  // Check if in base
  /*if(player inArea headquarters) then {
    _return = false;
    hint format ["You may not fortify on base.", player];
  };*/

  _return;
}] call acex_fortify_fnc_addDeployHandler;
