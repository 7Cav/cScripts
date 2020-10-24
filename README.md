<p align="center">
<img src="https://github.com/7Cav/cScripts/blob/master/resourses/logo.png" width="600">
</p>
<p align="center">
<a href="https://github.com/7Cav/cScripts/releases/latest"><img src="https://img.shields.io/github/release/7Cav/cScripts.svg?style=for-the-badge&label=Release%20Build" alt="Release Build Version"></a>
 <a href="https://github.com/7Cav/cScripts/releases/"><img src="https://img.shields.io/github/release/7Cav/cScripts/all.svg?style=for-the-badge&label=Pre-release" alt="Pre release and or current build version"></a>
 <a href="https://github.com/7Cav/cScripts/tags"><img src="https://img.shields.io/github/tag/7Cav/cScripts.svg?style=for-the-badge&colorB=df2d00&label=Latest%20Tag" alt="Dev-build or the latest tag of the current build."></a><br>
 <a href="https://github.com/7Cav/cScripts/releases/latest"><img src="https://img.shields.io/github/downloads/7cav/cScripts/total.svg?style=for-the-badge&label=Downloads" alt="cScripts Downloads"></a>
 <a href="https://github.com/7Cav/cScripts/issues"><img src="https://img.shields.io/github/issues-raw/7cav/cScripts.svg?style=for-the-badge&label=Issues" alt="cScripts Issues"></a>
 <a href="https://github.com/7Cav/cScripts/wiki"><img src="https://img.shields.io/badge/help-wiki-lightgrey.svg?logo=Wikipedia&style=for-the-badge" alt="cScripts Wiki"></a>
<a href="https://github.com/7Cav/cScripts/actions?query=workflow%3AArma">
    <img src="https://img.shields.io/github/workflow/status/7Cav/cScripts/Arma/master?logo=GitHub&style=for-the-badge" alt="cScripts Build">
</a>

</p>
cScripts is an easy to use ARMA3 mission framework used by the 7th Cavalry Gaming Communitys. This framework contains functions and scripts that are easy to use and implement on a new mission. All scripts and functions are adapted to 7th Cavalry mission standards but can ofcause easily get re fitted to fitt other scenarios and needs.

## Minimum Requirements
- [CBA](https://github.com/CBATeam/CBA_A3)
- [ACE3](https://ace3mod.com/)
- [ACRE2](https://github.com/IDI-Systems/acre2)
- [7th Cavalry Community Addon](https://github.com/7Cav/7CavAddon)
- [RHSUSAF](http://www.rhsmods.org/)
- [Project OPFOR](https://steamcommunity.com/sharedfiles/filedetails/?id=735566597)
- [cTab](https://github.com/Riouken/cTab) (Requirment removed when running the public build)

*These are the requirements to run the script framework due to weapons, equipment and references being used.*

### Optional moduels
- [Ares Mod Achilles Expansion](https://github.com/ArmaAchilles/AresModAchillesExpansion)
- [Zeus Enhanced](https://github.com/zen-mod/ZEN)

## Installation
In order to install this script package you only need to [download the latest build](https://github.com/7Cav/cScripts/releases/latest) it and place the content in your mission folder located:
`%USERPROFILE%\Documents\Arma 3 - Other Profiles\[MY ARMA3 USER NAME]\missions\[MY MISSION NAME].[ISLAND]`

*Note! If you have a `init.sqf` and/or a `description.ext` file included in your mission folder, they will be need to be replaced or edited in order to install this.*

## What do cScripts provide?
cScripts provides you with the basic scripts and functions for S3 Operation making.

### Scripts Installed
- CavFnc                    -   [7th Cavalry Function Library](https://github.com/7Cav/cScripts/wiki/Features/)
- Loadouts/Script           -   [Poppy (1.1.0)](https://github.com/BaerMitUmlaut/Poppy)
- ViewingDistance           -   [taw_vd (v1.6)](http://www.armaholic.com/page.php?id=19751)

### AI Tweak (init.sqf)
The AI in cScripts `init.sqf` have been changed to be more realistic and less ridiculous. The recommended default setting is the one provided, and it has been carefully tested, making it the best setting.

### Custom mission customization and initialization
All cScripts options, actions and initialization are optional and can be toggled on or off. They can be tweaked via CBA settings in an easy manner, this is to make the script as flexible as possible. Read more about how to use and change settings [here](https://github.com/7Cav/cScripts/wiki/CBA-Mission-Settings).

### Custom mission modules (Achilles)
cScripts offers a custom made module system based on Ares Mod Achilles Expansion custom mission module system.
The modules are easy to use and allow for sand-boxing as well as tools for game masters. Read more about the mission modules [here](https://github.com/7Cav/cScripts/wiki/7Cav-Modules).

### Automatic Loadout Distrubution (Poppy)
cScripts core function is [Poppy](https://github.com/BaerMitUmlaut/Poppy) a reliable, self configuring, error finding loadout framework made by [BaerMitUmlaut](https://github.com/BaerMitUmlaut). The script automatically gives all BluFor players a predefined loadout in the list below. If you have an unrecognizable loadout, you will be given the default loadout (CommonBlufor).
