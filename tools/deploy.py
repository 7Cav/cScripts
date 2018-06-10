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

exlude_content = ['.editorconfig', '.git', '.gitattributes', '.github', '.gitignore', '.travis.yml','mission.sqm', 'release', 'tools', 'tmp']


def getVersion(FilePath):
    verFile = open(FilePath)
    for i, line in enumerate(verFile):
        if i == 1:
            line = line.partition('"')[-1].rpartition('"')[0]
            line = line.split(".")
            version = line
            version = list(map(int, version))
    return version



def setVersion(version,type,rc):
    if type == argument_1_List[0]:
        type = ".DevBuild"
    if type == argument_1_List[1]:
        version[0] += 1
        version[1] = 0
        version[2] = 0
    if type == argument_1_List[2]:
        version[1] += 1
        version[2] = 0
    if type == argument_1_List[3]:
        version[2] += 1
    if rc[:2] == "rc" and not type == "dev":
        type = rc
        type = type.upper()
        type = ".{}".format(type)
    else:
        type = ""
    print('New version will be: ',end='')
    printNewVersion = "{}.{}.{}{}".format(str(version[0]),str(version[1]),str(version[2]),str(type))
    print(printNewVersion)

    file = open("cScripts_v{}.md".format(printNewVersion), "w")
    file.write('I am a dummy file that just show version numbers. I\'ve done my purpose yey!')



def zipdir(path, ziph):
    # ziph is zipfile handle
    for root, dirs, files in os.walk(path):
        for file in files:
            ziph.write(os.path.join(root, file))



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
    tempfolder = "tmp"
    temppath = projectpath + "\\" + tempfolder
    os.chdir(projectpath)

    # Create temp folder
    try:
        os.stat(tempfolder)
    except:
        os.mkdir(tempfolder)


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
    print('\n\033[0m\033[1m'+'Starting file copying...\033[0m')
    for file in fileList:
        print('Copying \033[96m' + file + '\033[0m file to release folder.')
        try:
            shutil.copy2(file, temppath)
        except:
            print('\033[96m' + file + '\033[0m already existed skipping...')

    # copying directories to temp folder and create its folder in case of.
    for dir in dirList:
        print('Copying \033[42m' + dir + '\033[0m folder to release folder.')
        os.chdir(projectpath)
        dirPath = temppath + '\\' + dir
        try:
            os.stat(dir)
        except:
            os.mkdir(dir)
        try:
            shutil.copytree(dir, dirPath)
        except:
            print('\033[42m' + dir + '\033[0m already existed skipping...')

    print('\033[0mCopying compleet.\033[0m')

    # Ziping release
    print('\033[0mMaking archive...\033[0m')

    # Feaching version
    versionFilePath = ("cScripts\\CavFnc\\functions\\script_component.hpp")
    versionZipName = getVersion(versionFilePath)

    # Ziping content
    shutil.make_archive('release\\cScripts_{}.{}.{}'.format(str(versionZipName[0]),str(versionZipName[1]),str(versionZipName[2])), 'zip', "tmp")
    print('\033[0mcScripts_{}.{}.{}.zip is created.\033[0m'.format(str(versionZipName[0]),str(versionZipName[1]),str(versionZipName[2])))

    # removing temp folder
    shutil.rmtree(tempfolder)

    print('\033[1mcScripts version {}.{}.{} is packed and ready for release.\033[0m'.format(str(versionZipName[0]),str(versionZipName[1]),str(versionZipName[2])))

    print()

if __name__ == "__main__":
    sys.exit(main())
