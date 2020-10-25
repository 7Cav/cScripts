class cScripts {
    class init {
        file = "cScripts\cavFnc\functions\init";
        class initACELoadouts {};
        class initAI {};
        
        class initSupply {};
        class initVehicle {};

        class initStaging {};

        class initDocuments {};

        class initStartupHint {};

        class initModulesAchilles {};
        class initModulesZen {};

        class initTagging {};

        class initFortify {};
        class initItemReplace {};
        
        class initCuratorObjectPlaced {};
    };
    class documents {
        file = "cScripts\cavFnc\functions\documents";
        class Doc_Info {};
        class Doc_Radio {};
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
        class doMedicalCrate {};

        class doEmptyCrate {};
    };
    class players {
        file = "cScripts\cavFnc\functions\players";
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
        class setActiveRadio {};
        
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
        class addHaloJump {};

        class setVehicleLable {};
    };
    class systems {
        file = "cScripts\cavFnc\functions\systems";
        class setVehicleInventory {};
        class setVehicleSettings {};

        class addInsigniaSelection {};
        class addInsigniaSelectionList {};

        class setupLoadoutSelection {};
        class setupLoadoutCategories {};
        class addLoadoutSelection {};

        class getStagingZone {};
        class inStagingZone {};
        
        class deleteDroppedObjects {};

       // Plane jump
        class doJump {};
        class doHaloJump {};
        class handleJump {};

        // Buttons and options
        class addReGear {};
        class addHeal {};
        class addArsenal {};
        class addAceCategory {}; // depricated => createActionCategory
        class createActionCategory {};
        class addLoadoutAction {};

        class doGetOutHeloSide {};

        class addObjectToCurator {};

        class getChannelName {};

        class addFortifyArea {};

        class createVehicleLable {};
        class getVehicleLable {};

        class checkVehicle {};

        class getServerMetrics {};
        class checkFile {};
    };
    class modules {
        file = "cScripts\cavFnc\functions\modules";
        // Achilles
        class achillesModuleEnableUnitSimulation {};

        class achillesModuleCreateStarterCrate {};
        class achillesModuleCreateFieldHospital {};
        class achillesModuleCreateMedicalCrate {};
        class achillesModuleCreateSupplyCrate {};
        class achillesModuleCreateSpecialWeaponsCrate {};

        class achillesModuleApplyVehicleLable {};
        class achillesModuleApplyVehicleInventory {};

        class achillesModuleMakeDoctor {};
        class achillesModuleMakeEngineer {};

        class achillesModuleRegearTrooper {};

        class achillesModuleCallEndex {};
        class achillesModuleAddToAlive {};

        // Zen
        class zenModuleEnableUnitSimulation {};

        class zenModuleCreateFieldHospital {};
        class zenModuleCreateMedicalCrate {};
        class zenModuleCreateStarterCrate {};
        class zenModuleCreateSupplyCrate {};

        class zenModuleRegearTrooper {};
        
        class zenModuleCallEndex {};
    };

    class helpers {
        file = "cScripts\cavFnc\functions\helpers";
        class exportContainerToArsenal {};
        class exportLoadoutContentToArsenal {};
        class exportLoadoutToArsenal {};
    };

    class gear {
        file = "cScripts\cavFnc\functions\gear";
        class gear_preInit { preInit = 1; };
        class gear_postInitProxy { postInit = 1; };
        class gear_postInit {};

        class gear_applyLoadout {};
        class gear_applyCosmetics {};
        class gear_applyAbilities {};

        class gear_selectLoadout {};
        class gear_synchGroupIDs {};   
        class gear_getSideConfig {};
        
        class gear_setupRadios {};

        // Save and Load
        class gear_saveLoadout {};
        class gear_loadLoadout {};
        class gear_removeLoadout {};
        class gear_hasSavedLoadout {};
        
    };

    class debug {
        file = "cScripts\cavFnc\functions\debug";
        class logError {};
        class logInfo {};
        class logWarning {};

        class diag_dumpPlayer {};
    };
};
