#define true 1
#define false 0
#define cavYellow {0.922,0.78,0.161,1}
#define cavGrey {0.631,0.631,0.631,1}
#define black {0,0,0,1}
#define white {1,1,1,1}

// Control types
#define CT_STATIC           0
#define CT_BUTTON           1
#define CT_EDIT             2
#define CT_SLIDER           3
#define CT_COMBO            4
#define CT_LISTBOX          5
#define CT_TOOLBOX          6
#define CT_CHECKBOXES       7
#define CT_PROGRESS         8
#define CT_HTML             9
#define CT_STATIC_SKEW      10
#define CT_ACTIVETEXT       11
#define CT_TREE             12
#define CT_STRUCTURED_TEXT  13
#define CT_CONTEXT_MENU     14
#define CT_CONTROLS_GROUP   15
#define CT_SHORTCUTBUTTON   16
#define CT_HITZONES         17
#define CT_XKEYDESC         40
#define CT_XBUTTON          41
#define CT_XLISTBOX         42
#define CT_XSLIDER          43
#define CT_XCOMBO           44
#define CT_ANIMATED_TEXTURE 45
#define CT_OBJECT           80
#define CT_OBJECT_ZOOM      81
#define CT_OBJECT_CONTAINER 82
#define CT_OBJECT_CONT_ANIM 83
#define CT_LINEBREAK        98
#define CT_USER             99
#define CT_MAP              100
#define CT_MAP_MAIN         101
#define CT_LISTNBOX         102
#define CT_ITEMSLOT         103
#define CT_CHECKBOX         77

// Static styles
#define ST_POS            0x0F
#define ST_HPOS           0x03
#define ST_VPOS           0x0C
#define ST_LEFT           0x00
#define ST_RIGHT          0x01
#define ST_CENTER         0x02
#define ST_DOWN           0x04
#define ST_UP             0x08
#define ST_VCENTER        0x0C

#define ST_TYPE           0xF0
#define ST_SINGLE         0x00
#define ST_MULTI          0x10
#define ST_TITLE_BAR      0x20
#define ST_PICTURE        0x30
#define ST_FRAME          0x40
#define ST_BACKGROUND     0x50
#define ST_GROUP_BOX      0x60
#define ST_GROUP_BOX2     0x70
#define ST_HUD_BACKGROUND 0x80
#define ST_TILE_PICTURE   0x90
#define ST_WITH_RECT      0xA0
#define ST_LINE           0xB0
#define ST_UPPERCASE      0xC0
#define ST_LOWERCASE      0xD0

#define ST_SHADOW         0x100
#define ST_NO_RECT        0x200
#define ST_KEEP_ASPECT_RATIO  0x800

// Slider styles
#define SL_DIR            0x400
#define SL_VERT           0
#define SL_HORZ           0x400

#define SL_TEXTURES       0x10

// progress bar
#define ST_VERTICAL       0x01
#define ST_HORIZONTAL     0

// Listbox styles
#define LB_TEXTURES       0x10
#define LB_MULTI          0x20

// Tree styles
#define TR_SHOWROOT       1
#define TR_AUTOCOLLAPSE   2

// Default grid
#define GUI_GRID_WAbs			((safezoneW / safezoneH) min 1.2)
#define GUI_GRID_HAbs			(GUI_GRID_WAbs / 1.2)
#define GUI_GRID_W          (GUI_GRID_WAbs / 40)
#define GUI_GRID_H          (GUI_GRID_HAbs / 25)
#define GUI_GRID_X          (safezoneX)
#define GUI_GRID_Y          (safezoneY + safezoneH - GUI_GRID_HAbs)

// Default text sizes
#define GUI_TEXT_SIZE_SMALL     (GUI_GRID_H * 0.8)
#define GUI_TEXT_SIZE_MEDIUM    (GUI_GRID_H * 1)
#define GUI_TEXT_SIZE_LARGE     (GUI_GRID_H * 1.2)

