
class CfgORBAT {

    class 1BN7CAV {
        id = 1;
        idtype = 0;
        side = "west";
        size = "Battalion";
        type = "Unknown";
        insignia = "";
        commander = "Bader.S";
        commanderRank = "Colonel";
        text = "%1 %3, 7th Cavalry Regiment [Combined Arms]";
        textShort = "1-7 CAV";

        class HHC {
            id = HHC;
            idtype = 0;
            side = "west";
            size = "Company";
            type = "HQ";
            insignia = "";
            commander = "Savage.T";
            commanderRank = "Captain";
            text = "Headquarters and Headquarters Company";
            textShort = "HHC/1-7CAV";    
        };

        class ACO {
            id = A;
            idtype = 2;
            side = "west";
            size = "Company";
            type = "CombatAviation";
            insignia = "";
            commander = "Blackburn.J";
            commanderRank = "Major";
            text = "%1 %3 (%2)";
            textShort = "A/1/7CAV";
            
            class 1PLT {
                id = 1;
                idtype = 0;
                side = "west";
                size = "Platoon";
                type = "GeneralSupport";
                insignia = "";
                commander = "Thumper.N";
                commanderRank = "Lieutenant";
                text = "%1 %3 (%2)";
                textShort = "1/A/1-7CAV";
            };

            class 2PLT {
                id = 2;
                idtype = 0;
                side = "west";
                size = "Platoon";
                type = "AttackRecon";
                insignia = "";
                commander = "Ratcliff.M";
                commanderRank = "Lieutenant";
                text = "%1 %3 (%2)";
                textShort = "2/A/1-7CAV";
            };
            
        };

        class BCO {
            id = B;
            idtype = 2;
            side = "west";
            size = "Troop";
            type = "Cavalry";
            insignia = "";
            commander = "Tharen.R";
            commanderRank = "Captain";
            text = "%1 %3 (%2)";
            textShort = "B/1-7CAV";
            
            class 1PLT {
                id = 1;
                idtype = 0;
                side = "west";
                size = "Platoon";
                type = "Armored";
                insignia = "";
                commander = "Miller.B";
                commanderRank = "Lieutenant";
                text = "%1 %3 (%2)";
                textShort = "1/B/1-7CAV";
            };

            class 2PLT {
                id = 2;
                idtype = 0;
                side = "west";
                size = "Platoon";
                type = "MechanizedInfantry";
                insignia = "";
                commander = "Rini.A";
                commanderRank = "Lieutenant";
                text = "%1 %3 (%2)";
                textShort = "2/B/1-7CAV";
            };

            class 3PLT {
                id = 3;
                idtype = 0;
                side = "west";
                size = "Platoon";
                type = "Medical";
                insignia = "";
                commander = "Kane.T";
                commanderRank = "Lieutenant";
                text = "%1 %3 (%2)";
                textShort = "3/B/1-7CAV";
            };
        };

        class CCO {
            id = C;
            idtype = 2;
            side = "west";
            size = "Company";
            type = "Infantry";
            insignia = "";
            commander = "Rosefield.M";
            commanderRank = "Major";
            text = "%1 %3 (%2)";
            textShort = "C/1-7CAV";

            class 1PLT {
                id = 1;
                idtype = 0;
                side = "west";
                size = "Platoon";
                type = "Airborne";
                insignia = "";
                commander = "Graton.M";
                commanderRank = "Lieutenant";
                text = "%1 %3 (%2)";
                textShort = "1/C/1-7CAV";
            };

            class 2PLT {
                id = 2;
                idtype = 0;
                side = "west";
                size = "Platoon";
                type = "Airborne";
                insignia = "";
                commander = "LaCombe.M";
                commanderRank = "Lieutenant";
                text = "%1 %3 (%2)";
                textShort = "2/C/1-7CAV";
            };
        };

        class DCO {
            id = D;
            idtype = 2;
            side = "west";
            size = "Company";
            type = "Support";
            insignia = "";
            commander = "";
            commanderRank = "Major";
            text = "%1 %3 (%2)";
            textShort = "D/1-7CAV";
        };

        class ECO {
            id = E;
            idtype = 2;
            side = "west";
            size = "Company";
            type = "Infantry";
            insignia = "";
            commander = "Parsons.B";
            commanderRank = "Major";
            text = "%1 %3 (%2)";
            textShort = "E/1-7CAV";

            class 1PLT {
                id = 1;
                idtype = 0;
                side = "west";
                size = "Platoon";
                type = "Infantry";
                insignia = "";
                commander = "Nguyen.L";
                commanderRank = "Lieutenant";
                text = "%1 %3 (%2)";
                textShort = "1/E/1-7CAV";
            };

            class 2PLT {
                id = 2;
                idtype = 0;
                side = "west";
                size = "Platoon";
                type = "Infantry";
                insignia = "";
                commander = "LaMar.S";
                commanderRank = "Lieutenant";
                text = "%1 %3 (%2)";
                textShort = "2/E/1-7CAV";
            };
        };
    };
};