//Waldie.A - Added 10/10/18 - sets up S5 cameraman

class CAV_S5_Base : CommonBlufor {
    uniform[] = {"U_C_Journalist"};
    vest[] = {"V_Press_F"};
    backpack[] = {"B_AssaultPack_blk"};
    primary[] = {"","","","",""};
    secondary[] = {"","","","",""};
    launcher[] = {"","","","",""};
    magazines[] = {""};
    items[] = {"ACE_microDAGR","ACE_MapTools","ACE_Flashlight_XL50","ACRE_PRC152_ID_1","ACRE_PRC152_ID_2","ACE_morphine",3,"ACE_personalAidKit","ACE_elasticBandage",15,"ACE_quikclot",15,"ACE_EntrenchingTool","ACE_NVG_Wide"};
    binoculars[] = {"ACE_Vector"};
    compass[] = {"ItemCompass"};
    goggles[] = {"rhs_googles_clear"};
    gps[] = {"ItemGPS"};
    headgear[] = {"H_PASGT_basic_blue_press_F"};
    map[] = {"ItemMap"};
    nvgs[] = {""};
    watch[] = {"ItemWatch"};
    insignia[] = {""};
    preLoadout = " \
    [(_this select 0), 's5', 2, 2, true] call cScripts_fnc_setPreInitPlayerSettings; \
    (_this select 0) allowDamage false;\
    (_this select 0) setCaptive true;";
    postLoadout = "[(_this select 0),true,true] call cScripts_fnc_setPostInitPlayerSettings;";
};

class S5 : CAV_S5_Base {};
class S5_1 : CAV_S5_Base {};
class S5_2 : CAV_S5_Base {};
class S5_3 : CAV_S5_Base {};
class S5_4 : CAV_S5_Base {};
