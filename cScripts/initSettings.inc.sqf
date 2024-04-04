private _cScriptSettings = "cScripts Mission Settings";

// 1; Mission
[ // Mission Type
    QEGVAR(Settings,setMissionType),
    "LIST",
    ["Mission Type", "This will deside on what kind of startup hint you get on mission start."],
    [_cScriptSettings, "1; Mission"],
    [[0,1,2,3], ["Custom", "Operation", "Training", "Public"], 1],
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Ai setting
    QEGVAR(Settings,setAiSystemDifficulty),
    "LIST",
    ["AI Setting", "This adjustes the ai and make them less godlike and more arcade to play against."],
    [_cScriptSettings, "1; Mission"],
    [[0,1,2], ["Arma Default", "Adjusted", "Faction Based"], 2],
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Ai setting
    QEGVAR(Settings,AllowAILoadouts),
    "CHECKBOX",
    ["AI Loadouts (Experimental)", "Allow gear system to apply loadouts to AI units as well as player."],
    [_cScriptSettings, "1; Mission"],
    false,
    true,
    {},
    true
] call CBA_fnc_addSetting;

//2; Radios
[ // Enable
    QEGVAR(Settings,enableRadios),
    "CHECKBOX",
    ["Enable","Allow cScripts to set up and handle radio distrubution"],
    [_cScriptSettings, "2; Radios"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Long Range Radio Channels
    QEGVAR(Settings,setRadioChannelNames),
    "EDITBOX",
    ["Long Range Radio Channels (ACRE)","Array of radio channels used for ACRE the index of the array translate to channel."],
    [_cScriptSettings, "2; Radios"],
    '["UNUSED","AVIATION","VIKING","LANCER","BANSHEE","SABRE","BANDIT","MISFIT","HAVOC","IDF-1","IDF-2","CAS-1","CAS-2","GROUND-TO-AIR","ATLAS","FARP","CONVOY","ZEUS","CAG","COMMAND"]',
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Squad Radio Channels
    QEGVAR(Settings,setRadio),
    "CHECKBOX",
    ["Squad Radio Channels (ACRE)","Allow radio channels to be changed based on player squadname."],
    [_cScriptSettings, "2; Radios"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;


// 3; Player
[ // Documents
    QEGVAR(Settings,showDiaryRecords),
    "CHECKBOX",
    ["Documents","Allow the mission to write diary help documents."],
    [_cScriptSettings, "3; Player"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Rank
    QEGVAR(Settings,setPlayerRank),
    "CHECKBOX",
    ["Rank","Allow mission to apply arma rank based on name rank prefixes."],
    [_cScriptSettings, "3; Player"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Tagging
    QEGVAR(Settings,allowCustomTagging),
    "CHECKBOX",
    ["Custom Tagging","Allow players to spray custom taggs."],
    [_cScriptSettings, "3; Player"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Insignia
    QEGVAR(Settings,allowInsigniaApplication),
    "CHECKBOX",
    ["Insignia","Automaticly apply insignias based on squad name."],
    [_cScriptSettings, "3; Player"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Apply Earplugs
    QEGVAR(Settings,addEarplugs),
    "CHECKBOX",
    ["Apply Earplugs","Automaticly apply earplugs to players on spawn and respawn."],
    [_cScriptSettings, "3; Player"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;


// 4; Staging
[ // Enable
    QEGVAR(Settings,enableStagingSystem),
    "CHECKBOX",
    ["Enable","Enables the staging system."],
    [_cScriptSettings, "4; Staging"],
    true,
    true,
    {},
    false
] call CBA_fnc_addSetting;
[ // Show all loadouts
    QEGVAR(Settings,showAllLoadouts),
    "CHECKBOX",
    ["Show all loadouts","Allow the selection of any loadouts from the personal selection menu."],
    [_cScriptSettings, "4; Staging"],
    false,
    true,
    {
        params ["_value"];
        { EGVAR(Staging,showAllLoadouts) = _value; } remoteExecCall ["call"];
    },
    false
] call CBA_fnc_addSetting;
[ // Use Filtered Arsenal
    QEGVAR(Settings,useFilteredArsenal),
    "CHECKBOX",
    ["Use Filtered Arsenal","Use a filtered or show all items in the staging arsenal."],
    [_cScriptSettings, "4; Staging"],
    true,
    true,
    {},
    false
] call CBA_fnc_addSetting;

// 5; Vehicle
[ // Enable
    QEGVAR(Settings,enableVehicleSystem),
    "CHECKBOX",
    ["Enable", "Enables scripted settings and functions to apply to vehicles."],
    [_cScriptSettings, "5; Vehicle"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Pylon
    QEGVAR(Settings,enableVehiclePylon),
    "CHECKBOX",
    ["Pylon", "Enables scripted loadouts or pylon to be applied to vehicles based on faction"],
    [_cScriptSettings, "5; Vehicle"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Loadouts
    QEGVAR(Settings,enableVehicleInventory),
    "CHECKBOX",
    ["Inventory", "Enables scripted inventory to be applied to vehicles based on faction"],
    [_cScriptSettings, "5; Vehicle"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Radio
    QEGVAR(Settings,enableVehicleRadios),
    "CHECKBOX",
    ["Radio", "Enables vehicles radio to be enabled and set on vehicles"],
    [_cScriptSettings, "5; Vehicle"],
    false,
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Factions
    QEGVAR(Settings,vehicleFactions),
    "EDITBOX",
    ["Factions","Array of factions allowing system loadout and pylon changes"],
    [_cScriptSettings, "5; Vehicle"],
    '["BLU_F", "BLU_CTRG_F", "BLU_T_F", "BLU_USA_7CAV_F", "rhs_faction_usaf", "rhs_faction_usarmy", "rhs_faction_usarmy_d", "rhs_faction_usarmy_wd", "rhs_faction_usmc", "rhs_faction_usmc_d", "rhs_faction_usmc_wd", "rhs_faction_usn","rhs_faction_socom","USAF"]',
    true,
    {},
    true
] call CBA_fnc_addSetting;


// 6; Item Replacement system
[ // Enable
    QEGVAR(Settings,allowReplaceItem),
    "CHECKBOX",
    ["Enable","Allow objects to be replaced with streamlined gear for consistency."],
    [_cScriptSettings, "6; Item Replacement"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Medical Items
    QEGVAR(Settings,replaceMedical),
    "LIST",
    ["Medical Items","Allow medical items to be replaced with our custom ones.\nNote: this system will not be disabled if the ace medical convert items is enabled."],
    [_cScriptSettings, "6; Item Replacement"],
    [[0,1], ["Disabled", "Convert medical equipment"], 1],
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Magazines
    QEGVAR(Settings,replaceMagazines),
    "LIST",
    ["Magazines","Force specific usage of sertain objects"],
    [_cScriptSettings, "6; Item Replacement"],
    [[0,1,2], ["Disabled", "Use RHS then ACE magazines", "Use ACE then RHS magazines"], 0],
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // M67 Fragmentation Grenade
    QEGVAR(Settings,replaceHandGrenades),
    "LIST",
    ["M67 Fragmentation Grenade","Force specific usage of sertain objects"],
    [_cScriptSettings, "6; Item Replacement"],
    [[0,1,2], ["Disabled", "Use ACE M67", "Use RHS M67"], 1],
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // M84 Stun Grenade
    QEGVAR(Settings,replaceStunGrenades),
    "LIST",
    ["M84 Stun Grenade","Force specific usage of sertain objects"],
    [_cScriptSettings, "6; Item Replacement"],
    [[0,1,2], ["Disabled", "Use ACE M84", "Use RHS M84"], 1],
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Smoke Grenade
    QEGVAR(Settings,replaceSmokeGrenades),
    "LIST",
    ["Smoke Grenade","Force specific usage of sertain objects"],
    [_cScriptSettings, "6; Item Replacement"],
    [[0,1,2], ["Disabled", "Use ACE Smokes", "Use RHS Smokes"], 1],
    true,
    {},
    true
] call CBA_fnc_addSetting;


// 7; Combat Jump Simulation
[ // Simulation Type
    QEGVAR(Settings,jumpSimulation),
    "LIST",
    ["Simulation Type","Combat jump simulation is a system that checks for lose equiped gear in the form of;\nnight vision googles, hats or glasses and make you lose the on a combat jump.\n    None: No simulation is done.\n    Basic: Lose gear unassigned.\n    Advanced: Lose gear is removed."],
    [_cScriptSettings, "7; Combat Jump Simulation"],
    [[0,1,2], ["None", "Basic", "Advanced"], 2],
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Include Night Vision Googles
    QEGVAR(Settings,jumpSimulationNVG),
    "CHECKBOX",
    ["Include Night Vision Googles","Include equiped Night Vison Googles in the simulation."],
    [_cScriptSettings, "7; Combat Jump Simulation"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Include Non-combat Googles
    QEGVAR(Settings,jumpSimulationGlasses),
    "CHECKBOX",
    ["Include Non-combat Googles","Include Non-combat Googles in the simulation. This refere to sunshades and simular non-safety googles."],
    [_cScriptSettings, "7; Combat Jump Simulation"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;
[ // Include Non-combat Headgear
    QEGVAR(Settings,jumpSimulationHat),
    "CHECKBOX",
    ["Include Non-combat Headgear","Include Non-combat Headgear in the simulation. This refere to hats bandanas and baretes."],
    [_cScriptSettings, "7; Combat Jump Simulation"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;


// 8; Zeus
[ // Enable Custom Zeus Moduels
    QEGVAR(Settings,enable7cavZeusModules),
    "CHECKBOX",
    ["Enable Custom Zeus Moduels","Allow mission to add 7Cav moduels using the Achilles or ZEN framework."],
    [_cScriptSettings, "8; Zeus"],
    true,
    true,
    {},
    true
] call CBA_fnc_addSetting;


// 9; Other
[ // Primary Clan Tag
    QEGVAR(Settings,primaryClanTag),
    "EDITBOX",
    ["Primary Clantag","Primary clan tag to to check for"],
    [_cScriptSettings, "9; Other"],
    '7CAV',
    true,
    {},
    true
] call CBA_fnc_addSetting;
