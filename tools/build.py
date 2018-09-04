#!/usr/bin/env python3
import sys, os
import argparse, shutil, subprocess, tempfile
__version__ = 1.8

# #########################################################################################
#
# usage: build.py [-h] [-p] [-b {dev,test,custom}] [-rc RELEASECANDIDATE]
#                 [-s | -sz]
#
# optional arguments:
#   -h, --help            show this help message and exit
#   -p, --public          Create a "public" build to be used on non CavPack
#                         Enviroment
#   -b {dev,test,custom}, --build {dev,test,custom}
#                         Add a additional tag to a to the build
#   -rc RELEASECANDIDATE, --releasecandidate RELEASECANDIDATE
#                         Set a release candidate number to the build ".RC1" for
#                         exsample
#   -s, --save            Save the build
#   -sz, --savedontzip    Save the build and don't zip it
#
# GLOBALS #################################################################################

exlude_content = ['.vscode', '.editorconfig', '.git', '.gitattributes', '.github', '.gitignore', '.travis.yml','mission.sqm', 'release', 'resourses','tools', 'tmp']
version_File = ("cScripts\\script_component.hpp")
script_Name = 'cScripts'

# #########################################################################################

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
    # get Revision hash
    try:
        hash = subprocess.check_output(['git', 'rev-parse', '--short', 'HEAD']).strip()
        version.append (hash)
    except:
        version.append ('')
    
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



def zipBuild(versionNumber=['','','',''],tag='_',build='',rc=''):
    if (versionNumber[3] != '') and (build != ''):
        hash = str(versionNumber[3])[2:]
        hash = hash[:-1]
        ZipName = '{}{}v{}.{}.{}-{}{}{}'.format(script_Name,tag,str(versionNumber[0]),str(versionNumber[1]),str(versionNumber[2]),hash,rc,build)
    else:
        ZipName = '{}{}v{}.{}.{}{}{}'.format(script_Name,tag,str(versionNumber[0]),str(versionNumber[1]),str(versionNumber[2]),rc,build)
    print('Creating archive...')
    shutil.make_archive('release\\{}'.format(ZipName), 'zip', "tmp")
    print('\033[0m{}.zip is created.\033[0m'.format(ZipName))



def makeDummyVersionFile(versionNumber=['','','',''],tag='_',build='',rc=''):
    print('Creating version dummy file...')
    if (versionNumber[3] != '') and (build != ''):
        hash = str(versionNumber[3])[2:]
        hash = hash[:-1]
        dummyName = 'tmp//{}{}v{}.{}.{}-{}{}{}.md'.format(script_Name,tag,str(versionNumber[0]),str(versionNumber[1]),str(versionNumber[2]),hash,rc,build)
    else:
        dummyName = 'tmp//{}{}v{}.{}.{}{}{}.md'.format(script_Name,tag,str(versionNumber[0]),str(versionNumber[1]),str(versionNumber[2]),rc,build)
    dummy = open(dummyName,"w+")
    dummy.write('I\'am a dummy file that just show version numbers. I\'ve done my purpose yey!\n')


def grep(file,string):
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



def count(file,string):
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



def replace(file_path, pattern, subst):
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


def add(file, string):
    fileObject = open('{}'.format(file), "a")
    fileObject.write(string)



