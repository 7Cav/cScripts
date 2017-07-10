# cScripts
<p align="center">
    <a href="https://github.com/7Cav/cScripts/releases/latest">
        <img src="https://img.shields.io/badge/Version-3.1.5-blue.svg?style=plastic" alt="cScripts Version">
    </a>
    <a href="https://github.com/7Cav/cScripts/issues">
        <img src="https://img.shields.io/github/issues-raw/7cav/cScripts.svg?style=plastic&label=Issues" alt="cScripts Issues">
    </a>
    <a href="https://github.com/7Cav/cScripts/releases">
        <img src="https://img.shields.io/github/downloads/7cav/cScripts/total.svg?style=plastic&label=Downloads" alt="cScripts Downloads">
    </a>
</p>
This is cScripts a easy to use framework for the Arma3 S3 Battlestaff and other mission makers. This framework contain functions, scripts that is easy to use and implement on a new mission. All scripts and functions are adaptatied to 7CAV mission standard.

## What do cScripts provide?
cScripts provides you with the basic for S3 Operation making.

### Scripts Installed
- **CavFnc**                    -   [7th Cavalry Function Library (1.0.0)](https://7cav.us/)
- **Loadouts/Script**           -   [Poppy (1.1.0)](https://github.com/BaerMitUmlaut/Poppy)
- **ViewingDistance**           -   [taw_vd (v1.5)](http://www.armaholic.com/page.php?id=19751)

### AI Tweek (init.sqf)
The AI in cScripts `init.sqf` have been changed to be a little more realistic and to avoid them being rediculus. The recomended default setting is the one probided and it have been carfully tested and seam to be the best.

### Respawn Preset (description.ext)
Missions running the template is set to default respawn `BASE` with `4` second delay. To make a respawn location put down a marker and name it `respawn_west` This chan be changed in the `description.ext`. Eather by commenting it out *(recomended)* by adding two `//` infront or delete the lines.
More information about respawn see the [BIS Community Wiki](https://community.bistudio.com/wiki/Arma_3_Respawn).

## Automatic Loadout Distrubution (Poppy)
cScripts core function are [Poppy](https://github.com/BaerMitUmlaut/Poppy) a reliable, self configuring, error finding loadout framework made by [BaerMitUmlaut](https://github.com/BaerMitUmlaut). The script automaticly give ___all blufor players___ a pre defined loadout in the list below. If you havea un recugnice loadout you will be given the default loadout (CommonBlufor).

| Loadout             | VariableName            | Supported ClassNames                                                           | Quick Select Scale     | Update |
|---------------------|-------------------------|--------------------------------------------------------------------------------|------------------------|--------|
| Default             | `CommonBlufor`          | `ALL PLAYER BLUFOR`                                                            |                        | 170211 |
| Squad Leader        | `CAV_SquadLeader`       | `B_Soldier_SL_F` `rhsusf_army_ocp_squadleader` `rhsusf_army_ucp_squadleader`   | `lite` `medium` `full` | 170211 |
| Team Leader         | `CAV_TeamLeader`        | `B_Soldier_TL_F` `rhsusf_army_ocp_teamleader` `rhsusf_army_ucp_teamleader`     | `lite` `medium` `full` | 170211 |
| Automatic Rifleman  | `CAV_AutomaticRifleman` | `B_soldier_AR_F` `rhsusf_army_ocp_autorifleman` `rhsusf_army_ucp_autorifleman` | `lite` `medium` `full` | 170211 |
| Grenadier           | `CAV_Grenadier`         | `B_Soldier_GL_F` `rhsusf_army_ocp_grenadier` `rhsusf_army_ucp_grenadier`       | `lite` `medium` `full` | 170211 |
| Rifleman            | `CAV_Rifleman`          | `B_Soldier_F` `rhsusf_army_ocp_rifleman` `rhsusf_army_ucp_rifleman`            | `lite` `medium` `full` | 170211 |
|                     |                         |                                                                                |                        |        |
| Combat Life Saver   | `CAV_CombatLifesaver`   | `B_Soldier_lite_F` `rhsusf_army_ocp_riflemanl` `rhsusf_army_ucp_riflemanl`     | `lite` `medium` `full` | 170211 |
| Platoon Medic       | `CAV_PlatoonMedic`      | `B_medic_F` `rhsusf_army_ocp_medic` `rhsusf_army_ucp_medic`                    | `full`                 | 170211 |
| Starlight           | `CAV_Starlight`         | `rhsusf_navy_marpat_wd_medic` `rhsusf_navy_marpat_d_medic`                     | `full`                 | 170211 |
|                     |                         |                                                                                |                        |        |
| Engineer            | `CAV_Engineer`          | `B_engineer_F` `rhsusf_army_ocp_engineer` `rhsusf_army_ucp_engineer`           | `full`                 |        |
|                     |                         |                                                                                |                        |        |
| Officer             | `CAV_Officer`           | `B_officer_F` `rhsusf_army_ocp_officer` `rhsusf_army_ucp_officer`              | `full`                 | 170211 |
| JTAC                | `CAV_JTAC`              |                                                                                |                        | 170211 |
|                     |                         |                                                                                |                        |        |
| Tank Commander      | `CAV_TankCommander`     | `rhsusf_army_ocp_crewman`                                                      | `medium` `full`        |        |
| Tank Gunner         | `CAV_TankGunner`        | `rhsusf_army_ocp_combatcrewman`                                                | `medium` `full`        |        |
| Tank Driver         | `CAV_TankDriver`        | `rhsusf_army_ocp_driver`                                                       | `medium` `full`        |        |
| Tank Loader         | `CAV_TankLoader`        | `rhsusf_army_ocp_driver_armored`                                               | `medium` `full`        |        |
|                     |                         |                                                                                |                        |        |
| Helicopter Pilot    | `CAV_HeloPilot`         | `B_Helipilot_F` `rhsusf_army_ocp_helipilot` `rhsusf_army_ucp_helipilot`        | `medium` `full`        |        |
| Fixed Wing Pilot    | `CAV_FixedPilot`        | `B_Pilot_F` `rhsusf_airforce_jetpilot` `rhsusf_airforce_pilot`                 | `medium` `full`        |        |

If you want to disable or change the loadouts you can find them here: `cScripts\CfgLoadouts.hpp`, `cScripts\Loadouts\*.hpp`

## CfgSettings
cScripts have settings to make stuff easier to use and customizable. All settings can be found here: `CfgSettings.hpp`. Below are each settings avalible and a description on what they do.

``` c++
isDebugMode                 =   0;      // 0 or 1 Add debug messages in the log (Default: 0)
isMissionType               =   1;      // 0: Custom, 1: Operation, 2: Training (Default: 1)
aiSystemDifficulty          =   0;      // 0: Standard, 1: Desert, 2: Dumb As Fuck (Default: 0)

// Hints and documents
useStartHint                =   1;      // 0 or 1 Allow the mission to run the RedLightHint or TrainingMissionHint depends on mission type (Default: 1)
setRedLightTime             =   60;     // Seconds for how long it is red light (Default: 60)
setTrainingHintTime         =   15;     // Seconds for how long the hint is shown (Default: 15)
setCustomHintTopic          =   "My custom Mission!"; // Sets a custom mission hint topic. (Requires: isMissionType=0)
setCustomHintText           =   "I have design this mission! Yey for me!"; // Sets a custom mission hint text. (Requires: isMissionType=0)

showDiaryRecords            =   1;      // 0 or 1 Allow the mission to add Radio Reports and 7th Cavalry records on mission start. (Default: 1)

// Custom mission start
useCustomInit               =   1;      // 0 or 1 Allow the mission to run CustomInits on mission start. (Default: 1)
useScriptVehicleInventory   =   0;      // 0 or 1 Allow the mission to change Vehicles inventory on mission start. (Default: 0)
useScriptSupplyInventory    =   0;      // 0 or 1 Allow the mission to change Supply crate inventorys on mission start. (Default: 0)

useHeloGetOutRL             =   1;      // 0 or 1 Allow the mission to add Get Out Left/Right on helicopters. (Default: 1)
addFRIESonZeusSpawn         =   0;      // 0 or 1 Allow the mission to add FRIE to helicopters spawned by Zeus. (Default: 0)
```

## CAV Functions
CAV Functions are usable functions and scripts that can be called. You can find __all__ the functions and there parameters in the [Function Viewer](https://community.bistudio.com/wiki/Functions_Library_(Arma_3)#Finding_a_Function) (`CTRL` + `F`) in the editor. Below here are a list of the moest common and usefull functions with it's parameters:


#### cScripts_fnc_doStarterCrate
``` c++
 This populats a given object with items and commands used during operations.
 
 Arguments:
 0: Object <OBJECT>
 1: Quick Select Scale <STRING>   (Default: "none") ["none","lite","medium","full","ranger"]
 2: ReGear action <BOOL>          (Default: true)
 3: Heal action <BOOL>            (Default: true)
 4: Insignia Selection <BOOL>     (Default: true)
 5: Supply Size <NUMBER>          (Default: 1)
 
 Example:
 [this] call cScripts_fnc_doStarterCrate;
 [this,"none",true] call cScripts_fnc_doStarterCrate;
 [this,"none",true,true,true,1] call cScripts_fnc_doStarterCrate;
```

#### cScripts_fnc_initVehicle
*This script can also be called by the mission it self via* ***cfgSettings*** *>* ***useScriptVehicleInventory***
``` c++
 This refits a given vehicle with a more Cav suited supplies equipment.

 Arguments:
 0: Vehicle <OBJECT>
 1: Scale cargo ammount <NUMBER> (Default: 1)

 Example:
 [this] call cScripts_fnc_initVehicle;
 [this,1] call cScripts_fnc_initVehicle;
```

#### cScripts_fnc_attachVehicleLabel
``` c++
 This function creates and attach a lable on a given vehicle.

 Arguments:
 0: Vehicle <OBJECT>
 1: Texture <STRING> [For BlackHawk; b1,b2,b3,b4]

 Example:
 [this] call cScripts_fnc_attachVehicleLabel;
 [this,"B1"] call cScripts_fnc_attachVehicleLabel;
```

#### cScripts_fnc_doSupplyCrate
``` c++
 This populats a given object with items.
 Use for mission resupplies.

 Arguments:
 0: Crate <OBJECT>
 1: Scale cargo ammount <NUMBER> (Default: 1)
 
 Example:
 [this,0.5] call cScripts_fnc_doSupplyCrate;
 [this,1] call cScripts_fnc_doSupplyCrate;
```

**Note:** *There are specialized crates as well: `cScripts_fnc_doAmmoCrate`, `cScripts_fnc_doLaunchersCrate`, `cScripts_fnc_doGrenadesCrate`, `cScripts_fnc_doExplosivesCrate` you can read more about them in the [Function Viewer](https://community.bistudio.com/wiki/Functions_Library_(Arma_3)#Finding_a_Function) under the supplies category. You can find additional ones there as well.*


#### cScripts_fnc_flag
``` c++
 This add or change a given flag poles flag to a new and better one.
 
 0: Object <OBJECT>
 1: flagType <STRING>   (Default: "yellow")  ["yellow","black"]

 Example:
 [this] call cScripts_fnc_flag;
 [this,"yellow"] call cScripts_fnc_flag;
```

# Other tips and tricks
## Find a classname
If you wantto put down a specific unit or kit mentaiond under; [Automatic Loadout Distrubution (Poppy)](#automatic-loadout-distrubution-poppy), and can't seam to find the unit. You can search for a classname by typing `class` followed by the classname.
Exsample:
> class rhsusf_army_ucp_medic

## Make a cool CQB experience
There are two ways of doing so AI garrison units inside of a building. The easy way is to just add this line to a group of AI soldier:
```[(getPos this), (units this), 150, true, false] call Ares_fnc_ZenOccupyHouse;```
This will throw the set group in to a close building and garrison it.

HTe other way is to manually place a unita and lock them in position by disabled the AI's pathing (`this disableAI 'PATH';`). This will make the AI stay put but still able to turn around and change stance. If you whant to lock the AI in standing stance add this as well: `this setUnitPos 'UP';`

*Read more about [setUnitPos](https://community.bistudio.com/wiki/setUnitPos) and [disableAI](https://community.bistudio.com/wiki/disableAI) by clicking on them.*
