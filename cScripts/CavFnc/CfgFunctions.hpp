class cScripts {
    class init {
        file = "cScripts\cavFnc\functions\init";
        class initVehicle {};
        
        class initDocuments {};
        class initMissionStartHint {};
        class initMissionStartObjects {};
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
        class addStarterCrate {};
        class addStarterCrateSupplies {};
    };
    class supplies {
        file = "cScripts\cavFnc\functions\supplies";
        class equipCrate {};
        class equipMedicalCrate {};
        
        class equipCrateAmmo {};
        class equipCrateExplosives {};
        class equipCrateGrenades {};
        class equipCrateLaunchers {};
        class equipCrateSpecialWeapons {};
        class equipCrateWeapons {};
    };

    class systems {
        file = "cScripts\cavFnc\functions\systems";
        class addReGear {};
        class addArsenal {};
        class addAceCategory {};
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
        class flag {};
        class UH60TailNumber {};
    };

    class obsolete {
        file = "cScripts\cavFnc\functions\obsolete";
        class initMain {};
        class initMainSandbox {};
        class equipBase {};
    };
};