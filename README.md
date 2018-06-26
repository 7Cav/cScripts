# cScripts
<p align="left">
<a href="https://github.com/7Cav/cScripts/releases/latest"><img src="https://img.shields.io/github/release/7Cav/cScripts.svg?style=plastic&label=Release%20Build" alt="Release Build Version"></a>
 <a href="https://github.com/7Cav/cScripts/releases/"><img src="https://img.shields.io/github/release/7Cav/cScripts/all.svg?style=plastic&label=Pre-release" alt="Pre release and or current build version"></a>
 <a href="https://github.com/7Cav/cScripts/issues"><img src="https://img.shields.io/github/issues-raw/7cav/cScripts.svg?style=plastic&label=Issues" alt="cScripts Issues"></a>
 <a href="https://github.com/7Cav/cScripts/releases"><img src="https://img.shields.io/github/downloads/7cav/cScripts/total.svg?style=plastic&label=Downloads" alt="cScripts Downloads"></a>
<a href="https://travis-ci.org/7Cav/cScripts">
    <img src="https://img.shields.io/travis/7Cav/cScripts.svg?style=plastic" alt="cScripts Build">
</a>
</p>
This is cScripts a easy to use framework for the Arma3 S3 Battlestaff and other mission makers. This framework contain functions, scripts that is easy to use and implement on a new mission. All scripts and functions are adaptatied to 7CAV mission standard.

## Minimum Requrements
- **CBA**                                    - [Link](https://github.com/CBATeam/CBA_A3)
- **ACE3**                                   - [Link](https://ace3mod.com/)
- **RHSUSAF**                                - [Link](http://www.rhsmods.org/)
- **TFAR**                                   - [Link](http://radio.task-force.ru/en/)
- **cTab**                                   - [Link](https://github.com/Riouken/cTab)
- **TF47 Launchers**                         - [Link](https://forums.bistudio.com/forums/topic/176437-tf47-launchers-wip/)
- **Ares Mod Achilles Expansion** (OPTIONAL) - [Link](https://github.com/ArmaAchilles/AresModAchillesExpansion)

*Thease are the minimum requirements to run the script propperly due to the fact equipment and veichles are listed in the script.*

## Installation
In order to install this script package you only need to [download](https://github.com/7Cav/cScripts/releases/latest) it and place the content in your mission folder located:
`%USERPROFILE%\Documents\Arma 3 - Other Profiles\[MY AMRA3 USER NAME]\missions\[MY MISSION NAME].[ISLAND]`

*Note! If you have a `init.sqf` and/or a `desctioption.ext` file included in your mission folder they will be needed to be replaced or edited inorder to install this.*

## What do cScripts provide?
cScripts provides you with the basic for S3 Operation making.

### Scripts Installed
- **CavFnc**                    -   [7th Cavalry Function Library](https://7cav.us/)
- **Loadouts/Script**           -   [Poppy (1.1.0)](https://github.com/BaerMitUmlaut/Poppy)
- **ViewingDistance**           -   [taw_vd (v1.5)](http://www.armaholic.com/page.php?id=19751)

### AI Tweek (init.sqf)
The AI in cScripts `init.sqf` have been changed to be a little more realistic and to avoid them being rediculus. The recomended default setting is the one probided and it have been carfully tested and seam to be the best.

### Respawn Preset (description.ext)
Missions running the template is set to default respawn `BASE` with `4` second delay. To make a respawn location put down a marker and name it `respawn_west` This chan be changed in the `description.ext`. Eather by commenting it out *(recomended)* by adding two `//` infront or delete the lines.
More information about respawn see the [BIS Community Wiki](https://community.bistudio.com/wiki/Arma_3_Respawn).

## Automatic Loadout Distrubution (Poppy)
cScripts core function are [Poppy](https://github.com/BaerMitUmlaut/Poppy) a reliable, self configuring, error finding loadout framework made by [BaerMitUmlaut](https://github.com/BaerMitUmlaut). The script automaticly give ___all blufor players___ a pre defined loadout in the list below. If you havea un recugnice loadout you will be given the default loadout (CommonBlufor).

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
