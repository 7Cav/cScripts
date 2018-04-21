class cScripts {
    class init {
        file = "cScripts\cavFnc\functions\init";
        class initSupply {};
        class initVehicle {};
        class initHelo {};

        class initDocuments {};

        class initMissionStartHint {};
        class initTrainingStartHint {};
        class initCustomStartHint {};

        class initModules {};

        class initCuratorHeloGetOutRL {};
    };
    class DiaryRecord {
        file = "cScripts\cavFnc\functions\documents";
        class Doc_Info {};
        class Doc_MissionControl {};

        class DocRadio_LACEACE {};
        class DocRadio_MEDEVAC {};
        class DocRadio_ROTARYPICKUP {};
        class DocRadio_SPOTREP {};
        class DocRadio_JMTASKS {};
        class DocRadio_CFF {};
        class DocRadio_LZSPECS {};
        class DocRadio_LZINSERT {};
        class DocRadio_LZEXTRACT {};
    };
    class logistics {
        file = "cScripts\cavFnc\functions\logistics";
        class doStarterCrate {};
        class doStarterCrateSupplies {};

        class doSupplyCrate {};

        class doAmmoCrate {};
        class doExplosivesCrate {};
        class doGrenadesCrate {};
        class doLaunchersCrate {};
        class doMedicalCrate {};
        class doSpecialWeaponsCrate {};
        class doWeaponsCrate {};

        class doEmptyCrate {};
    };
    class systems {
        file = "cScripts\cavFnc\functions\systems";
        class setPlayerInitSettings {};
        class setPreInitPlayerSettings {};
        class setPostInitPlayerSettings {};

        class setCavVehicle {};
        class setVehicleInventory {};
        class setVehicleSettings {};

        class addQuickSelection {};
        class addInsigniaSelection {};

        // Buttons and options
        class addReGear {};
        class addHeal {};
        class addArsenal {};
        class addAceCategory {};

        class addGetOutHelo {};
        class doGetOutHeloLeft {};
        class doGetOutHeloRight {};

        class addJump {};
        class doJump {};

        class hasPlatoonVariable {};
        class canSelectLoadout {};
        class canNotSelectLoadout {};
    };
    class selections {
        file = "cScripts\cavFnc\functions\selections";
        class initQuickSelections {};
        class initInsigniaSelections {};
    };

    class misc {
        file = "cScripts\cavFnc\functions\texture";
        class flag {};

        class setVehicleLable {};
        class createVehicleLable {};
        class getVehicleLable {};
    };
    class modules {
        file = "cScripts\cavFnc\functions\modules";
        class moduleCreateStarterCrate {};
        class moduelCreateSupplyCrate {};
        class moduelCreateSpecialWeaponsCrate {};

        class moduleApplyTailNumber {};
        class moduleReadyHelicopter {};
        class moduleApplyFlag {};
        class moduleMakeDoctor {};
        class moduleMakeEngineer {};
    };
    class debug {
        file = "cScripts\cavFnc\functions\debug";
        class logError {};
        class logInfo {}; //will be merged with "attachVehicleLabel"
        class logWarning {};
    };


    
    class deprecated {
        file = "cScripts\cavFnc\functions\deprecated";
        class attachVehicleLabel {};    // replaced with setVehicleLable
        class UH60TailNumber {};        // replaced with setVehicleLable
    };
};
