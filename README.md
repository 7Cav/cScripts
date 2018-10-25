<p align="center">
<img src="https://github.com/7Cav/cScripts/blob/master/resourses/logo.png" width="600">
</p>
<p align="center">
<a href="https://github.com/7Cav/cScripts/releases/latest"><img src="https://img.shields.io/github/release/7Cav/cScripts.svg?style=for-the-badge&label=Release%20Build" alt="Release Build Version"></a>
 <a href="https://github.com/7Cav/cScripts/releases/"><img src="https://img.shields.io/github/release/7Cav/cScripts/all.svg?style=for-the-badge&label=Pre-release" alt="Pre release and or current build version"></a>
 <a href="https://github.com/7Cav/cScripts/tags"><img src="https://img.shields.io/github/tag/7Cav/cScripts.svg?style=for-the-badge&colorB=df2d00&label=Latest%20Tag" alt="Dev-build or the latest tag of the current build."></a><br>
 <a href="https://github.com/7Cav/cScripts/releases/latest"><img src="https://img.shields.io/github/downloads/7cav/cScripts/total.svg?style=for-the-badge&label=Downloads" alt="cScripts Downloads"></a>
 <a href="https://github.com/7Cav/cScripts/issues"><img src="https://img.shields.io/github/issues-raw/7cav/cScripts.svg?style=for-the-badge&label=Issues" alt="cScripts Issues"></a>
<a href="https://travis-ci.org/7Cav/cScripts">
    <img src="https://img.shields.io/travis/7Cav/cScripts.svg?style=for-the-badge&logo=Travis-CI" alt="cScripts Build">
</a>
</p>
cScripts is an easy to use framework for the ARMA3 S3 Operations staff and other mission makers. This framework contains functions and scripts that are easy to use and implement on a new mission. All scripts and functions are adapted to 7th Cavalry mission standards.

## Minimum Requirements
- **CBA**                                    - [Link](https://github.com/CBATeam/CBA_A3)
- **ACE3**                                   - [Link](https://ace3mod.com/)
- **RHSUSAF**                                - [Link](http://www.rhsmods.org/)
- **ACRE2**                                  - [Link](https://github.com/IDI-Systems/acre2)
- **Project OPFOR**                          - [Link](https://steamcommunity.com/sharedfiles/filedetails/?id=735566597)
- **TF47 Launchers**                         - [Link](https://steamcommunity.com/sharedfiles/filedetails/?id=508476583)
- **cTab**                                   - [Link](https://github.com/Riouken/cTab)
- **ACE 3 Extension (Placeables)**           - [Link](https://steamcommunity.com/sharedfiles/filedetails/?id=866772689)
- **Ares Mod Achilles Expansion** (OPTIONAL) - [Link](https://github.com/ArmaAchilles/AresModAchillesExpansion)

*These are the minimum requirements to run the script framework due to weapons, equipment, and references being used.*

## Installation
In order to install this script package you only need to [download the latest build](https://github.com/7Cav/cScripts/releases/latest) it and place the content in your mission folder located:
`%USERPROFILE%\Documents\Arma 3 - Other Profiles\[MY ARMA3 USER NAME]\missions\[MY MISSION NAME].[ISLAND]`

*Note! If you have a `init.sqf` and/or a `description.ext` file included in your mission folder, they will be need to be replaced or edited in order to install this.*

## What do cScripts provide?
cScripts provides you with the basic scripts and functions for S3 Operation making.

### Scripts Installed
- **CavFnc**                    -   [7th Cavalry Function Library](https://github.com/7Cav/cScripts/wiki/Features/)
- **Loadouts/Script**           -   [Poppy (1.1.0)](https://github.com/BaerMitUmlaut/Poppy)
- **ViewingDistance**           -   [taw_vd (v1.5)](http://www.armaholic.com/page.php?id=19751)

### AI Tweak (init.sqf)
The AI in cScripts `init.sqf` have been changed to be more realistic and less ridiculous. The recommended default setting is the one provided, and it has been carefully tested, making it the best setting.

### Custom mission customization and initialization
All cScripts options, actions and initialization are optional and can be toggled on or off. They can be tweaked via CBA settings in an easy manner, this is to make the script as flexible as possible. Read more about how to use and change settings [here](https://github.com/7Cav/cScripts/wiki/CBA-Mission-Settings).

### Custom mission modules (Achilles)
cScripts offers a custom made module system based on Ares Mod Achilles Expansion custom mission module system.
The modules are easy to use and allow for sand-boxing as well as tools for game masters. Read more about the mission modules [here](https://github.com/7Cav/cScripts/wiki/7Cav-Modules).

### Automatic Loadout Distrubution (Poppy)
cScripts core function is [Poppy](https://github.com/BaerMitUmlaut/Poppy) a reliable, self configuring, error finding loadout framework made by [BaerMitUmlaut](https://github.com/BaerMitUmlaut). The script automatically gives all BluFor players a predefined loadout in the list below. If you have an unrecognizable loadout, you will be given the default loadout (CommonBlufor).
