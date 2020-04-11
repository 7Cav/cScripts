#!/usr/bin/env python3
import sys, os, re, json, glob

__version__ = 1.0

# set projecty path
scriptPath = os.path.realpath(__file__)
scriptDir = os.path.dirname(scriptPath)
rootDir = os.path.dirname(os.path.dirname(scriptPath))
os.chdir(rootDir)

def strip_path_from_filename(pathfile=''):
    filenamepath = pathfile.split('/')
    filename = filenamepath[-1]
    filename = str(filename)
    return filename

def main():
    data = {}
    loadoutConfigs = glob.glob(rootDir + '/cScripts/Loadouts/*.hpp')

    for loadout in loadoutConfigs:
        cfgFile = open(loadout)
        configName = os.path.basename(loadout)
        data[configName] = []
        CfgLoadout = cfgFile.read()
        classnames = re.findall('%s(.*)%s' % ('class', ':'), CfgLoadout)
        for classname in classnames:
            classname = classname.strip()
            data[configName].append(classname)
    print(json.dumps(data))

if __name__ == "__main__":
    sys.exit(main())
