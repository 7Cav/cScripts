# cScripts
This is cScripts a easy to use framework for the Arma3 S3 Battlestaff and other mission makers. This framework contain functions, scripts that is easy to use and implement on a new mission. All scripts and functions are adaptatied to 7CAV mission standard.

## What do cScripts provide?
cScripts provides you with the basic for S3 Operation making.

### Scripts Installed
- **CavFnc**                    -   <a href="https://7cav.us/">7th Cavalry Function Library (1.0.0)</a>
- **Loadouts**                  -   <a href="https://7cav.us/">7th Cavalry Loadouts 160730</a>
- **Loadouts/Script**           -   <a href="https://github.com/BaerMitUmlaut/Poppy">Poppy (1.0.0)</a>
- **ViewingDistance**           -   <a href="http://www.armaholic.com/page.php?id=19751">taw_vd (v1.5)</a>

### AI Tweek (init.sqf)
The AI in cScripts `init.sqf` have been changed to be a little more realistic and to avoid them being rediculus. The recomended default setting is the one probided and it have been carfully tested and seam to be the best.

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
| Platoon Medic       | `CAV_Starlight `        | `rhsusf_army_ucp_medic`                                                           |
| Starlight           | `CAV_PlatoonMedic`      | `rhsusf_army_ocp_medic`                                                           |
| Engineer            | `CAV_Engineer`          | `B_engineer_F` `rhsusf_army_ocp_engineer` `rhsusf_army_ucp_engineer`              |
| Officer             | `CAV_Officer`           | `B_officer_F` `rhsusf_army_ocp_officer` `rhsusf_army_ucp_officer`                 |
|                     |                         |                                                                                   |
| Tank Commander      | `CAV_TankCommander`     | `rhsusf_army_ucp_crewman`                                                         |
| Tank Gunner         | `CAV_TankGunner`        | `rhsusf_army_ucp_combatcrewman`                                                   |
| Tank Driver         | `CAV_TankDriver`        | `rhsusf_army_ocp_crewman`                                                         |
| Tank Loader         | `CAV_TankLoader`        | `rhsusf_army_ocp_combatcrewman`                                                   |
|                     |                         |                                                                                   |
| Helicopter Pilot    | `CAV_HeloPilot`         | `B_Helipilot_F` `rhsusf_army_ocp_helipilot` `rhsusf_army_ucp_helipilot`           |
| Fixed Wing Pilot    | `CAV_FixedPilot`        | `B_Pilot_F` `rhsusf_airforce_jetpilot` `rhsusf_airforce_pilot`                    |

## CAV Functions
CAV Functions are usable functions and scripts that can be called. You can find __all__ the functions and there parameters in the Function Viewer (`CTRL` + `F`) in the editor. Below here are a list of the moest common and usefull functions with it's parameters:
#####`[this] call cScripts_fnc_doStarterCrate;`
``` c++
 This populats a given object with items and commands used during operations.
 Arguments:
 0: Object <OBJECT>
 1: Quick Select Scale <STRING>   (Default: "none")
 2: ReGear action <BOOL>          (Default: true)
 3: Heal action <BOOL>            (Default: true)
 4: Insignia Selection <BOOL>     (Default: true)
 5: Supply Size <NUMBER>          (Default: 1)
```

# Other tips and tricks
##Make a cool CQB experience
In order to make a, hopfylly, cool CQB experience you can disabled the AI's pathing. This will make the AI stay put and still be able to turn around and change stance.
Put this in the InitLine of the soldier: `this disableAI 'PATH';`
If you whant to lock the AI in standing stance add this as well: `this setUnitPos 'UP';`

Click on the script command to see more info about [setUnitPos](https://community.bistudio.com/wiki/setUnitPos) and [disableAI](https://community.bistudio.com/wiki/disableAI).

