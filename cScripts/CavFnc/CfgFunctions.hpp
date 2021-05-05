class cScripts {
    class init {
        file = "cScripts\cavFnc\functions\init";
        class init_aceArsenalDefault {};
        class init_aceTagging {};
        class init_aceItemReplace {};
        
        class init_skillAdjustment {};
        class init_vehicle {};

        class init_diary {};
        class init_message {};
        
        class init_staging {};

        class initModulesAchilles {};
        class initModulesZen {};


        class init_eventHandlers {};

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
        class addCargo {};
        class getCargo {};
        class setSpaceSize {};
        class checkItemValidity {};
        class makeCargoCrate {};

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
        class addLoadoutAction {};

        class addGetOutHelo {};

        class addLineJump {};
        class addHaloJump {};

        class setVehicleLable {};
        
        class addStagingZone {};
    };
    class systems {
        file = "cScripts\cavFnc\functions\systems";
        class addInsigniaSelection {};
        class addInsigniaSelectionList {};

        class setupLoadoutSelection {};
        class setupLoadoutCategories {};
        class addLoadoutSelection {};

        class checkStagingZone {};

        class deleteDroppedObjects {};

       // Plane jump
        class para_lineJump {};
        class para_haloJump {};
        class para_equipment {};
        class para_backpack {};

        // Buttons and options
        class addReGear {};
        class addHeal {};
        class addArsenal {};
        class getArsenalWhitelist {};
        class getUnitArsenalDefault {};
        
        class createActionCategory {};

        class doGetOutHeloSide {};

        class addObjectToCurator {};

        class getChannelName {};
        class clearRadioIds {};

        class createVehicleLable {};
        class getVehicleLable {};

        class getIcon {};

        class getServerMetrics {};
    };
    class vehicle {
        file = "cScripts\cavFnc\functions\vehicle";
        class vehicle_addInventory {};
        class vehicle_addFunctions {};
        class vehicle_addCosmetics {};
        class vehicle_addRadio {};
        class vehicle_setRadio {};

        class vehicle_addMagazines {};
        class vehicle_clearAllMagazines {};

        // Staging
        class vehicle_addStagingActions {};

        class vehicle_addRegearAction {};
        class vehicle_addRepairAction {};

        class vehicle_addPylonSelection {};
        class vehicle_setupPylonCategories {};
    };
    class modules {
        file = "cScripts\cavFnc\functions\modules";
        class zenModule_EnableUnitSimulation {};

        class zenModule_CreateFieldHospital {};
        class zenModule_CreateMedicalCrate {};
        class zenModule_CreateStarterCrate {};
        class zenModule_CreateSupplyCrate {};

        class zenModule_RegearTrooper {};
        class zenModule_ResetPlayerRadio {};

        class zenModule_CallEndex {};
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
        class gear_getSideConfig {};
        
        class gear_setupRadios {};

        // Save and Load
        class gear_saveLoadout {};
        class gear_loadLoadout {};
        class gear_removeLoadout {};
        class gear_hasSavedLoadout {};

        // other
        class gear_getLoadoutRole {};
        class gear_getCurrentLoadout {};
    };
    class diag {
        file = "cScripts\cavFnc\functions\diag";
        class error {};
        class info {};
        class log {};
        class warning {};
    };
    class depricated {
        file = "cScripts\cavFnc\functions\depricated";
        class addAceCategory {}; // depricated => createActionCategory
    };
};
