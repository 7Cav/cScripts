// Add diary records to all players.
call cScripts_fnc_initDocuments;

// Changes All Veichles and NATO crates on mission start.
call cScripts_fnc_init;

// Set time in seconds for Red Light startup hint.
[60] call cScripts_fnc_initMissionStartHint;