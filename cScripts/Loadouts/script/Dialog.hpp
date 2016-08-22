class RscPoppyMessageBox {
    idd = -1;
    movingEnable = 0;
    enableSimulation = 1;
    controlsBackground[] = {
        pnlBackground,
        lblHeader,
        lblMessage,
        imgBtnPrevious,
        imgBtnNext,
        imgBtnClose
    };
    controls[] = {
        btnPrevious,
        btnNext,
        btnClose
    };

    class pnlBackground {
        idc = 0;
        type = 0;
        style = 0;
        moving = 0;
        text = "";
        font = "PuristaMedium";
        sizeEx = 0.03;
        colorBackground[] = {0.2, 0.2, 0.2, 1};
        colorText[] = {0, 0, 0, 0};
        x = safeZoneX + safeZoneW - 0.4;
        y = safeZoneY + safeZoneH;
        w = 0.4 + 0.1;
        h = 0.25 + 0.1;
    };
    class lblHeader {
        idc = 20;
        type = 0;
        style = 0;
        moving = 0;
        text = "";
        font = "PuristaMedium";
        sizeEx = 0.04;
        colorBackground[] = {0, 0, 0, 0};
        colorText[] = {1, 1, 1, 1};
        x = safeZoneX + safeZoneW - 0.4 + 0.015 * 3 / 4;
        y = safeZoneY + safeZoneH + 0.01;
        w = 0.4 - 0.03 * 3 / 4;
        h = 0.06;
    };
    class lblMessage {
        idc = 21;
        type = 0;
        style = 528;
        moving = 0;
        lineSpacing = 1;
        text = "";
        font = "PuristaMedium";
        sizeEx = 0.03;
        colorBackground[] = {0, 0, 0, 0};
        colorText[] = {1, 1, 1, 1};
        x = safeZoneX + safeZoneW - 0.4 + 0.015 * 3 / 4;
        y = safeZoneY + safeZoneH + 0.06;
        w = 0.4 - 0.03 * 3 / 4;
        h = 0.25 - 0.1;
    };
    class imgBtnPrevious {
        idc = 22;
        type = 0;
        style = 2096;
        moving = 0;
        text = "cScripts\Loadouts\script\UI\previous.paa";
        font = "PuristaMedium";
        sizeEx = 0.03;
        colorBackground[] = {0.2, 0.2, 0.2, 1};
        colorText[] = {1, 1, 1, 1};
        x = safeZoneX + safeZoneW - 0.03 * 3;
        y = safeZoneY + safeZoneH + 0.02;
        w = 0.03;
        h = 0.03;
    };
    class imgBtnNext: imgBtnPrevious {
        idc = 23;
        text = "cScripts\Loadouts\script\UI\next.paa";
        x = safeZoneX + safeZoneW - 0.03 * 2;
        y = safeZoneY + safeZoneH + 0.02;
    };
    class imgBtnClose: imgBtnPrevious {
        idc = 24;
        text = "cScripts\Loadouts\script\UI\close.paa";
        x = safeZoneX + safeZoneW - 0.03 * 2;
        y = safeZoneY + safeZoneH + 0.02;
    };

    class btnPrevious {
        idc = 10;
        type = 1;
        style = 0;
        moving = 0;
        text = "";
        font = "PuristaMedium";
        sizeEx = 0.03;
        borderSize = 0;
        colorBackground[] = {0, 0, 0, 0};
        colorBackgroundActive[] = {0, 0, 0, 0};
        colorBackgroundDisabled[] = {0, 0, 0, 0};
        colorBorder[] = {0, 0, 0, 0};
        colorDisabled[] = {0, 0, 0, 0};
        colorFocused[] = {0, 0, 0, 0};
        colorShadow[] = {0, 0, 0, 0};
        colorText[] = {0, 0, 0, 0};
        default = 0;
        offsetPressedX = 0;
        offsetPressedY = 0;
        offsetX = 0;
        offsetY = 0;
        soundClick[] = {"", 0, 1};
        soundEnter[] = {"", 0, 1};
        soundEscape[] = {"", 0, 1};
        soundPush[] = {"", 0, 1};
        x = safeZoneX + safeZoneW - 0.03 * 3;
        y = safeZoneY + safeZoneH + 0.02;
        w = 0.03;
        h = 0.03;
        onButtonClick = "Poppy_logIndex = Poppy_logIndex - 1; [ctrlParent (_this select 0)] call Poppy_fnc_updateMessageBox;";
    };
    class btnNext: btnPrevious {
        idc = 11;
        x = safeZoneX + safeZoneW - 0.03 * 2;
        y = safeZoneY + safeZoneH + 0.02;
        onButtonClick = "Poppy_logIndex = Poppy_logIndex + 1; [ctrlParent (_this select 0)] call Poppy_fnc_updateMessageBox;";
    };
    class btnClose: btnPrevious {
        idc = 12;
        x = safeZoneX + safeZoneW - 0.03 * 2;
        y = safeZoneY + safeZoneH + 0.02;
        onButtonClick = "Poppy_log = []; (ctrlParent (_this select 0)) closeDisplay 1";
    };
};
