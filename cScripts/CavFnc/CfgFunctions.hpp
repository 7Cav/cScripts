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
        class initQuickSelection {};
        class addQuickSelection {};
    };
    class insigniaSelection {
        file = "cScripts\cavFnc\functions\insigniaSelection";
        class initInsigniaSelection {};
        class addInsigniaSelection {};
    };

    class documentation {
        file = "cScripts\cavFnc\functions\documentation";
        class initDoc { postInit = 1; };

        class DocOperation {};
        class DocMissionControl {};

        class DocRadioLACEACE {};
        class DocRadioMEDEVAC {};
        class DocRadioROTARYPICKUP {};
        class DocRadioSPOTREP {};

        class DocSandbox_MissionControl {};
        class DocSandbox_MedicalSystemBasic {};
        class DocSandbox_MedicalSystemAdvanced {};
        class DocSandbox_MedicalSystemAdvancedEasy {};
    };
    class misc {
        file = "cScripts\cavFnc\functions\misc";
        class flag {};
    };
};