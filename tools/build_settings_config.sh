#!/bin/bash

VERSION_TAG=$*

mkdir -p tmp/cba_settings_userconfig

cp cba_settings.sqf tmp/cba_settings_userconfig/
set 'g/force force /force /' tmp/cba_settings_userconfig/cba_settings.sqf

touch tmp/cba_settings_userconfig/\$PBOPREFIX\$
echo "cba_settings_userconfig" > tmp/cba_settings_userconfig/\$PBOPREFIX\$

touch tmp/cba_settings_userconfig/config.cpp

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
""" > tmp/cba_settings_userconfig/config.cpp

armake build -f tmp/cba_settings_userconfig cba_settings_userconfig.pbo

zip -0 release/Server_Config-${VERSION_TAG}.zip cba_settings_userconfig.pbo
