class cScripts {
    class main {
        file = "cScripts\cavFnc\functions\main";
        class initMain {};
        class initMainSandbox {};
        class initQuickSelect {};
        class initVehicle {};
    };
    class supplies {
        file = "cScripts\cavFnc\functions\supplies";
        class checkCrate {};
        class equipBase {};
        class equipCrate {};
        class equipMedicalCrate {};
    };
    class insignia {
        file = "cScripts\cavFnc\functions\insignia";
        class initInsignia {};
    };
    class documentation {
        file = "cScripts\cavFnc\functions\documentation";
        class initDoc { postInit = 1; };
        
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