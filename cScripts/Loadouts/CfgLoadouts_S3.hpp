/*
GearVersionDate: 160801
*/
class S3_BASE : CommonBlufor {
    uniform[] = {"rhs_uniform_g3_blk"};
    vest[] = {"V_TacVest_oli"};
    headgear[] = {"rhsusf_Bowman"};
    nvgs[] = {""};
    goggles[] = {"G_Tactical_Clear"};
    backpack[] = {"tf_rt1523g_black"};
    primary[] = {
        "rhs_weap_m4a1_carryhandle_pmag"
    };
    magazines[] = {
        _MAG_PRIMARY, 3,

        Chemlight_Blue, 2,
        Chemlight_Red, 2
    };
    items[] = {
        ACE_packingBandage, 10,
        ACE_morphine, 2,
        ACE_epinephrine, 2,
        ACE_tourniquet,
        
        ACE_EarPlugs,
        ACE_CableTie, 2,
        ACE_Flashlight_MX991,
        ACE_DAGR,
        ACE_MapTools,
        ACE_IR_Strobe_Item
    };
    
    binoculars[] = {""};
    map[] = {"ItemMap"};
    watch[] = {"ItemWatch"};
    compass[] = {"ItemCompass"};
    gps[] = {"ItemGPS"};
    
    insignia[] = {"Curator"};
};

class DEBUG : S3_BASE {};
class DEBUG_1 : S3_BASE {};
class DEBUG_2 : S3_BASE {};
class DEBUG_3 : S3_BASE {};
class DEBUG_4 : S3_BASE {};

class MissionControl : S3_BASE {};
class MissionControl_1 : S3_BASE {};
class MissionControl_2 : S3_BASE {};
class MissionControl_3 : S3_BASE {};
class MissionControl_4 : S3_BASE {};

class MissionControlUnit : S3_BASE {};
class MissionControlUnit_1 : S3_BASE {};
class MissionControlUnit_2 : S3_BASE {};
class MissionControlUnit_3 : S3_BASE {};
class MissionControlUnit_4 : S3_BASE {};

class MC : S3_BASE {};
class MC_1 : S3_BASE {};
class MC_2 : S3_BASE {};
class MC_3 : S3_BASE {};
class MC_4 : S3_BASE {};

class Zeus : S3_BASE {};
class Zeus_1 : S3_BASE {};
class Zeus_2 : S3_BASE {};
class Zeus_3 : S3_BASE {};
class Zeus_4 : S3_BASE {};

class ZeusUnit : S3_BASE {};
class ZeusUnit_1 : S3_BASE {};
class ZeusUnit_2 : S3_BASE {};
class ZeusUnit_3 : S3_BASE {};
class ZeusUnit_4 : S3_BASE {};