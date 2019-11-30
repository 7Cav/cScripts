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

        class initFortify {};

        class initCuratorObjectPlaced {};
    };
    class documents {
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

        class getPlayerClan {};
        class isPlayerClan {};

        class getPlayerRank {};
        class setPlayerRank {};

        class getPlayerRole {};

        class getPlayerName {};

        class setTeamColor {};

        class doPlayerAnnouncement {};

        class getRadioChannel {};
        class setRadioChannel {};

        class getCompanyVariable {};
        class hasCompanyVariable {};
        
        class getSquadName {};
        class getSquadInsignia {};
    };
    class mission {
        file = "cScripts\cavFnc\functions\mission";
        class gate {};
        class teleport {};

        class addGetOutHelo {};

        class addJump {};

        class setVehicleLable {};
    };
    class systems {
        file = "cScripts\cavFnc\functions\systems";
        class setVehicleInventory {};
        class setVehicleSettings {};

        class addQuickSelection {};
        class addInsigniaSelection {};

       // Plane jump
        class doJump {};
        class handleJump {};

        // Buttons and options
        class addReGear {};
        class addHeal {};
        class addArsenal {};
        class addAceCategory {};
        class addLoadoutAction {};

        // Helo get out
        class doGetOutHeloLeft {};
        class doGetOutHeloRight {};

        class addQuickSelectionList {};
        class addInsigniaSelectionList {};

        class addObjectToCurator {};

        class getChannelName {};

        class addFortifyArea {};

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
