#define true 1
#define false 0
#define cavYellow {0.922,0.78,0.161,1}
#define cavGrey {0.631,0.631,0.631,1}
#define black {0,0,0,1}
#define white {1,1,1,1}

class RscGarageDialog
{
    idd=1601;
    movingEnable = false;
    enableSimulation = true;
    fadein=0;
    duration = 1e+011;
    fadeout=0;
    onLoad= "";

    controlsBackground[]=
    {
        vehBack,
        vehFrame,
        RscHeaderBack,
        RscVehBack,
        RscVehInfoBack,
        RscVehList,
        vehStatText,
        serverTitleText,
        RscUserStatsBack,
        RscUserStatsText
    };
    controls[]={
        btnSpawn,
        vehTextureDropdown,
        vehSpawnDropdown,
        btnSpawnCavBucks
    };
    objects[]={};

    // placeholder
    class vehBack: IGUIBack {
        idc = 0;
        x = 0 * safezoneW + safezoneX;
        y = 0 * safezoneH + safezoneY;
        w = 1 * safezoneW;
        h = 1 * safezoneH;
        colorBackground[] = {0,0,0,0.5};
    };

    // Background
    class vehFrame: IGUIBack{
        idc = 1;
        x = 0.25 * safezoneW + safezoneX;
        y = 0.25 * safezoneH + safezoneY;
        w = 0.5 * safezoneW;
        h = 0.5 * safezoneH;
        colorBackground[] = cavGrey;
    };

    // Header background (stroke)
    class RscHeaderBack: IGUIBack{
        idc = 2;
        x = 0.255 * safezoneW + safezoneX;
        y = 0.2575 * safezoneH + safezoneY;
        w = 0.49 * safezoneW;
        h = 0.05 * safezoneH;
        colorBackground[] = cavYellow;
    };

    // Header
    class serverTitleText: RscStructuredText{
        idc = 10;
        colorText[] = {1,1,1,1};
        colorBackground[] = black;
        shadow = 0.75;
        x = 0.2575 * safezoneW + safezoneX;
        y = 0.263 * safezoneH + safezoneY;
        w = 0.485 * safezoneW;
        h = 0.04 * safezoneH;
        onMouseButtonDown = "";
        onMouseButtonUp = "";
        onMouseZChanged = "";
        text = "";
    };

    // Left box background
    class RscVehBack: IGUIBack{
        idc = 3;
        x = 0.255 * safezoneW + safezoneX;
        y = 0.3125 * safezoneH + safezoneY;
        w = 0.2425 * safezoneW;
        h = 0.4275 * safezoneH;
        colorBackground[] = cavYellow;
    };

    // Left box content
    class RscVehList: RscListBox{
        idc = 7;
        onLBSelChanged  = "[] spawn cScripts_fnc_vehicleInfo;";
        colorText[] = {1,1,1,1};
        colorDisabled[] = {1,1,1,0.25};
        colorScrollbar[] = {1,1,1,1};
        colorSelect[] = {1,1,1,1};
        colorSelect2[] = {1,1,1,1};
        colorSelectBackground[] = cavYellow;
        colorSelectBackground2[] = black;
        colorBackground[] = black;
        shadow = 0.75;
        x = 0.26 * safezoneW + safezoneX;
        y = 0.3225 * safezoneH + safezoneY;
        w = 0.2325 * safezoneW;
        h = 0.41 * safezoneH;
        
        class ListScrollBar {
            thumb = "#(argb,8,8,3)color(0.922,0.78,0.161,1)";
            arrowEmpty = "#(argb,8,8,3)color(0.631,0.631,0.631,1)";
            arrowFull = "#(argb,8,8,3)color(0.922,0.78,0.161,1)";
            border = "#(argb,8,8,3)color(0.631,0.631,0.631,1)";
            shadow = 0;
        };
    };

    // Right box background
    class RscVehInfoBack: IGUIBack{
        idc = 4;
        x = 0.5025 * safezoneW + safezoneX;
        y = 0.3125 * safezoneH + safezoneY;
        w = 0.2425 * safezoneW;
        h = 0.2175 * safezoneH;
        colorBackground[] = cavYellow;
    };

    // Right box content
    class vehStatText: RscStructuredText{
        idc = 8;
        colorText[] = {1,1,1,1};
        colorBackground[] = black;
        shadow = 0.75;
        size = 0.037;
        x = 0.508 * safezoneW + safezoneX;
        y = 0.3225 * safezoneH + safezoneY;
        w = 0.2325 * safezoneW;
        h = 0.2 * safezoneH;
        onMouseButtonDown = "";
        onMouseButtonUp = "";
        onMouseZChanged = "";
        text = "Select a vehicle to spawn";
    };

    // Vehicle camo dropdown
    class vehTextureDropdown: RscCombo{
        idc = 13;
        colorText[] = black;
        colorBackground[] = white;
        colorSelect[] = white;
        colorSelectBackground[] = cavYellow;
        x = 0.518 * safezoneW + safezoneX;
        y = 0.42 * safezoneH + safezoneY;
        w = 0.1 * safezoneW;
    };

    // Vehicle spawn location dropdown
    class vehSpawnDropdown: RscCombo{
        idc = 15;
        colorText[] = black;
        colorBackground[] = white;
        colorSelect[] = white;
        colorSelectBackground[] = cavYellow;
        x = 0.625 * safezoneW + safezoneX;
        y = 0.42 * safezoneH + safezoneY;
        w = 0.1 * safezoneW;
    };
    
    // Spawn button
    class btnSpawn: RscShortcutButton{
        idc = 6;
        text = "Spawn";
        colorBackground[] = cavYellow; 
        colorBackgroundFocused[] = cavYellow;
        colorDisabled[] = cavGrey;
        colorText[] = white;
        onButtonClick  = "[] spawn cScripts_fnc_createVehicle;";
        x = 0.531 * safezoneW + safezoneX;
        y = 0.48 * safezoneH + safezoneY;
        w = 0.18 * safezoneW;
        h = 0.0375 * safezoneH;
    };

    // Right bottom box background
    class RscUserStatsBack: IGUIBack{
        idc = 11;
        x = 0.5025 * safezoneW + safezoneX;
        y = 0.5425 * safezoneH + safezoneY;
        w = 0.2425 * safezoneW;
        h = 0.1975 * safezoneH;
        colorBackground[] = cavYellow;
    };

    // Right bottom box content
    class RscUserStatsText: RscStructuredText{
        idc = 12;
        colorText[] = {1,1,1,1};
        colorBackground[] = black;
        shadow = 0.75;
        size = 0.037;
        x = 0.508 * safezoneW + safezoneX;
        y = 0.5525 * safezoneH + safezoneY;
        w = 0.2325 * safezoneW;
        h = 0.1775 * safezoneH;
        onMouseButtonDown = "";
        onMouseButtonUp = "";
        onMouseZChanged = "";
        text = "";
    };
};