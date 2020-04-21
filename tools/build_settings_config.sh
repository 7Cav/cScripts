#!/bin/bash

VERSION_TAG=$*

mkdir -p @CBA_A3/addons/cba_settings_userconfig

cp cba_settings.sqf @CBA_A3/addons/cba_settings_userconfig/

touch @CBA_A3/addons/cba_settings_userconfig/\$PBOPREFIX\$
echo "cba_settings_userconfig" > @CBA_A3/addons/cba_settings_userconfig/\$PBOPREFIX\$

touch @CBA_A3/addons/cba_settings_userconfig/config.cpp

echo """
class CfgPatches {
    class cba_settings_userconfig {
        author = \"\$STR_CBA_Author\";
        name = \"\$STR_CBA_Settings_Component\";
        url = \"\$STR_CBA_URL\";
        units[] = {};
        weapons[] = {};
        requiredVersion = 1.0;
        requiredAddons[] = {\"cba_settings\"};
        version = ${VERSION_TAG};
        authors[] = {\"Brostrom.A\"};
    };
};
""" > @CBA_A3/addons/cba_settings_userconfig/config.cpp

armake build -f @CBA_A3/addons/cba_settings_userconfig @CBA_A3/addons/cba_settings_userconfig.pbo

zip -r release/Server_Config-${VERSION_TAG}.zip @CBA_A3 -x '@CBA_A3/addons/cba_settings_userconfig/'
