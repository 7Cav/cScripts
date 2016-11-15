# cScripts
This is cScripts a easy to use framework for the Arma3 S3 Battlestaff and other mission makers. This framework contain functions, scripts that is easy to use and implement on a new mission. All scripts and functions are adaptatied to 7CAV mission standard.

## Scripts Installed
- **CavFnc**                    -   <a href="https://7cav.us/">7th Cavalry Function Library (1.0.0)</a>
- **Loadouts**                  -   <a href="https://7cav.us/">7th Cavalry Loadouts 160730</a>
- **Loadouts/Script**           -   <a href="https://github.com/BaerMitUmlaut/Poppy">Poppy (1.0.0)</a>
- **ViewingDistance**           -   <a href="http://www.armaholic.com/page.php?id=19751">taw_vd (v1.5)</a>

### Manual Installation
If you use the included `Description.ext` you do not need to do anything.
Otherwise you need to include the following block:
``` c++
#include "cScripts\ViewingDistance\GUI.h"
#include "cScripts\Loadouts\script\CfgPoppy.hpp"
class CfgFunctions {
    #include "cScripts\ViewingDistance\CfgFunctions.hpp"
    #include "cScripts\CavFnc\CfgFunctions.hpp"
    #include "cScripts\Loadouts\script\CfgFunctions.hpp"
};
#include "cScripts\CfgUnitInsignia.hpp"
#include "cScripts\CfgLoadouts.hpp"
```

### Uninstall
If you whant to remove a function or script you need to remove the following from the description.ext:

**Loadout Script** *(Poppy) `cScripts\Loadouts\...`*
``` c++
#include "cScripts\Loadouts\script\CfgPoppy.hpp"
class CfgFunctions {
    #include "cScripts\Loadouts\script\CfgFunctions.hpp"
};
#include "cScripts\CfgLoadouts.hpp"
```

**Viewing Distance** *(taw_vd) `cScripts\ViewingDistance\...`*
``` c++
#include "cScripts\ViewingDistance\GUI.h"
class CfgFunctions {
    #include "cScripts\ViewingDistance\CfgFunctions.hpp"
};
```
## What do cScripts provide?
cScripts provides you with the basic for S3 Operation making.

### AI Tweek (init.sqf)
The AI in cScripts `init.sqf` have been changed to be a little more realistic and to avoid them being rediculus. The recomended default setting is the one probided and it have been carfully tested and seam to be the best. But you are offcause free to change it if you whant.

#### Default:
``` c++
{
    _x setSkill ["aimingspeed", 0.42];
    _x setSkill ["aimingaccuracy", 0.338];
    _x setSkill ["aimingshake", 0.36];
    _x setSkill ["spottime", 0.42];
    _x setSkill ["spotdistance", 0.7];
    _x setSkill ["commanding", 1.0];
    _x setSkill ["general", 1.0];
} forEach allUnits;
```
Tip:
When playing on a step or desert island it is recomended to change the `"spotdistance"` to `1.0`.

### Respawn Preset (description.ext)
Missions running the template is set to default respawn `BASE` with `4` second delay. This chan be changed in the `description.ext`. Eather by commenting it out *(recomended)* by adding two `//` infront or delete the lines.

## Automatic Loadout Distrubution (Poppy)

