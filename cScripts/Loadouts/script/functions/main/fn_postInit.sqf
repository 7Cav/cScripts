#include "..\script_component.hpp"
private ["_units", "_loadout"];

if (isServer) then {
    [] call FUNC(synchGroupIDs);
    if (GVAR(usesACRE)) then { [] call FUNC(setupRadios) };
};
if (!hasInterface) exitWith {};

// - Setup checks -----------------------------------------
if !(isClass (missionConfigFile >> "RscPoppyMessageBox")
    && isClass (missionConfigFile >> "CfgPoppy")) exitWith {
    hint parseText ("<t color='#cf1226' size='2'>Warning</t><br />"
        + """Poppy.cfg"" was not included in your description.ext. "
        + "Please go through the setup instructions again to check "
        + "how to setup Poppy properly.<br /><br />"
        + "Because of this error, Poppy will not work properly and "
        + "will now shutdown.");
};

if !(isClass (missionConfigFile >> "CfgLoadouts")) exitWith {
    ["Poppy could not find your loadout config."] call FUNC(logError);
    [] spawn FUNC(showMessageBox);
    player addAction ["Configure Loadouts", FUNC(showArsenal), [], 0, false, true];
};

// - Applying loadouts ------------------------------------
_units = if (isMultiplayer && {!is3DENMultiplayer}) then {
    [player]
} else {
    if (getNumber (missionConfigFile >> "CfgPoppy" >> "enableAILoadoutsSP") == 1) then {
        switchableUnits select {local _x}
    } else {
        [player]
    };
};
{
    _loadout = [_x] call FUNC(selectLoadout);
    [_x, _loadout] call FUNC(applyLoadout);

    false
} count _units;

// - Misc -------------------------------------------------
if (getNumber (missionConfigFile >> "CfgPoppy" >> "showLoadoutInBriefing") == 1) then {
    [] call FUNC(createBriefingEntry);
};

if (!isMultiplayer || {is3DENMultiplayer}) then {
    player addAction ["Configure Loadouts", FUNC(showArsenal), [], 0, false, true];
};

if (count GVAR(log) > 0) then {
    [] spawn FUNC(showMessageBox);
};
