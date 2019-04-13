class cScripts {
    class init {
        file = "cScripts\cavFnc\functions\init";
        class initACELoadouts {};

        class initSupply {};
        class initVehicle {};

        class initDocuments {};

        class initStartupHint {};

        class initModules {};
        class initTagging {};

        class initCuratorObjectPlaced {};
    };
    class DiaryRecord {
        file = "cScripts\cavFnc\functions\documents";
        class Doc_Info {};
        class Doc_MissionControl {};

        class DocRadio_LACEACE {};
        class DocRadio_MEDEVAC {};
        class DocRadio_ROTARYPICKUP {};
        class DocRadio_SPOTREP {};
        
        class DocChklist_CFF {};
        class DocChklist_JMTASKS {};
        class DocChklist_LZSPECS {};
        class DocChklist_LZINSERT {};
        class DocChklist_LZEXTRACT {};
    };
    class logistics {
        file = "cScripts\cavFnc\functions\logistics";
        class doStarterCrate {};
        class doStarterCrateSupplies {};
        class doFieldHospital {};

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
    class players {
        file = "cScripts\cavFnc\functions\players";
        class setPreInitPlayerSettings {};
        class setPostInitPlayerSettings {};

        class getPlayerRank {};
        class setPlayerRank {};
        
        class getPlayerRole {};

        class getPlayerName {};
        
        class doPlayerAnnouncement {};

        class getRadioChannel {};
        class setRadioChannel {};

        class getCompanyVariable {};
        class hasCompanyVariable {};
        
        class getCavSquadName {};
        class getSquadInsignia {};
    };
    class systems {
        file = "cScripts\cavFnc\functions\systems";
        class setVehicleInventory {};
        class setVehicleSettings {};

        class addQuickSelection {};
        class addInsigniaSelection {};

        class addJump {};
        class doJump {};

        // Buttons and options
        class addReGear {};
        class addHeal {};
        class addArsenal {};
        class addAceCategory {};

        class addGetOutHelo {};
        class doGetOutHeloLeft {};
        class doGetOutHeloRight {};

        class gate {};
        class teleport {};

        class addObjectToCurator {};
    };
    class selections {
        file = "cScripts\cavFnc\functions\selections";
        class initForgeSelections {};
        class initQuickSelections {};
        class initInsigniaSelections {};
    };
    class simulation {
        file = "cScripts\cavFnc\functions\simulation";
        class sim_jump {};
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
        class moduleCreateFieldHospital {};
        class moduleCreateMedicalCrate {};
        class moduleCreateSupplyCrate {};
        class moduleCreateSpecialWeaponsCrate {};

        class moduleApplyVehicleLable {};
        class moduleApplyVehicleInventory {};

        class moduleApplyFlag {};
        class moduleMakeDoctor {};
        class moduleMakeEngineer {};

        class moduleRegearTrooper {};

        class moduleCallEndex {};
    };

    class helpers {
        file = "cScripts\cavFnc\functions\helpers";
        class exportBoxToArsenal {};
        class exportLoadoutsToArsenal {};
    };

    class debug {
        file = "cScripts\cavFnc\functions\debug";
        class logError {};
        class logInfo {};
        class logWarning {};
    };
};