// Pixel grid
#define pixelScale  0.50
#define GRID_W (pixelW * pixelGrid * pixelScale)
#define GRID_H (pixelH * pixelGrid * pixelScale)

class ScrollBar
{
    color[] = { 1,1,1,0.6 };
    colorActive[] = { 1,1,1,1 };
    colorDisabled[] = { 1,1,1,0.3 };
    thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
    arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
    arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
    border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
    shadow = 0;
    scrollSpeed = 0.06;
    width = 0;
    height = 0;
    autoScrollEnabled = 0;
    autoScrollSpeed = -1;
    autoScrollDelay = 5;
    autoScrollRewind = 0;
};

class IGUIBack
{
    type = 0;
    idc = 124;
    style = 128;
    text = "";
    colorText[] = 
    {
        0,
        0,
        0,
        0
    };
    font = "PuristaMedium";
    sizeEx = 0;
    shadow = 0;
    x = 0.1;
    y = 0.1;
    w = 0.1;
    h = 0.1;

    colorbackground[] = 
    {
        "(profilenamespace getvariable ['IGUI_BCG_RGB_R',0])",
        "(profilenamespace getvariable ['IGUI_BCG_RGB_G',1])",
        "(profilenamespace getvariable ['IGUI_BCG_RGB_B',1])",
        "(profilenamespace getvariable ['IGUI_BCG_RGB_A',0.8])"
    };
};

class RscStructuredText
{
    deletable = 0;
    fade = 0;
    access = 0;
    type = CT_STRUCTURED_TEXT;
    idc = -1;
    style = ST_LEFT;
    colorText[] = { 1,1,1,1 };
    class Attributes
    {
        font = "RobotoCondensed";
        color = "#ffffff";
        colorLink = "#D09B43";
        align = "left";
        shadow = 1;
    };
    x = 0;
    y = 0;
    h = 0.035;
    w = 0.1;
    text = "";
    size = GUI_TEXT_SIZE_MEDIUM;
    shadow = 1;
};

