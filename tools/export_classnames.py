#!/usr/bin/env python3
import sys, os, re, json

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

def get_loadout_files():
    loadoutFiles = os.listdir(os.path.join(rootDir, 'cScripts', 'Loadouts'))
    return loadoutFiles

def main():
    data = {}
    loadoutFiles = get_loadout_files()
    for file in loadoutFiles:
        configFile = file.replace('.hpp', '')
        data[configFile] = []
        if ".hpp" in file:
            cfgFile = open(os.path.join(rootDir, 'cScripts', 'Loadouts', file), 'r')
            CfgLoadout = cfgFile.read()
            classnames = re.findall('%s(.*)%s' % ('class', ':'), CfgLoadout)
            for classname in classnames:
                classname = classname.strip()
                blacklist = []
                if classname in blacklist:
                    continue
                data[configFile].append(classname)
    print(json.dumps(data))

if __name__ == "__main__":
    sys.exit(main())
