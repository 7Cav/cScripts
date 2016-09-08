class cScripts {
    class init {
        file = "cScripts\cavFnc\functions\init";
        class initDoc { postInit = 1; };
        class initMissionStartHint { postInit = 1; };
    };

    class main {
        file = "cScripts\cavFnc\functions\main";
        class initMain {};
        class initMainSandbox {};
        class initVehicle {};
    };
    class supplies {
        file = "cScripts\cavFnc\functions\supplies";
        class checkCrate {};

        class equipBase {};
        class equipCrate {};
        class equipMedicalCrate {};
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

    class documentation {
        file = "cScripts\cavFnc\functions\documentation";
        class Doc_Info {};
        class Doc_MissionControl {};

        class DocRadio_LACEACE {};
        class DocRadio_MEDEVAC {};
        class DocRadio_ROTARYPICKUP {};
        class DocRadio_SPOTREP {};
    };

    class misc {
        file = "cScripts\cavFnc\functions\misc";
        class flag {};
    };
};