class RscCombo
{
    deletable = 0;
    fade = 0;
    access = 0;
    type = CT_COMBO;
    colorSelect[] = { 0,0,0,1 };
    colorText[] = { 1,1,1,1 };
    colorBackground[] = { 0,0,0,1 };
    colorScrollbar[] = { 1,0,0,1 };
    colorDisabled[] = { 1,1,1,0.25 };
    colorPicture[] = { 1,1,1,1 };
    colorPictureSelected[] = { 1,1,1,1 };
    colorPictureDisabled[] = { 1,1,1,0.25 };
    colorPictureRight[] = { 1,1,1,1 };
    colorPictureRightSelected[] = { 1,1,1,1 };
    colorPictureRightDisabled[] = { 1,1,1,0.25 };
    colorTextRight[] = { 1,1,1,1 };
    colorSelectRight[] = { 0,0,0,1 };
    colorSelect2Right[] = { 0,0,0,1 };
    tooltipColorText[] = { 1,1,1,1 };
    tooltipColorBox[] = { 1,1,1,1 };
    tooltipColorShade[] = { 0,0,0,0.65 };
    soundSelect[] =
    {
        "\A3\ui_f\data\sound\RscCombo\soundSelect",
        0.1,
        1
    };
    soundExpand[] =
    {
        "\A3\ui_f\data\sound\RscCombo\soundExpand",
        0.1,
        1
    };
    soundCollapse[] =
    {
        "\A3\ui_f\data\sound\RscCombo\soundCollapse",
        0.1,
        1
    };
    maxHistoryDelay = 1;
    class ComboScrollBar : ScrollBar
    {
        color[] = { 1,1,1,1 };
    };
    colorSelectBackground[] = { 1,1,1,0.7 };
    colorActive[] = { 1,0,0,1 };
    style = ST_MULTI + ST_NO_RECT;
    font = "RobotoCondensed";
    sizeEx = GUI_TEXT_SIZE_MEDIUM;
    shadow = 0;
    x = 0;
    y = 0;
    w = 0.12;
    h = 0.035;
    arrowEmpty = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_ca.paa";
    arrowFull = "\A3\ui_f\data\GUI\RscCommon\rsccombo\arrow_combo_active_ca.paa";
    wholeHeight = 0.45;
};

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
        vehSpawnDropdown
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
        font = "RobotoCondensed";
        onLBSelChanged  = "[] spawn cScripts_fnc_vehicleInfo;";
        colorText[] = {1,1,1,1};
        colorDisabled[] = {1,1,1,0.25};
        colorScrollbar[] = {1,1,1,1};
        colorSelect[] = {1,1,1,1};
        colorSelect2[] = {1,1,1,1};
        colorSelectBackground[] = cavYellow;
        colorSelectBackground2[] = black;
        colorBackground[] = black;
        sizeEx = GUI_TEXT_SIZE_MEDIUM;
        shadow = 0;
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

        deletable = 0;
        fade = 0;
        type = CT_SHORTCUTBUTTON;

        class HitZone
        {
                left = 0;
            top = 0;
            right = 0;
            bottom = 0;
        };

        class ShortcutPos
        {
            left = 0;
            top = ((GUI_GRID_HAbs / 20) - GUI_TEXT_SIZE_MEDIUM) / 2;
            w = GUI_TEXT_SIZE_MEDIUM * (3 / 4);
            h = GUI_TEXT_SIZE_MEDIUM;
        };

        class TextPos
        {
            left = GUI_TEXT_SIZE_MEDIUM * (3 / 4);
            top = ((GUI_GRID_HAbs / 20) - GUI_TEXT_SIZE_MEDIUM) / 2;
            right = 0.005;
            bottom = 0;
        };

        shortcuts[] = {};
        textureNoShortcut = "#(argb,8,8,3)color(0,0,0,0)";
        color[] = { 1,1,1,1 };
        colorFocused[] = { 1,1,1,1 };
        color2[] = { 0.95,0.95,0.95,1 };
        colorBackground2[] = { 1,1,1,1 };
        soundEnter[] =
        {
            "\A3\ui_f\data\sound\RscButton\soundEnter",
            0.09,
            1
        };
        soundPush[] =
        {
            "\A3\ui_f\data\sound\RscButton\soundPush",
            0.09,
            1
        };
        soundClick[] =
        {
            "\A3\ui_f\data\sound\RscButton\soundClick",
            0.09,
            1
        };
        soundEscape[] =
        {
            "\A3\ui_f\data\sound\RscButton\soundEscape",
            0.09,
            1
        };
        class Attributes
        {
            font = "RobotoCondensed";
            color = "#E5E5E5";
            align = "left";
            shadow = "true";
        };
        colorSecondary[] = { 1,1,1,1 };
        colorFocusedSecondary[] = { 1,1,1,1 };
        color2Secondary[] = { 0.95,0.95,0.95,1 };
        colorDisabledSecondary[] = { 1,1,1,0.25 };
        class AttributesImage
        {
            font = "RobotoCondensed";
            color = "#E5E5E5";
            align = "left";
        };

        style = ST_LEFT;
        default = 0;
        shadow = 1;
        textSecondary = "";
        sizeExSecondary = GUI_TEXT_SIZE_MEDIUM;
        fontSecondary = "RobotoCondensed";
        animTextureDefault = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
        animTextureNormal = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
        animTextureDisabled = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
        animTextureOver = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\over_ca.paa";
        animTextureFocused = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\focus_ca.paa";
        animTexturePressed = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\down_ca.paa";
        periodFocus = 1.2;
        periodOver = 0.8;
        period = 0.4;
        font = "RobotoCondensed";
        size = GUI_TEXT_SIZE_MEDIUM;
        sizeEx = GUI_TEXT_SIZE_MEDIUM;
        url = "";
        action = "";
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