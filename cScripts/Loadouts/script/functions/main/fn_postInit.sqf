#include "..\script_component.hpp"

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
    [] call FUNC(showMessageBox);
    player addAction ["Configure Loadouts", FUNC(showArsenal), [], 0, false, true];
};

// - Misc -------------------------------------------------
if (GVAR(inDevMode)) then {
    player addAction ["Configure Loadouts", FUNC(showArsenal), [], 0, false, true];
};

[] call FUNC(showMessageBox);