| Loadout             | VariableName            | Supported ClassNames                                                              |
|---------------------|-------------------------|-----------------------------------------------------------------------------------|
| Default             | `CommonBlufor`          | `ALL PLAYER BLUFOR`                                                               |
| Squad Leader        | `CAV_SquadLeader`       | `B_Soldier_SL_F` `rhsusf_army_ocp_squadleader` `rhsusf_army_ucp_squadleader`      |
| Team Leader         | `CAV_TeamLeader`        | `B_Soldier_TL_F` `rhsusf_army_ocp_teamleader` `rhsusf_army_ucp_teamleader`        |
| Automatic Rifleman  | `CAV_AutomaticRifleman` | `B_soldier_AR_F` `rhsusf_army_ocp_autorifleman` `rhsusf_army_ucp_autorifleman`    |
| Grenadier           | `CAV_Grenadier`         | `B_Soldier_GL_F` `rhsusf_army_ocp_grenadier` `rhsusf_army_ucp_grenadier`          |
| Rifleman            | `CAV_Rifleman`          | `B_Soldier_F` `rhsusf_army_ocp_rifleman` `rhsusf_army_ucp_rifleman`               |
| Combat Life Saver   | `CAV_CombatLifesaver`   | `B_medic_F`                                                                       |
|                     |                         |                                                                                   |
| Platoon Medic       | `CAV_PlatoonMedic`      | `rhsusf_army_ocp_medic`                                                           |
| Engineer            | `CAV_Engineer`          | `B_engineer_F` `rhsusf_army_ocp_engineer` `rhsusf_army_ucp_engineer`              |
| Officer             | `CAV_Officer`           | `B_officer_F` `rhsusf_army_ocp_officer` `rhsusf_army_ucp_officer`                 |
|                     |                         |                                                                                   |
| Tank Commander      | `CAV_TankCommander`     | `rhsusf_army_ucp_crewman`                                                         |
| Tank Gunner         | `CAV_TankGunner`        | `rhsusf_army_ucp_combatcrewman`                                                   |
| Tank Driver         | `CAV_TankDriver`        | `rhsusf_army_ocp_crewman`                                                         |
| Tank Loader         | `CAV_TankLoader`        | `rhsusf_army_ocp_combatcrewman`                                                   |
|                     |                         |                                                                                   |
| Helicopter Pilot    | `CAV_HeloPilot`         | `B_Helipilot_F` `rhsusf_army_ocp_helipilot` `rhsusf_army_ucp_helipilot`           |


## CAV Functions
CAV Functions are usable functions and scripts that can be called. You can read more about hte scripts bellow or visit the mission Function Viewer in the editor.

### Main and basic functions
`initMain`: initMain is used to call appon a stadgeing area crate. It fills a crate allot of equipment, adds insignia and quick selections. It also adds a ReGear button. The scripts works with addAction and ACE action.

`initMainSandbox`: initMainSandbox work identical to initMain except that it adds a VirtualArsenal as well.

`flag`: flag is a just a small function that changes a given flagpoles flag texture.

### Insignia Selection
The insignia selection is called by `cScripts_fnc_initMain` and `cScripts_fnc_initMainSandbox` base crate scripts. In order to add a insignia you first need to define it in `CfgUnitInsignia.hpp` then add it to `fn_initInsigniaSelections.sqf` using the `cScripts_fnc_addInsigniaSelection` function.

The script have simplyfyed the creation of new insignias and use a Macro. `MACRO_UNITINSIGNIA(CLASSNAME,FULLPICTURENAME);` Here is a exsample on how to add a new class to the `CfgUnitInsignia.hpp`:
``` c++
MACRO_UNITINSIGNIA(11C_17_Insignia,1-1-C-17.paa);
```
Here is the same class referenced in `fn_initInsigniaSelections.sqf`:
``` c++
[_object,"Squad Insignia 1/1/C/1-7","11C_17_Insignia","cScripts\Data\Insignia\1-1-C-17.paa"] call FUNC(addInsigniaSelection);
```
You can also add a insignia in a sub category:
``` c++
[_object,"7th Cavalry Insignia","7_Insignia","cScripts\Data\Insignia\7.paa",['ACE_MainActions','cScriptInsigniaSelectionMenu','cScriptInsigniaSelectionMisc']] call FUNC(addInsigniaSelection);
```

The categoryes is defined like this:
``` c++
[_object,"cScriptInsigniaSelectionMisc","Misc",_Icon,["ACE_MainActions","cScriptInsigniaSelectionMenu"]] call FUNC(addAceCategory);
```

# Other tips and tricks
##Make a cool CQB experience
In order to make a, hopfylly, cool CQB experience you can disabled the AI's pathing. This will make the AI stay put and still be able to turn around and change stance.
Put this in the InitLine of the soldier: `this disableAI 'PATH';`
If you whant to lock the AI in standing stance add this as well: `this setUnitPos 'UP';`

Click on the script command to see more info about [setUnitPos](https://community.bistudio.com/wiki/setUnitPos) and [disableAI](https://community.bistudio.com/wiki/disableAI).

