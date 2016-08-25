class cScripts {

    class main {
        file = "cScripts\cavFnc\functions\main";
        class initMain {};
        class initMainSandbox {};
        class initVehicle {};

        class addReGear {};
        class addArsenal {};
    };
    class supplies {
        file = "cScripts\cavFnc\functions\supplies";
        class checkCrate {};
        class equipBase {};
        class equipCrate {};
        class equipMedicalCrate {};
    };

    class quickSelection {
        file = "cScripts\cavFnc\functions\quickSelection";
        class initQuickSelections {};
        class addQuickSelection {};
    };
    class insigniaSelection {
        file = "cScripts\cavFnc\functions\insigniaSelection";
        class initInsigniaSelections {};
        class addInsigniaSelection {};
    };

    class documentation {
        file = "cScripts\cavFnc\functions\documentation";
        class initDoc { postInit = 1; };

        class Doc_Info {};
        class Doc_MissionControl {};

        class DocRadio_LACEACE {};
        class DocRadio_MEDEVAC {};
        class DocRadio_ROTARYPICKUP {};
        class DocRadio_SPOTREP {};

        class DocSandbox_Info {};
        class DocSandbox_MissionControl {};
        class DocSandbox_MedicalSystemBasic {};
        class DocSandbox_MedicalSystemAdvanced {};
        class DocSandbox_MedicalSystemAdvancedLite {};
    };
    class misc {
        file = "cScripts\cavFnc\functions\misc";
        class flag {};
        class addAceCategory {};
    };
};