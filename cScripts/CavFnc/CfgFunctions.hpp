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
        class attachVehicleLabel {};
        class UH60TailNumber {}; //will be merged with "attachVehicleLabel"
        class flag {};
    };
    class modules {
        file = "cScripts\cavFnc\functions\modules";
        class moduleCreateStarterCrate {};
        //class moduleApplySupply {};
        class moduleApplyTailNumber {};
        class moduleReadyHelicopter {};
        class moduleApplyFlag {};
        class moduleMakeDoctor {};
    };
    class debug {
        file = "cScripts\cavFnc\functions\debug";
        class logError {};
        class logInfo {}; //will be merged with "attachVehicleLabel"
        class logWarning {};
    };
};
