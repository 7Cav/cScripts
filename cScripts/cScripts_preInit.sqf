#include "script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This is the rules set for the mission using the cba XEH. Each setting here is alterd via cbaSettings
 */

INFO(if (is3DEN) then {"EDEN"} else {"preInit"}, "Initializing CBA Settings...");

// Check installed moduels
EGVAR(patches,usesACE)          = isClass (configFile >> "CfgPatches" >> "ace_main");
EGVAR(patches,usesACEArsenal)   = isClass (configFile >> "CfgPatches" >> "ace_arsenal");
EGVAR(patches,usesACETagging)   = isClass (configFile >> "CfgPatches" >> "ace_tagging");
EGVAR(patches,usesACEX)         = isClass (configFile >> "CfgPatches" >> "acex_main");
EGVAR(patches,usesKat)          = isClass (configFile >> "CfgPatches" >> "kat_main");
EGVAR(patches,usesACRE)         = isClass (configFile >> "CfgPatches" >> "acre_sys_core");
EGVAR(patches,usesTFAR)         = isClass (configFile >> "CfgPatches" >> "task_force_radio");
EGVAR(patches,usesAlive)        = isClass (configFile >> "CfgPatches" >> "ALiVE_main");
EGVAR(patches,usesZen)          = isClass (configFile >> "CfgPatches" >> "zen_main");
EGVAR(patches,usesACEAX)        = isCLass (configFile >> "CfgPatches" >> "aceax_main");

// Global Variables
EGVAR(Staging,ZoneStatus) = false;
EGVAR(Staging,showAllLoadouts) = false;
GVAR(isPlayer) = hasInterface || {isPlayer player};
GVAR(OneLife) = !isNil{(getArray (missionconfigfile >> "respawnTemplates") select 0) == "ace_spectator"};

#include "initSettings.inc.sqf"

INFO(if (is3DEN) then {"EDEN"} else {"preInit"}, "Initialization of CBA Settings completed...");

// Ace Arsenal
call EFUNC(init,aceArsenal);


// Load preInit mission settings
if (is3DEN) exitWith {};
INFO("preInit", "Initializing...");


// Logistical Database
EGVAR(DATABASE,DONE) = false;
GVAR(DATABASE) = call EFUNC(init,logistics);
EGVAR(DATABASE,DONE) = true;

EGVAR(PYLONS,DONE) = false;
GVAR(PYLONS) = call EFUNC(init,pylons);
EGVAR(PYLONS,DONE) = true;

if (EGVAR(Settings,allowCustomTagging)) then {
    call EFUNC(init,aceTagging);
};

call EFUNC(init,chatCommands);

call EFUNC(init,zenModuels);

if (EGVAR(Settings,setAiSystemDifficulty) >= 1 ) then {
    call EFUNC(init,skillAdjustment);
};

call EFUNC(init,eventHandlers);

INFO("preInit", "Initialization completed.");
