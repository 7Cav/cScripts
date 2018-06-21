#!/usr/bin/env python3
import sys, os
import argparse, shutil
__version__ = 1.0

# GLOBALS
exlude_content = ['.editorconfig', '.git', '.gitattributes', '.github', '.gitignore', '.travis.yml','mission.sqm', 'release', 'tools', 'tmp']
version_File = ("cScripts\\CavFnc\\functions\\script_component.hpp")

# set projecty path
scriptpath = os.path.realpath(__file__)
projectpath = os.path.dirname(os.path.dirname(scriptpath))
os.chdir(projectpath)


def createFolder(folder):
    # Get mission root
    folderPath = projectpath +"\\" + folder
    if not os.path.isdir(folderPath):
        print('No ' + folder + ' folder was found creating...')
        try:
            os.stat(folder)
        except:
            os.mkdir(folder)
        return folderPath


def listFileContent(exlude_content=[]):
    # Get mission root
    content = os.listdir(projectpath)

    objectList = []

    folderList = [] # Collect directories
    fileList = []   # Collect files

    for obj in content:
        if os.path.isfile(obj):
            if obj not in exlude_content:
                fileList.append(obj)
        elif os.path.isdir(obj):
            if obj not in exlude_content:
                folderList.append(obj)
        else:
            print()
            sys.exit('Issues occured when listing files.')
    # add arrays to array
    objectList.append(folderList)
    objectList.append(fileList)
    return objectList



def createBuild(folderList=[],fileList=[],tmpFolder='',releaseFolder=''):
    # copying files to release folder
    print('Starting build copying...')
    for file in fileList:
        print('Featching file \033[96m' + file + '\033[0m...')
        try:
            shutil.copy2(file, tmpFolder)
        except:
            shutil.rmtree(tmpFolder)
            sys.exit('Issues occured when featching file ' + file + '.')

    # copying directories to temp folder and create its folder in case of.
    for dir in folderList:
        print('Featching \033[42m' + dir + '\033[0m directory...')
        newFolderPath = tmpFolder + '\\' + dir
        createFolder(dir)
        try:
            shutil.copytree(dir, newFolderPath)
        except:
            shutil.rmtree(tmpFolder)
            sys.exit('Issues occured when featching folder ' + dir + '.')
    print('\033[0mFeatch compleet.\033[0m')


def copyTempToRelease(releaseFolder):
    # Copying teh temp directory to release
    print('Moving build to release folder...')
    try:
        newFolderPath = releaseFolder + '\\cScripts'
        createFolder('cScripts')
    except:
        shutil.rmtree('tmp')
        sys.exit('Issues occured when trying to copy build to release, already exist...')
    try:
        shutil.copytree('tmp', newFolderPath)
    except:
        sys.exit('Issues occured when trying to copy build to release...')
    print('\033[0mMove compleet.\033[0m')


def getVersion(versionFile):
    verFile = open(versionFile)
    for i, line in enumerate(verFile):
        if i == 1:
            line = line.partition('"')[-1].rpartition('"')[0]
            line = line.split(".")
            version = line
            version = list(map(int, version))
    return version



def zipBuild(versionNumber=['','','']):
    print('Creating archive...')
    shutil.make_archive('release\\cScripts_{}.{}.{}'.format(str(versionNumber[0]),str(versionNumber[1]),str(versionNumber[2])), 'zip', "tmp")
    print('\033[0mcScripts_{}.{}.{}.zip is created.\033[0m'.format(str(versionNumber[0]),str(versionNumber[1]),str(versionNumber[2])))



def main():
    print("""
\033[1mcScripts Build Script v{}\033[0m
\033[90mThis is a build script that prep build and zip a release build.\033[0m
    """.format(__version__))

    # set up and handle arguments
    parser = argparse.ArgumentParser()

    group = parser.add_mutually_exclusive_group(required=False)
    group.add_argument("-s", "--save",              help="Save the build",
                        action="store_true")
    group.add_argument("-sz", "--savedontzip",      help="Save the build and don\'t zip it",
                        action="store_true")

    args = parser.parse_args()

    print('\033[0m\033[1m' + 'Functions:' + '\033[0m')
    parser.print_help()
    print()

    objectList = listFileContent(exlude_content)

    # Print object list
    print('\033[0m\033[1m' + 'Found object:' + '\033[0m')
    print('\033[42m',end='')
    print('\033[0m \033[42m'.join(objectList[0]) + '\033[42m',end='\033[0m \033[96m')
    print('\033[0m \033[96m'.join(objectList[1]) + '\033[96m')
    print('',end='\033[0m')


    input('\nPress enter to start the build process...')

    releaseFolder = createFolder("release")
    tmpFolder = createFolder("tmp")

    createBuild(objectList[0],objectList[1], tmpFolder, releaseFolder)

    versionNumber = getVersion(version_File)

    if args.save or args.savedontzip:
        if args.savedontzip:
            pass
        else:
            zipBuild(versionNumber)
        copyTempToRelease(releaseFolder)
        shutil.rmtree(tmpFolder)
    else:
        zipBuild(versionNumber)
        shutil.rmtree(tmpFolder)


if __name__ == "__main__":
    sys.exit(main())
