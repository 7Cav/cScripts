# A3G Loadout
> An **almost** okay loadout system

-Trusty Arabian

> Splendid :^)

-Jay Crowe

## Installation
1. Create a folder in your mission root folder and name it `modules`. Then create one inside there and call it `a3g-loadout`. If you change the name you will have to adjust some folder paths.
2. Download the contents of this repository ( there's a download link at the side ) and put it into the folder you just created.
3. Make a `description.ext` file and put it into your mission root folder. If you don't know what a description.ext is, you can read about it [here](https://community.bistudio.com/wiki/Description.ext).
4. It should look like this: <NEEDS NEW PICTURE>
5. Add the following lines of code to the `description.ext`:

``` c++ 
class CfgFunctions { 
  #include "modules\a3g-loadout\CfgFunctions.hpp" 
};
```

That's it!

## I'm too dumb, give me the easy way!
Go to the virtual arsenal and make a loadout there to your liking. Then use the export function `CTRL`+`SHIFT`+`C` to export the loadout into the format that this script understands. Read the section called `Classes` below, because you still need to tell the script who should get the loadout you just made, but other than that, you're done.

# Loadouts
Loadouts are defined directly inside the `description.ext`. This has vast advantages over the commonly accepted method of scripting them on a per-unit basis. Loadouts are applied on mission start and when you respawn. It should work completely seamless in every situation. This is an example on how a loadout looks like with this system:

``` c++
class CfgLoadouts {
  class My_Unit {
    primaryWeapon = "RH_m4a1_ris";
    primaryWeaponAttachments[] = {"RH_ta31rco"};
  };
};
```

As you can see, they can be extremely simple, and contain only the information necessary to create the loadout. Due to the modular nature of the script, we're keeping most of the original loadout intact and are just changing the rifle and its weapon attachments. The simplest way of creating a loadout is to give units a name in the editor, ie. `My_Unit` and define a class with the same name in the loadout section. Any changes done in that section now apply to that unit. The example above demonstrates this behavior, by reserving a loadout for a unit that carries the name `My_Unit`.

The real power of this system becomes apparent when you start combining different features for the desired effect. The modular nature of the script means you don't have to change anything that you don't actually want to change. If you just want to change a units uniform, you can just define a different uniform and everything else stays the same. Of course defining a loadout on a per-unit-basis would still be pretty lengthy and annoying. Instead you have the ability to use certain magical and not so magical classes to simplify the process. You can for example use the class of a unit, such as a Rifleman for example, which will then change the loadout of every unit that is of this class. The example below demonstrates this:

``` c++
class CfgLoadouts {
  class AllPlayers {
    primaryWeapon = "RH_m4a1_ris";
  };
  class AV_IndUs_SL_Des {
    primaryWeaponAttachments[] = {"RH_ta31rco"};
  };
  class AV_IndUs_Marksman_M14_Des {
    primaryWeapon = "RH_mk12mod1";
    primaryWeaponAttachments[] = {"RH_ta31rco"};
  };
};
```

This simple block of code changes and applies the loadout of 18 units at once, based on a few key instructions. Since the `AllPlayers` class is done first ( the actual order inside the block plays no role, the loadout for `AllPlayers` is always applied first ), followed by the class based loadouts and finally the individual loadouts, you can combine the different priority layers for some extremely tight loadout descriptions. We don't have to redefine a different primary weapon for the individual soldiers because the `AllPlayers` class already gives them each one. Note that the marksman class `AV_IndUs_Marksman_M14_Des` gets a different primary weapon, which is why we redefine it in his loadout, which overwrites the generic behavior of `AllPlayers`.

### Notes
- Unique loadouts ( targeting a specific unit ) overwrite class loadouts ( targeting all units of the same class ), which in turn overwrite `generic` loadouts ( targeting multiple units ).
- All loadouts are case _insensitive_, meaning `person`, `Person` and `perSon` all refer to the same unit, likewise, class definition and the `AllPlayers` class are also case insensitive. This is because Bohemia Interactive doesn't know how string comparisons should work.
- You can export a loadout directly from the virtual arsenal by pressing `CTRL`+`SHIFT`+`C`.
- You can modify a loadout exported from the arsenal with other options, see `Options` below.
- The order of options doesn't matter.
- The order of classes doesn't matter either.

### Important
There's a caveat to using this system: You have to reload the mission everytime you change something inside the `description.ext` mission config file. Repeated previews do _not_ refresh it. In order to do it correctly, save the mission, then click the load mission button from the editor and select the mission you're currently editing, essentially loading the mission you're already editing. Due to caching this will typically take less than a second after the first time. The reason is because Bohemia Interactive made it this way. There's nothing that can be done about it. Sorry.

## Classes
Loadouts are written inside classes. There are a couple of generic classes for you to use, ontop of being able to specifiy a unit classname and just designating a unit name. The priority in order is this:

1. AllUnits
2. AllAi
3. AllPlayers
4. Side classes ( Blufor, Opfor, Independent and Civilian )
5. Side AI classes ( BluforAi, OpforAi, IndependentAi and CivilianAi )
6. Side player classes ( BluforPlayer, OpforPlayer, IndependentPlayer and CivilianPlayer )
7. Unit classnames
8. Editor names

Every priority class will override the class above it, in a nondestructive way. If you define a `primaryWeapon` inside `AllUnits`, then define a different one inside `Blufor`, all blufor players will get the one from `Blufor` and the `AllUnits` one will be overridden. But if you define `addItems[] = "AGM_Bandage"` inside `AllUnits` and a `primaryWeapon` inside `Blufor` _all_ blufor players will get a Bandage from `AllUnits` and a primary weapon from `primaryWeapon`.

Respawn
-------
Works out of the box, 100% of the time, everytime.

Options
-------
These are the different options can use for making a loadout, with a bit of an explanation of how they behave. 
The loadout options are completely modular, just use what you need and nothing more:

| Option                         | Explanation                                |
| ------------------------------ | ------------------------------------------ |
| `linkedItems[]`                | Replaces linked items. ( Arsenal export ). |
| `uniform`                      | Replaces uniform.                          |
| `backpack`                     | Replaces backpack.                         |
| `vest`                         | Replaces vest.                             |
| `items[]`                      | Replaces items.                            |
| `magazines[]`                  | Replaces magazines.                        |
| `addItems[]`                   | Adds items.                                |
| `addMagazines[]`               | Adds magazines.                            |
| `addItemsToUniform[]`          | Adds items/magazines to the uniform.       |
| `addItemsToVest[]`             | Adds items/magazines to the vest.          |
| `addItemsToBackpack[]`         | Adds items/magazines to the backpack.      |
| `weapons[]`                    | Replaces weapons. ( Arsenal export ).      |
| `primaryWeapon`                | Replaces primary weapon.                   |
| `secondaryWeapon`              | Replaces secondary weapon.                 |
| `handgunWeapon`                | Replaces handgun.                          |
| `primaryWeaponAttachments[]`   | Replaces attachments of primary weapon.    |
| `secondaryWeaponAttachments[]` | Replaces attachments of secondary weapon.  |
| `handgunWeaponAttachments[]`   | Replaces attachments of handgun.           |
| `headgear`                     | Replaces headgear.                         |
| `goggles`                      | Replaces goggles.                          |
| `nvgoggles`                    | Replaces nightvision goggles.              |
| `binoculars`                   | Replaces binoculars.                       |
| `map`                          | Replaces map.                              |
| `gps`                          | Replaces gps.                              |
| `compass`                      | Replaces compass.                          |
| `watch`                        | Replaces watch.                            |

### Notes
- Array entries ( denoted with a `[]` ) require the array syntax, even when they are only used with a single item. The correct usage looks like this: `magazines[] = {"some_magazine_classname"};`.
- Single entries on the contrary look like this: `vest = "some_vest_classname";`. It is imperative that you do this right, because the editor crashes if you mess this up. You can thank Bohemia Interactive for that.
- All options default to removing the item(s) in question, if you leave the field empty ( ie. `uniform = "";` ). This only works where it makes sense. An empty `addItems[]` array makes no sense.
- `uniform`, `backpack` and `vest` options will try and preserve the items inside them, even if you change or completely remove them. If you delete a backpack for example, the system will try and move them to the rest of your inventory, as long as there's space for them. This obviously has its limit. If you remove almost all containers, then some items will be lost. This is your own responsibility. 
- `items[]` and `magazines[]` options will replace items / magazines from the _entire_ inventory, backpacks included.
- `addItems[]` and `addMagazines[]` options will add items / magazines without removing anything. This can be combined with `items[]` and `magazines[]`, even though it doesn't make much sense.
- `addItemsToUniform[]`, `addItemsToVest[]` and `addItemsToBackpack[]` are executed _before_ the general options for `addItems[]` and `addMagazines[]`. This is because I assume that you don't care where items end up being when you use the latter and that way, the sorted options have more room to work with. They are however executed _after_ the replacement options `items[]` and `magazines[]`.
- `goggles` do _not_ replace nightvision goggles. There is a seperate option for it: `nvgoggles`. This is because nightvision goggles are their own independent slot.
- `secondaryWeapon` refers to a launcher, not a handgun. Refer to `handgunWeapon` for the latter.
- There is no option to replace the radio item. This is intentional, because both popular radio systems ( ACRE and TFR ) need to change these items dynamically at mission start. We want to avoid messing with these.

### Important
- `linkedItems[]` is used in conjunction with the arsenal export and should be avoided if inputting a loadout manually.
- `weapons[]` is used in conjunction with the arsenal export and should be avoided if inputting a loadout manually.
