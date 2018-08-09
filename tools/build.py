#!/usr/bin/env python3
import sys, os
import argparse, shutil, tempfile
__version__ = 1.6

# GLOBALS
exlude_content = ['.vscode', '.editorconfig', '.git', '.gitattributes', '.github', '.gitignore', '.travis.yml','mission.sqm', 'release', 'tools', 'tmp']
version_File = ("cScripts\\script_component.hpp")
script_Name = 'cScripts'

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



def getVersion(versionFile):
    verFile = open(versionFile)
    for i, line in enumerate(verFile):
        if i == 1:
            line = line.partition('"')[-1].rpartition('"')[0]
            line = line.split(".")
            version = line
            version = list(map(int, version))
    return version



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
    print('\033[0mFeatch complete.\033[0m')



def copyTempToRelease(releaseFolder):
    # Copying the temp directory to release
    print('Moving build to release folder...')
    try:
        newFolderPath = releaseFolder + '\\{}'.format(script_Name)
        createFolder(script_Name)
    except:
        shutil.rmtree('tmp')
        sys.exit('Issues occured when trying to copy build to release, already exist...')
    try:
        shutil.copytree('tmp', newFolderPath)
    except:
        sys.exit('Issues occured when trying to copy build to release...')
    print('\033[0mMove complete.\033[0m')



def zipBuild(versionNumber=['','',''],tag='_',build='',rc=''):
    ZipName = '{}{}v{}.{}.{}{}{}'.format(script_Name,tag,str(versionNumber[0]),str(versionNumber[1]),str(versionNumber[2]),rc,build)
    print('Creating archive...')
    shutil.make_archive('release\\{}'.format(ZipName), 'zip', "tmp")
    print('\033[0m{}.zip is created.\033[0m'.format(ZipName))



def makeDummyVersionFile(versionNumber=['','',''],tag='_',build='',rc=''):
    print('Creating version dummy file...')
    dummyName = 'tmp//{}{}v{}.{}.{}{}{}.md'.format(script_Name,tag,str(versionNumber[0]),str(versionNumber[1]),str(versionNumber[2]),rc,build)
    dummy = open(dummyName,"w+")
    dummy.write('I\'am a dummy file that just show version numbers. I\'ve done my purpose yey!\n')


def publicBuildFindString(file,string):
    try:
        os.stat('{}'.format(file))
    except:
        sys.exit('{} could not be found...'.format(file))

    fileObject = open('{}'.format(file), "r")
    for l in fileObject:
        if (string in l):
            string = l
    fileObject.close()
    return string



def publicBuildFindStringCount(file,string):
    try:
        os.stat('{}'.format(file))
    except:
        sys.exit('{} could not be found...'.format(file))

    count = 1
    fileObject = open('{}'.format(file), "r")
    for l in fileObject:
        if (string in l):
            count += 1
    return count



def publicBuildReplace(file_path, pattern, subst):
    #Create temp file
    fh, abs_path = tempfile.mkstemp()
    with os.fdopen(fh,'w') as new_file:
        with open(file_path) as old_file:
            for line in old_file:
                new_file.write(line.replace(pattern, subst))
    #Remove original file
    os.remove(file_path)
    #Move new file
    shutil.move(abs_path, file_path)



