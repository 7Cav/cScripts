# cScripts
This is cScripts a easy to use framework for the Arma3 S3 Battlestaff and other mission makers. This framework contain functions, scripts that is easy to use and implement on a new mission. All scripts and functions are adaptatied to 7CAV mission standard.

## Scripts Installed
- **CavFnc**                    -   <a href="https://7cav.us/">7th Cavalry Function Library (1.0.0)</a>
- **Loadouts**                  -   <a href="https://7cav.us/">7th Cavalry Loadouts 160730</a>
- **Loadouts/Script**           -   <a href="https://github.com/BaerMitUmlaut/Poppy">Poppy (1.0.0)</a>
- **ViewingDistance**           -   <a href="http://www.armaholic.com/page.php?id=19751">taw_vd (v1.5)</a>

### Manual Installation
If you use the included `Description.ext` you do not need to do anything otherwise you need to include the folowing block:
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
    _x setSkill ["aimingspeed", 0.4];
    _x setSkill ["aimingaccuracy", 0.35];
    _x setSkill ["aimingshake", 0.4];
    _x setSkill ["spottime", 0.4];
    _x setSkill ["spotdistance", 0.6];
    _x setSkill ["commanding", 1.0];
    _x setSkill ["general", 1.0];
} forEach allUnits;
```
Tip:
When playing on a step or desert island it is recomended to change the `"spotdistance"` to `1.0`.

### Respawn Preset (description.ext)
Missions running the template is set to default respawn `BASE` with `4` second delay. This chan be changed in the `description.ext`. Eather by commenting it out *(recomended)* by adding two `//` infront or delete the lines.

## Automatic Loadout Distrubution (Poppy)

| Loadout | Primary ClassName | Supported ClassNames | Primary VariableName | Supported VariableNames |
|---------|-------------------|----------------------|----------------------|------------------------|
| Default | All Blufor | N/A | None | None |
| Rifleman | `rhsusf_army_ocp_rifleman` | `B_Soldier_F`, `B_T_Soldier_F`, `rhsusf_army_ocp_rifleman_1stcav`, `rhsusf_army_ocp_arb_rifleman`, `rhsusf_army_ucp_rifleman_1stcav`, `rhsusf_army_ucp_rifleman`, `rhsusf_army_ucp_arb_rifleman` | `CAV_Rifleman` | `C_R`, `C_RA`, `CAV_AlphaRifleman`, `CAV_AlphaRifleman`, `CAV_BravoRifleman` |
| Squad Leader | `rhsusf_army_ocp_squadleader` | `B_Soldier_SL_F`, `B_T_Soldier_SL_F`, `rhsusf_army_ocp_arb_squadleader`, `rhsusf_army_ucp_squadleader`, `rhsusf_army_ucp_arb_squadleader` | `CAV_SquadLeader` | `C_SL` |
| Fire Team Leader | `rhsusf_army_ocp_teamleader` | `B_Soldier_TL_F`, `B_T_Soldier_TL_F`, `rhsusf_army_ocp_arb_teamleader`, `rhsusf_army_ucp_teamleader`, `rhsusf_army_ucp_arb_teamleader` | `CAV_FireTeamLeader` | `C_FTL`, `C_FTLA`, `C_FTLB`, `CAV_AlphaFireTeamLeader`, `CAV_BravoFireTeamLeader` |

## CAV Functions
CAV Functions are usable functions and scripts that can be called. You can read more about hte scripts bellow or visit the mission Function Viewer in the editor.

### Main and basic functions
`initMain`: initMain is used to call appon a stadgeing area crate. It fills a crate allot of equipment, adds insignia and quick selections. It also adds a ReGear button. The scripts works with addAction and ACE action.
`initMainSandbox`: initMainSandbox work identical to initMain except that it adds a VirtualArsenal as well.

`flag`: flag is a just a small function that changes a given flagpoles flag texture.

### Insignia Selection
The insignia selection is called by `cScripts_fnc_initMain` and `cScripts_fnc_initMainSandbox` base crate scripts. In order to add a insignia you first need to define it in `CfgUnitInsignia.hpp` then add it to `fn_initInsigniaSelections.sqf` using the `cScripts_fnc_addInsigniaSelection` function.

Here is a exsample on how to add a new class to the `CfgUnitInsignia.hpp`:
``` c++
class 7_Insignia {
    displayName = "7th Cavalry Insignia";
    author = "7th Cavalry Gaming";
    texture = "cScripts\Data\Insignia\7.paa";
};
```
Here is the same class referenced in `fn_initInsigniaSelections.sqf`:
```[_object,"7th Cavalry Insignia","7_Insignia","cScripts\Data\Insignia\7.paa","cScriptInsigniaSelectionMisc"] call FUNC(addInsigniaSelection);```

# Other tips and tricks
##Make a cool CQB experience
In order to make a, hopfylly, cool CQB experience you can disabled the AI's pathing. This will make the AI stay put and still be able to turn around and change stance.
Put this in the InitLine of the soldier: `this disableAI 'PATH';`
If you whant to lock the AI in standing stance add this as well: `this setUnitPos 'UP';`

Click on the script command to see more info about [setUnitPos](https://community.bistudio.com/wiki/setUnitPos) and [disableAI](https://community.bistudio.com/wiki/disableAI).

