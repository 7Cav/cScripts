#!/usr/bin/env python3

#######################################
# cScript automatic deployment script #
# =================================== #
__version__ = 0.1

import os
import sys
import shutil
from distutils.dir_util import copy_tree
import logging
# copy everything > release folder
# exlude copy tools, ".git", ".github", ".editorconfig", ".gitatteributes", ".gitignore",
# bump version number add revision number
# zip everything in release folder
# make tag release

exlude_content = ['.editorconfig', '.git', '.gitattributes', '.github', '.gitignore', 'mission.sqm', 'release', 'tools']

def getFiles():
    pass
def getDirectory():
    pass

def getVersion(FilePath):
    verFile = open(FilePath)
    for i, line in enumerate(verFile):
        if i == 1:
            line = line.partition('"')[-1].rpartition('"')[0]
            line = line.split(".")
            version = line
    return version


def main():
    print("""
\033[1mcScripts Build and Deploy Script v{}\033[0m
\033[90mThis is a deploy and build script to prep a release.\033[0m
    """.format(__version__))

    # Getting mission project path
    scriptpath = os.path.realpath(__file__)
    projectpath = os.path.dirname(os.path.dirname(scriptpath))

    releasefolder = "release"
    releasepath = projectpath + "\\" + releasefolder

    os.chdir(projectpath)

    # Create release folder
    try:
        os.stat(releasefolder)
    except:
        os.mkdir(releasefolder)

    # Checking for files and directories.
    listContent = os.listdir(projectpath)
    fileList = []
    dirList = []
    for obj in listContent:
        if os.path.isfile(obj):
            if obj not in exlude_content:
                fileList.append(obj)
        elif os.path.isdir(obj):
            if obj not in exlude_content:
                dirList.append(obj)
        else:
            print("error")
            sys.exit()

    # Printing removed listed and object from ignore list.
    print("\033[0m\033[1m" + "Found object:\033[0m")
    print('\033[42m',end='')
    print('\033[0m \033[42m'.join(dirList) + '\033[42m',end='\033[0m \033[96m')
    print('\033[0m \033[96m'.join(fileList) + '\033[96m')

    # copying files to release folder
    print('\n\033[0m\033[1m'+'Starting file copying\033[0m')
    for file in fileList:
        print('Copying \033[96m' + file + '\033[0m file to release folder.')
        try:
            shutil.copy2(file, releasepath)
        except:
            print('\033[96m' + file + '\033[0m already existed skipping...')

    # copying directories to release folder and create its folder in case of.
    for dir in dirList:
        print('Copying \033[42m' + dir + '\033[0m folder to release folder.')
        os.chdir(projectpath)
        dirPath = releasepath + '\\' + dir
        try:
            os.stat(dir)
        except:
            os.mkdir(dir)
        try:
            shutil.copytree(dir, dirPath)
        except:
            print('\033[42m' + dir + '\033[0m already existed skipping...')

    print('\033[1mCopying compleet\033[0m'.format(file))


    # Preppearing file update
    print('\033[1mPerppering update\033[0m'.format(file))

    # Getting local version number
    os.chdir(releasefolder)
    versionFilePath = "cScripts\\CavFnc\\functions" # Make Sure to use double backslashes !
    versionFile = ("{}\\script_component.hpp".format(versionFilePath))
    currentVersion = getVersion(versionFile)
    print('Found local version: ',end='')
    print('\033[6m.'.join(currentVersion),end='\033[0m')

    #os.rename()
    print()

if __name__ == "__main__":
    sys.exit(main())
