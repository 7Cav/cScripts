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

        class initCuratorHeloFRIES {};
        class initCuratorHeloGetOutRL {};
    };
    class DiaryRecord {
        file = "cScripts\cavFnc\functions\init\DiaryRecord";
        class Doc_Info {};
        class Doc_MissionControl {};

        class DocRadio_LACEACE {};
        class DocRadio_MEDEVAC {};
        class DocRadio_ROTARYPICKUP {};
        class DocRadio_SPOTREP {};
    };

    class main {
        file = "cScripts\cavFnc\functions\main";
        class doStarterCrate {};
        class doStarterCrateSupplies {};
    };

    class supplies {
        file = "cScripts\cavFnc\functions\supplies";
        class doSupplyCrate {};

        class doAmmoCrate {};
        class doExplosivesCrate {};
        class doGrenadesCrate {};
        class doLaunchersCrate {};
        class doMedicalCrate {};
        class doSpecialWeaponsCrate {};
        class doWeaponsCrate {};
    };

    class systems {
        file = "cScripts\cavFnc\functions\systems";
        class addReGear {};
        class addHeal {};
        class addArsenal {};
        class addAceCategory {};

        class addGetOutHelo {};
        class doGetOutHeloLeft {};
        class doGetOutHeloRight {};
        class addJump {};
        class doJump {};
    };
    class selections {
        file = "cScripts\cavFnc\functions\selections";
        class initQuickSelections {};
        class addQuickSelection {};
        class initInsigniaSelections {};
        class addInsigniaSelection {};
    };

    class misc {
        file = "cScripts\cavFnc\functions\misc";
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
    };
};
