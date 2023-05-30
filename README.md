<p align="center">
<img src="https://github.com/7Cav/cScripts/blob/main/resourses/logo.png" width="600">
</p>
<p align="center">
<a href="https://github.com/7Cav/cScripts/releases/latest"><img src="https://img.shields.io/github/release/7Cav/cScripts.svg?style=for-the-badge&label=Release%20Build" alt="Release Build Version"></a>
<a href="https://github.com/7Cav/cScripts/releases/"><img src="https://img.shields.io/github/release/7Cav/cScripts/all.svg?style=for-the-badge&label=Pre-release" alt="Pre release and or current build version"></a>
<a href="https://github.com/7Cav/cScripts/tags"><img src="https://img.shields.io/github/tag/7Cav/cScripts.svg?style=for-the-badge&colorB=df2d00&label=Latest%20Tag" alt="Dev-build or the latest tag of the current build."></a><br>
<a href="https://github.com/7Cav/cScripts/releases/latest"><img src="https://img.shields.io/github/downloads/7cav/cScripts/total.svg?style=for-the-badge&label=Downloads" alt="cScripts Downloads"></a>
<a href="https://github.com/7Cav/cScripts/issues"><img src="https://img.shields.io/github/issues-raw/7cav/cScripts.svg?style=for-the-badge&label=Issues" alt="cScripts Issues"></a>
<a href="https://github.com/7Cav/cScripts/wiki"><img src="https://img.shields.io/badge/help-wiki-lightgrey.svg?logo=Wikipedia&style=for-the-badge" alt="cScripts Wiki"></a>
<a href="https://github.com/7Cav/cScripts/actions?query=workflow%3AArma">
    <img src="https://img.shields.io/github/actions/workflow/status/7Cav/cScripts/testing.yml?logo=GitHub&style=for-the-badge" alt="cScripts Build">
</a>
</p>
cScripts is an easy to use ARMA3 mission framework used by the 7th Cavalry Gaming Communitys. This framework contains functions and scripts that are easy to use and implement on a new mission. All scripts and functions are adapted to 7th Cavalry mission standards but can ofcause easily get re fitted to fitt other scenarios and needs.

## Minimum Requirements
- [CBA](https://github.com/CBATeam/CBA_A3)
- [ACE3](https://ace3mod.com/)

### Optional moduels
- [ACRE2](https://github.com/IDI-Systems/acre2)
- [Zeus Enhanced](https://github.com/zen-mod/ZEN)

## Installation
In order to install this script package you only need to [download the latest build](https://github.com/7Cav/cScripts/releases/latest) it and place the content in your mission folder located:
`%USERPROFILE%\Documents\Arma 3 - Other Profiles\[MY ARMA3 USER NAME]\missions\[MY MISSION NAME].[ISLAND]`

*Note! If you have a `init.sqf` and/or a `description.ext` file included in your mission folder, they will be need to be replaced or edited in order to install this.*

## What do cScripts provide?
cScripts provides you with a automated mission making experience, scripts and functions for 7th Cavalry S3 Operation making. Making a cool or exciting mission without fiddling around with scripts have never been easier.

### AI Tweak
cScripts have a faction and unit skill system allowing the ai to be more fun to play agains. A regular army units are more skilld then a militia, snipers are more skilled in spotting and machineguns are less acurate but fire more. The system only adjust a unit skill level and does not interfere with any FSM mods.

### Mission options and customization
All cScripts options, actions and initialization are optional and can be toggled on or off. They can be tweaked via CBA settings in an easy manner, this is to make the script as flexible as possible. Read more about how to use and change settings [here](https://github.com/7Cav/cScripts/wiki/CBA-Mission-Settings).

### Custom mission modules (Zen)
cScripts offers a custom made module system utalizing Zen custom mission module system.
The modules are easy to use and allow for sand-boxing as well as tools for game masters. Read more about the mission modules [here](https://github.com/7Cav/cScripts/wiki/7Cav-Modules).

### Automatic Loadout Distrubution
cScripts core function is the automated loadout system. Heavily inspired by [Poppy](https://github.com/BaerMitUmlaut/Poppy), our loadout system apply team, radio, earplugs and multiply of other functions to lower the setup time and make our experience more fun.
