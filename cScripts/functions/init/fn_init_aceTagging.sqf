#include "..\script_component.hpp";
/*
 * Author: CPL.Brostrom.A
 * This adds custom spray tags to all units.
 *
 * Example:
 * call cScripts_fnc_init_aceTagging
 *
 * Public: No
 */

if (!isServer) exitWith {};
if (!EGVAR(patches,usesACETagging)) exitWith {};
if (!isNil{missionNamespace getVariable QEGVAR(mission,tagging)}) exitWith {SHOW_WARNING("init", "Tagging already applied.")};

[   "cScripts_tagging_cav_black",
    "Cav Black",
    "ACE_SpraypaintBlack",
    ["z\cav\addons\textures\data\tagging\tag_cav_black_ca.paa"],
    "z\cav\addons\textures\data\tagging\icon_action_black_ca.paa"
] call ace_tagging_fnc_addCustomTag;

[   "cScripts_tagging_cav_blue",
    "Cav Blue",
    "ACE_SpraypaintBlue",
    ["z\cav\addons\textures\data\tagging\tag_cav_blue_ca.paa"],
    "z\cav\addons\textures\data\tagging\icon_action_blue_ca.paa"
] call ace_tagging_fnc_addCustomTag;

[   "cScripts_tagging_cav_green",
    "Cav Green",
    "ACE_SpraypaintGreen",
    ["z\cav\addons\textures\data\tagging\tag_cav_green_ca.paa"],
    "z\cav\addons\textures\data\tagging\icon_action_green_ca.paa"
] call ace_tagging_fnc_addCustomTag;

[   "cScripts_tagging_cav_red",
    "Cav Red",
    "ACE_SpraypaintRed",
    ["z\cav\addons\textures\data\tagging\tag_cav_red_ca.paa"],
    "z\cav\addons\textures\data\tagging\icon_action_red_ca.paa"
] call ace_tagging_fnc_addCustomTag;

missionNamespace setVariable [QEGVAR(mission,tagging), true];