def createModdedBuild(folder):      # This function is completely manual atm:
    print('Starting construction of a public {} version...'.format(script_Name))

    print('Adjusting \033[96mdescription.ext\033[0m...')

    print('Adjusting \033[96mcba_settings.sqf\033[0m...')
    # disable startup hint
    x = publicBuildFindString('{}\\cba_settings.sqf'.format(folder),'cScripts_Settings_enableStartHint')
    publicBuildReplace('{}\\cba_settings.sqf'.format(folder), x, 'force force cScripts_Settings_enableStartHint = false;\n')
    # find setting mission type to custom
    x = publicBuildFindString('{}\\cba_settings.sqf'.format(folder),'cScripts_Settings_setMissionType')
    publicBuildReplace('{}\\cba_settings.sqf'.format(folder), x, 'force force cScripts_Settings_setMissionType = 0;\n')
    # find setting mission type to custom
    x = publicBuildFindString('{}\\cba_settings.sqf'.format(folder),'cScripts_Settings_setCustomHintTopic')
    publicBuildReplace('{}\\cba_settings.sqf'.format(folder), x, 'force force cScripts_Settings_setCustomHintTopic = "Public Mission";\n')
    # find setting mission type to custom
    x = publicBuildFindString('{}\\cba_settings.sqf'.format(folder),'cScripts_Settings_setCustomHintText')
    publicBuildReplace('{}\\cba_settings.sqf'.format(folder), x, 'force force cScripts_Settings_setCustomHintText = "This is Tactical Realism. Be tactical and realistic.";\n')

    print('Starting to adjust Loadouts...')
    loadoutFiles = ['CfgLoadouts_Common.hpp','CfgLoadouts_Alpha.hpp','CfgLoadouts_Bravo.hpp','CfgLoadouts_Charlie.hpp','CfgLoadouts_Medical.hpp','CfgLoadouts_Ranger.hpp','CfgLoadouts_Training.hpp','CfgLoadouts_S3.hpp']
    for loadoutFile in loadoutFiles:
        print('Searching for and replacing objects in \033[96m{}\033[0m...'.format(loadoutFile))
        # finding object: ItemcTab
        file = '{}\\cScripts\\Loadouts\\{}'.format(folder,loadoutFile)
        c = publicBuildFindStringCount(file,'gps[] = {"ItemcTab"};')
        for n in range(0,c):
            x = publicBuildFindString(file,'gps[] = {"ItemcTab"};')
            publicBuildReplace(file, x, '    gps[] = {""};\n')

        # finding object: ItemAndroid
        c = publicBuildFindStringCount(file,'gps[] = {"ItemAndroid"};')
        for n in range(0,c):
            x = publicBuildFindString(file,'gps[] = {"ItemAndroid"};')
            publicBuildReplace(file, x, '    gps[] = {""};\n')

        # finding object: Flagstack_Red
        c = publicBuildFindStringCount(file,'"Flagstack_Red",')
        for n in range(0,c):
            x = publicBuildFindString(file,'"Flagstack_Red",')
            publicBuildReplace(file, x, '')
    print('Loadouts adjustments complete...')

    print('Starting to adjust logistical crates...')
    functionFiles = ['fn_doAmmoCrate.sqf','fn_doExplosivesCrate.sqf','fn_doGrenadesCrate.sqf','fn_doLaunchersCrate.sqf','fn_doSpecialWeaponsCrate.sqf','fn_doStarterCrateSupplies.sqf','fn_doSupplyCrate.sqf','fn_doWeaponsCrate.sqf']
    for functionFile in functionFiles:
        print('Searching for and replacing objects in \033[96m{}\033[0m...'.format(functionFile))
        # finding object: ItemcTab
        file = '{}\\cScripts\\CavFnc\\functions\\logistics\\{}'.format(folder,functionFile)
        c = publicBuildFindStringCount(file,'"ItemcTab"')
        for n in range(0,c):
            x = publicBuildFindString(file,'"ItemcTab"')
            publicBuildReplace(file, x, '')

        # finding object: ItemAndroid
        c = publicBuildFindStringCount(file,'"ItemAndroid"')
        for n in range(0,c):
            x = publicBuildFindString(file,'"ItemAndroid"')
            publicBuildReplace(file, x, '')

        # finding object: Flagstack_Red
        c = publicBuildFindStringCount(file,'"Flagstack_Red"')
        for n in range(0,c):
            x = publicBuildFindString(file,'"Flagstack_Red"')
            publicBuildReplace(file, x, '')

    print('Logistical crates adjustments complete...')




def main():
    print("""
\033[1mcScripts Build Script v{}\033[0m
\033[90mThis is a build script that prep build and zip a release build.\033[0m
    """.format(__version__))

    # set up and handle arguments
    parser = argparse.ArgumentParser()

    group = parser.add_mutually_exclusive_group(required=False)

    parser.add_argument("-p", "--public",           help="Create a \"public\" build to be used on non CavPack Enviroment",
                        action="store_true")
    parser.add_argument('-b', '--build', required=False, choices=['dev', 'test', 'custom'], help="Add a additional tag to a to the build")
    parser.add_argument('-rc', '--releasecandidate', type=int, required=False,  help="Set a release candidate number to the build \".RC1\" for exsample")

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

    # Set som empty strings
    tagString = '_'
    buildString = ''
    rcString = ''

    # press enter to start build
    input('\nPress enter to start the build process...')

    # Remove tempfolder if it exist on start
    if os.path.isdir('tmp'):
        shutil.rmtree('tmp')

    releaseFolder = createFolder("release")
    tmpFolder = createFolder("tmp")

    createBuild(objectList[0],objectList[1], tmpFolder, releaseFolder)

    versionNumber = getVersion(version_File)

    if args.public:
        tagString = '_PUBLIC_'
        createModdedBuild(tmpFolder)

    if args.build:
        if args.build == 'dev':
            buildString = '_DevBuild'.format()
        if args.build == 'test':
            buildString = '_TestBuild'.format()
        if args.build == 'custom':
            buildString = '_CustomBuild'.format()
    if args.releasecandidate:
        rcString = '.RC{}'.format(str(args.releasecandidate))

    makeDummyVersionFile(versionNumber,tagString,buildString,rcString)

    if args.save:
        copyTempToRelease(releaseFolder)

    if args.savedontzip:
        copyTempToRelease(releaseFolder)
    else:
        zipBuild(versionNumber,tagString,buildString,rcString)

    shutil.rmtree(tmpFolder)



if __name__ == "__main__":
    sys.exit(main())
