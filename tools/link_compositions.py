#!/usr/bin/env python3
import sys, os, shutil, urllib.parse, winreg

__version__ = 1.0

def get_Arma3_Profile_Path_HKCU(lable='Program', regKey='', key='path'):
    try:
        registry = winreg.ConnectRegistry(None, winreg.HKEY_CURRENT_USER)
        keypath = winreg.OpenKey(registry, regKey)
    except:
        sys.exit('Path for \'{}\' is invalid.'.format(lable))
    try:
        path = winreg.QueryValueEx(keypath, key)
        return path[0]
    except:
        sys.exit('Some thing whent wrong when looking for {}.'.format(key))

def get_compositions(path):
    compDir = os.listdir(path)
    compList = []
    for dir in compDir:
        if os.path.isdir(os.path.join(path,dir)):
            compList.append(dir)
    return compList

def main():
    global scriptPath
    scriptPath = os.path.realpath(__file__)
    global scriptDir
    scriptDir = os.path.dirname(scriptPath)
    global rootDir
    rootDir = os.path.dirname(os.path.dirname(scriptPath))
    os.chdir(rootDir)

    profileName = get_Arma3_Profile_Path_HKCU('Player Name', 'SOFTWARE\\Bohemia Interactive\\Arma 3', 'Player Name')
    profileName = urllib.parse.quote_plus(profileName)
    profileName = profileName.replace(".", "%2e")
    
    scriptCompPath = os.path.join(rootDir, "Compositions")
    profileCompPath = os.path.join(os.environ['USERPROFILE'], 'Documents', 'Arma 3 - Other Profiles', profileName, 'compositions')

    Compositions = get_compositions(scriptCompPath)

    for comp in Compositions:
        destName = "Dev_{}".format(comp)
        srcPath = os.path.join(scriptCompPath,comp)
        dstPath = os.path.join(profileCompPath,destName)

        if os.path.isdir(os.path.join(dstPath)):
            if "--force" in sys.argv:
                os.rmdir(dstPath)
            else:
                print('> {} already linked skipping...'.format(destName))
                continue
        os.symlink(srcPath,dstPath, target_is_directory=True)
        print('> {} link created...'.format(destName))

if __name__ == "__main__":
    sys.exit(main())
