class cScripts {
    class init {
        file = "cScripts\functions\init";
        class init_aceArsenalDefault {};
        class init_aceTagging {};
        class init_aceItemReplace {};
        
        class init_skillAdjustment {};
        class init_vehicle {};
        class init_staging {};

        class init_diary {};
        class init_message {};
        class init_chatCommands {};

        class init_eventHandlers {};

        class init_zenModuels {};
    };
    class documents {
        file = "cScripts\functions\documents";
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
        file = "cScripts\functions\logistics";
        class addCargo {};
        class setCargoAttributes {};
        class checkItemValidity {};
        class createCargoCrate {};

        class doStarterCrate {};
        class doStarterCrateSupplies {};
        class doFieldHospital {};

        class doSupplyCrate {};
        class doMedicalCrate {};

        class doEmptyCrate {};
    };
    class players {
        file = "cScripts\functions\players";
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
        file = "cScripts\functions\mission";
        class gate {};
        class teleport {};
        class addLoadoutAction {};

        class addGetOutHelo {};

        class addLineJump {};
        class addHaloJump {};

        class setVehicleLable {};
        
        class addBaseCrate {};
        class addStagingZone {};
    };
    class systems {
        file = "cScripts\functions\systems";
        class addInsigniaSelection {};
        class addInsigniaSelectionList {};

        class setupLoadoutSelection {};
        class setupLoadoutCategories {};
        class addLoadoutSelection {};

        class checkStagingZone {};

        class deleteDroppedObjects {};

        // Training scripts
        class training_addHitIndicator {};
        class training_clearhitIndicator {};

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

        class getAttendance {};
        class getServerMetrics {};
    };
    class vehicle {
        file = "cScripts\functions\vehicle";
        class vehicle_addInventory {};
        class vehicle_addFunctions {};
        class vehicle_addCosmetics {};
        class vehicle_addRadio {};
        class vehicle_setRadio {};

        // Staging
        class vehicle_addStagingActions {};

        class vehicle_addRegearAction {};
        class vehicle_addRepairAction {};

        class vehicle_addCosmeticSelection {};
        class vehicle_addPylonSelection {};
        class vehicle_setupPylonCategories {};
        
        class vehicle_applyLoadout {};
        class vehicle_addPylonLoadout {};
        class vehicle_getPylon {};

        // Other
        class vehicle_addFlagAction {};
    };
    class modules {
        file = "cScripts\functions\modules";
        class zenModule_EnableUnitSimulation {};

        class zenModule_CreateFieldHospital {};
        class zenModule_CreateMedicalCrate {};
        class zenModule_CreateStarterCrate {};
        class zenModule_CreateSupplyCrate {};

        class zenModule_RegearTrooper {};
        class zenModule_ResetPlayerRadio {};

        class zenModule_stagingZones {};

        class zenModule_CallEndex {};
    };
    class gear {
        file = "cScripts\functions\gear";
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
        file = "cScripts\functions\diag";
        class error {};
        class info {};
        class log {};
        class warning {};
    };
    class testing {
        file = "cScripts\functions\testing";
        class testing_loadoutArrays {};
    };
};