def createModdedBuild(folder):      # This function is completely manual atm:
    print('Starting construction of a public {} version...'.format(script_Name))

    print('Adjusting \033[96mdescription.ext\033[0m...')
    x = grep('{}\\description.ext'.format(folder),'    dev                 = "1SG Tully.B";')
    replace('{}\\description.ext'.format(folder), x, '    dev                 = "CPL. Geki.T";\n')
    x = grep('{}\\description.ext'.format(folder),'    onLoadMission       = "7th Cavalry - S3 1BN Battle Staff Operation";')
    replace('{}\\description.ext'.format(folder), x, '    onLoadMission       = "7th Cavalry - S3 Public Staff";\n')
    x = grep('{}\\description.ext'.format(folder),'    onLoadIntro         = "S3 1BN Battle Staff Operation";')
    replace('{}\\description.ext'.format(folder), x, '    onLoadIntro         = "S3 1BN Public Staff";\n')
    x = grep('{}\\description.ext'.format(folder),'    forceRotorLibSimulation = 1;')
    replace('{}\\description.ext'.format(folder), x, '    forceRotorLibSimulation = 0;\n')

    print('Adjusting \033[96mcba_settings.sqf\033[0m...')

    # adjusting blueforce tracker settings
    x = grep('{}\\cba_settings.sqf'.format(folder),'ace_map_BFT_Enabled')
    replace('{}\\cba_settings.sqf'.format(folder), x, 'force force ace_map_BFT_Enabled = true;\n')
    x = grep('{}\\cba_settings.sqf'.format(folder),'ace_map_BFT_HideAiGroups')
    replace('{}\\cba_settings.sqf'.format(folder), x, 'force force ace_map_BFT_HideAiGroups = true;\n')
    x = grep('{}\\cba_settings.sqf'.format(folder),'ace_map_BFT_Interval')
    replace('{}\\cba_settings.sqf'.format(folder), x, 'force force ace_map_BFT_Interval = 5;\n')

    # adjusting medical settings
    x = grep('{}\\cba_settings.sqf'.format(folder),'ace_medical_enableUnconsciousnessAI')
    replace('{}\\cba_settings.sqf'.format(folder), x, 'force force ace_medical_enableUnconsciousnessAI = 0;\n')
    x = grep('{}\\cba_settings.sqf'.format(folder),'ace_medical_medicSetting_PAK')
    replace('{}\\cba_settings.sqf'.format(folder), x, 'force force ace_medical_medicSetting_PAK = 1;\n')

    x = grep('{}\\cba_settings.sqf'.format(folder),'ace_nametags_playerNamesViewDistance')
    replace('{}\\cba_settings.sqf'.format(folder), x, '//ace_nametags_playerNamesViewDistance = 1;\n')
    x = grep('{}\\cba_settings.sqf'.format(folder),'ace_nametags_showCursorTagForVehicles')
    replace('{}\\cba_settings.sqf'.format(folder), x, '//ace_nametags_showCursorTagForVehicles = true;\n')
    x = grep('{}\\cba_settings.sqf'.format(folder),'ace_nametags_showPlayerNames')
    replace('{}\\cba_settings.sqf'.format(folder), x, '//ace_nametags_showPlayerNames = 1;\n')
    x = grep('{}\\cba_settings.sqf'.format(folder),'ace_nametags_showPlayerRanks')
    replace('{}\\cba_settings.sqf'.format(folder), x, '//ace_nametags_showPlayerRanks = true;\n')
    x = grep('{}\\cba_settings.sqf'.format(folder),'ace_nametags_showSoundWaves')
    replace('{}\\cba_settings.sqf'.format(folder), x, '//ace_nametags_showSoundWaves = 1;\n')
    x = grep('{}\\cba_settings.sqf'.format(folder),'ace_nametags_showVehicleCrewInfo')
    replace('{}\\cba_settings.sqf'.format(folder), x, '//ace_nametags_showVehicleCrewInfo = true;\n')

    x = grep('{}\\cba_settings.sqf'.format(folder),'ace_nightvision_aimDownSightsBlur')
    replace('{}\\cba_settings.sqf'.format(folder), x, '//ace_nightvision_aimDownSightsBlur = 0.25;\n')

    x = grep('{}\\cba_settings.sqf'.format(folder),'STHud_Settings_ColourBlindMode')
    replace('{}\\cba_settings.sqf'.format(folder), x, '//STHud_Settings_ColourBlindMode = "Normal";\n')
    x = grep('{}\\cba_settings.sqf'.format(folder),'STHud_Settings_Font')
    replace('{}\\cba_settings.sqf'.format(folder), x, '//STHud_Settings_Font = "PuristaSemibold";\n')
    x = grep('{}\\cba_settings.sqf'.format(folder),'STHud_Settings_HUDMode')
    replace('{}\\cba_settings.sqf'.format(folder), x, '//STHud_Settings_HUDMode = 3;\n')
    x = grep('{}\\cba_settings.sqf'.format(folder),'STHud_Settings_Occlusion')
    replace('{}\\cba_settings.sqf'.format(folder), x, '//STHud_Settings_Occlusion = true;\n')
    x = grep('{}\\cba_settings.sqf'.format(folder),'STHud_Settings_RemoveDeadViaProximity')
    replace('{}\\cba_settings.sqf'.format(folder), x, '//STHud_Settings_RemoveDeadViaProximity = true;\n')
    x = grep('{}\\cba_settings.sqf'.format(folder),'STHud_Settings_SquadBar')
    replace('{}\\cba_settings.sqf'.format(folder), x, '//STHud_Settings_SquadBar = false;\n')
    x = grep('{}\\cba_settings.sqf'.format(folder),'STHud_Settings_TextShadow')
    replace('{}\\cba_settings.sqf'.format(folder), x, '//STHud_Settings_TextShadow = 1;\n')

 
    print('Adding cScripts settings to \033[96mcba_settings.sqf\033[0m...')
    x = '{}\\cba_settings.sqf'.format(folder)
    add(x, '\n')
    add(x, '// cScripts Mission Settings\n')
    add(x, 'force force cScripts_Settings_allowCustomInit = true;\n')
    add(x, 'force force cScripts_Settings_allowCustomTagging = true;\n')
    add(x, 'force force cScripts_Settings_enable7cavZeusModules = true;\n')
    add(x, 'force force cScripts_Settings_setAiSystemDifficulty = 0;\n')
    add(x, 'force force cScripts_Settings_enableStartHint = true;\n')
    add(x, 'force force cScripts_Settings_setCustomHintText = "Public Mission";\n')
    add(x, 'force force cScripts_Settings_setCustomHintTopic = "This is Tactical Realism. Be tactical and realistic.";\n')
    add(x, 'force force cScripts_Settings_setMissionType = 0;\n')
    add(x, 'force force cScripts_Settings_setRedLightTime = 30;\n')
    add(x, 'force force cScripts_Settings_setTrainingHintTime = 20;\n')
    add(x, 'force force cScripts_Settings_showDiaryRecords = true;\n')
    add(x, 'force force cScripts_Settings_useCustomSupplyInventory = false;\n')
    add(x, 'force force cScripts_Settings_useCustomVehicleInventory = false;\n')
    add(x, 'force force cScripts_Settings_useCustomVehicleSettings = true;\n')


    print('Starting to adjust Loadouts...')
    loadoutFiles = ['CfgLoadouts_Common.hpp','CfgLoadouts_Alpha.hpp','CfgLoadouts_Bravo.hpp','CfgLoadouts_Charlie.hpp','CfgLoadouts_Medical.hpp','CfgLoadouts_Ranger.hpp','CfgLoadouts_Training.hpp','CfgLoadouts_S3.hpp']
    for loadoutFile in loadoutFiles:
        print('Searching for and replacing objects in \033[96m{}\033[0m...'.format(loadoutFile))
        # finding object: ItemcTab
        file = '{}\\cScripts\\Loadouts\\{}'.format(folder,loadoutFile)
        c = count(file,'gps[] = {"ItemcTab"};')
        for n in range(0,c):
            x = grep(file,'gps[] = {"ItemcTab"};')
            replace(file, x, '    gps[] = {""};\n')

        # finding object: ItemAndroid
        c = count(file,'gps[] = {"ItemAndroid"};')
        for n in range(0,c):
            x = grep(file,'gps[] = {"ItemAndroid"};')
            replace(file, x, '    gps[] = {""};\n')

        # finding object: Flagstack_Red
        c = count(file,'"Flagstack_Red",')
        for n in range(0,c):
            x = grep(file,'"Flagstack_Red",')
            replace(file, x, '')

    loadoutFiles = ['CfgLoadouts_Charlie.hpp','CfgLoadouts_Medical.hpp']
    for loadoutFile in loadoutFiles:
        print('Searching for and replacing magazines in \033[96m{}\033[0m...'.format(loadoutFile))

        file = '{}\\cScripts\\Loadouts\\{}'.format(folder,loadoutFile)

        c = count(file,'"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4,')
        for n in range(0,c):
            x = grep(file,'"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",4,')
            replace(file, x, '        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",4,\n')

        c = count(file,'"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2,')
        for n in range(0,c):
            x = grep(file,'"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2,')
            replace(file, x, '        "rhs_mag_30Rnd_556x45_M855A1_PMAG_Tracer_Red",2,\n')

        
        c = count(file,'"rhs_mag_30Rnd_556x45_M855A1_Stanag",4,')
        for n in range(0,c):
            x = grep(file,'"rhs_mag_30Rnd_556x45_M855A1_Stanag",4,')
            replace(file, x, '        "rhs_mag_30Rnd_556x45_M855A1_PMAG",4,\n')

        c = count(file,'"rhs_mag_30Rnd_556x45_M855A1_Stanag",5,')
        for n in range(0,c):
            x = grep(file,'"rhs_mag_30Rnd_556x45_M855A1_Stanag",5,')
            replace(file, x, '        "rhs_mag_30Rnd_556x45_M855A1_PMAG",5,\n')

        c = count(file,'"rhs_mag_30Rnd_556x45_M855A1_Stanag",6,')
        for n in range(0,c):
            x = grep(file,'"rhs_mag_30Rnd_556x45_M855A1_Stanag",6,')
            replace(file, x, '        "rhs_mag_30Rnd_556x45_M855A1_PMAG",6,\n')

        c = count(file,'"rhs_mag_30Rnd_556x45_M855A1_Stanag",8,')
        for n in range(0,c):
            x = grep(file,'"rhs_mag_30Rnd_556x45_M855A1_Stanag",8,')
            replace(file, x, '        "rhs_mag_30Rnd_556x45_M855A1_PMAG",8,\n')

        c = count(file,'"rhs_mag_30Rnd_556x45_M855A1_Stanag",10,')
        for n in range(0,c):
            x = grep(file,'"rhs_mag_30Rnd_556x45_M855A1_Stanag",10,')
            replace(file, x, '        "rhs_mag_30Rnd_556x45_M855A1_PMAG",10,\n')

        c = count(file,'"rhs_mag_30Rnd_556x45_M855A1_Stanag",12,')
        for n in range(0,c):
            x = grep(file,'"rhs_mag_30Rnd_556x45_M855A1_Stanag",12,')
            replace(file, x, '        "rhs_mag_30Rnd_556x45_M855A1_PMAG",12,\n')
    
    
    print('Creating new loadouts...')
    print('Adding new loadout \033[32mCAV_Alpha_Helo_GNR\033[0m to \033[96mCfgLoadouts_AlphaClass.hpp\033[0m...')
    x = grep('{}\\cScripts\\Loadouts\\CfgLoadouts_AlphaClass.hpp'.format(folder),'class B_Helicrew_F : CAV_Alpha_Helo_GNR {{}};')
    replace('{}\\cScripts\\Loadouts\\CfgLoadouts_AlphaClass.hpp'.format(folder), x, 'class B_Helicrew_F : CAV_Alpha_Helo_GNR {{}};\nclass B_T_Helicrew_F : CAV_Alpha_Helo_CHIEF {{}};\n')
   

    print('Starting to adjust logistical crates...')
    functionFiles = ['fn_doAmmoCrate.sqf','fn_doExplosivesCrate.sqf','fn_doGrenadesCrate.sqf','fn_doLaunchersCrate.sqf','fn_doSpecialWeaponsCrate.sqf','fn_doStarterCrateSupplies.sqf','fn_doSupplyCrate.sqf','fn_doWeaponsCrate.sqf']
    for functionFile in functionFiles:
        print('Searching for and replacing objects in \033[96m{}\033[0m...'.format(functionFile))
        # finding object: ItemcTab
        file = '{}\\cScripts\\CavFnc\\functions\\logistics\\{}'.format(folder,functionFile)
        c = count(file,'"ItemcTab"')
        for n in range(0,c):
            x = grep(file,'"ItemcTab"')
            replace(file, x, '')

        # finding object: ItemAndroid
        c = count(file,'"ItemAndroid"')
        for n in range(0,c):
            x = grep(file,'"ItemAndroid"')
            replace(file, x, '')

        # finding object: Flagstack_Red
        c = count(file,'"Flagstack_Red"')
        for n in range(0,c):
            x = grep(file,'"Flagstack_Red"')
            replace(file, x, '')

    print('Adjusting radio presets...')
    x = grep('{}\\cScripts\\Loadouts\\script\\CfgPoppy.hpp'.format(folder),'channelNames')
    replace('{}\\cScripts\\Loadouts\\script\\CfgPoppy.hpp'.format(folder), x, '        channelNames[] = {"GUNSLINGER","AVIATION","VIKING","PUNISHER","BANSHEE","SABRE","BANDIT","MISFIT","HAVOC","IDF-1","IDF-2","CAS-1","CAS-2","GROUND-TO-AIR","LOGISTICS","CONVOY-1","CONVOY-2","ZEUS","CAG","COMMAND"};\n')





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
