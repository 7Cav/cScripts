["AllVehicles", "initPost", cScripts_fnc_initVehicle, true, ["CAManBase"], true] call CBA_fnc_addClassEventHandler;
["AllVehicles", "init", cScripts_fnc_initVehicle, true, ["CAManBase"], true] call CBA_fnc_addClassEventHandler;

["B_supplyCrate_F", "init", cScripts_fnc_initMain, true, [], true] call CBA_fnc_addClassEventHandler;
["B_CargoNet_01_ammo_F", "init", cScripts_fnc_equipCrate, true, [], true] call CBA_fnc_addClassEventHandler;

["Box_NATO_Ammo_F", "init", cScripts_fnc_equipCrateAmmo, true, [], true] call CBA_fnc_addClassEventHandler;
["Box_NATO_WpsLaunch_F", "init", cScripts_fnc_equipCrateLaunchers, true, [], true] call CBA_fnc_addClassEventHandler;
["Box_NATO_Grenades_F", "init", cScripts_fnc_equipCrateGrenades, true, [], true] call CBA_fnc_addClassEventHandler;