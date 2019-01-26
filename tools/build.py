#!/usr/bin/env python3
#
# usage: build [-h] [-b {release,dev,test,custom}] [-p]
#                    [-rc RELEASECANDIDATE] [-y] [--auto_color] [-v]
# 
# This script build and pack the selected mission framework.
# 
# optional arguments:
#   -h, --help            show this help message and exit
#   -b {release,dev,test,custom}, --buildtype {release,dev,test,custom}
#                         Add a additional tag to a to the build
#   -p, --public          Create a "public" build to be used on non CavPack
#                         Enviroment
#   -rc RELEASECANDIDATE, --releasecandidate RELEASECANDIDATE
#                         Set a release candidate number to the build ".RC1" for
#                         example.
#   -y, --fastbuild       Will instantly run untill done.
#   --auto_color          This will set color to the build.
#   -v, --version         show program's version number and exit
# 
# This build script is primarly built to pack 7th Cavalry Script package; cScripts.
# The tool is build tool should be cross platform and can be used for other packages as well.
#
import sys, os, fnmatch, fileinput
import argparse, shutil, subprocess, tempfile
import configparser

__version__ = 2.0

# GLOBALS #################################################################################

exclude_content = ['.vscode', '.editorconfig', '.git', '.gitattributes', '.github', '.gitignore', '.travis.yml','mission.sqm', 'release', 'resourses', 'tools', 'tmp']
version_file = 'cScripts//script_component.hpp'
script_name = 'cScripts'

# #########################################################################################

# set projecty path
scriptPath = os.path.realpath(__file__)
scriptDir = os.path.dirname(scriptPath)
rootDir = os.path.dirname(os.path.dirname(scriptPath))
os.chdir(rootDir)

# #########################################################################################

# GLOBAL config handling
config = configparser.ConfigParser(interpolation=configparser.ExtendedInterpolation())
config.read('{}/build.ini'.format(scriptDir))

exclude_content = config['DEFAULT']['exclude']
exclude_content = exclude_content.replace(' ','')
exclude_content = exclude_content.replace('\'','')
exclude_content = exclude_content.replace('\n',',')
exclude_content = exclude_content.split(',')
exclude_content = [x for x in exclude_content if x] # Remove empty array object if exists.
version_file = config['DEFAULT']['version_file']
script_name = config['DEFAULT']['name']

# #########################################################################################

def c_string(string='',color='\033[0m',auto_color=False):
    if auto_color:
        return '\033[0m'+ color + string + '\033[0m'
    else:
        return string

def get_git_commit_hash(get_long=False):
    commit_hash = ''
    if get_long:
        try:
            commit_hash = subprocess.check_output(['git', 'rev-parse', 'HEAD']).strip()
        except:
            commit_hash = ''
    else: 
        try:
            commit_hash = subprocess.check_output(['git', 'rev-parse', '--short', 'HEAD']).strip()
        except:
            commit_hash = ''

    commit_hash = commit_hash.decode("utf-8")

    return commit_hash



def get_git_branch_name():
    branch_name = ''
    try:
        branch_name = subprocess.check_output(['git', 'rev-parse', '--abbrev-ref', 'HEAD']).strip()
    except:
        branch_name = ''

    branch_name = branch_name.decode("utf-8")

    return branch_name


def get_filename_from_path_string(pathfile=''):
    filenamepath = pathfile.split('/')
    filename = filenamepath[-1]
    filename = str(filename)
    return filename

def get_script_version_number(version_file='',return_type='arr'):
    file = open(version_file)
    for i, line in enumerate(file):
        if i == 1:
            line = line.partition('"')[-1].rpartition('"')[0]
            line = line.split(".")
            version = line
            version = list(map(int, version))
    file.close()    
    if return_type == 'arr':
        return version
    elif return_type == 'str':
        if len(version) == 1:
            version = '{}'.format(version[0])
        elif len(version) == 2:
            version = '{}.{}'.format(version[0],version[1])
        elif len(version) == 3:
            version = '{}.{}.{}'.format(version[0],version[1],version[2])
        elif len(version) == 4:
            version = '{}.{}.{}.{}'.format(version[0],version[1],version[2],version[3])
        else:
            version = ''
        return version
    else:
        return ''



def set_package_name(package_name='',build_type='',release_candidate=0, public_version=False):
    version_number = get_script_version_number(version_file,'str')
    commit_hash = get_git_commit_hash(False)
    branch_name = get_git_branch_name()

    if commit_hash:
        if not build_type == 'release':
            commit_hash = '-{}'.format(commit_hash)
        else:
            commit_hash = ''
    else:
        commit_hash = ''

    if version_number:
        version_number = '-{}{}'.format(version_number,commit_hash)
    else:
        version_number = ''

    if branch_name:
        if not build_type == 'release' and branch_name == 'master' :
            branch_name = '-{}'.format(branch_name)
        else:
            branch_name = ''
    else:
        branch_name = ''

    if (build_type == 'release'):
        build_type = ''
    elif (build_type == 'dev'):
        build_type = '_DevBuild{}'.format(branch_name)
    elif (build_type == 'test'):
        build_type = '_TestBuild{}'.format(branch_name)
    else:
        build_type = ''

    if public_version:
        public_build = '_PUBLIC'
    else:
        public_build = ''

    if release_candidate:
        release_candidate = '_rc{}'.format(release_candidate)
    else:
        release_candidate = ''

    name = '{}{}{}{}{}'.format(package_name,public_build,version_number,build_type,release_candidate)

    return name



def request_action(text='Continue?'):
    Continue_Count = 0
    while(True):
        yes_no = input('{} (Yes or No)\n> '.format(text))
        yes_no = yes_no.lower()
        if (yes_no == 'yes' or yes_no == 'y'):
            return True
        elif (yes_no == 'no' or yes_no == 'n'):
            return False
        else:
            pass
        Continue_Count += 1
        if Continue_Count >= 3:
            sys.exit()



def fetch_objects():
    content = os.listdir(rootDir)

    objectList = []

    folderList = [] # Collect directories
    fileList = []   # Collect files

    for obj in content:
        if os.path.isfile(obj):
            if obj not in exclude_content:
                fileList.append(obj)
        elif os.path.isdir(obj):
            if obj not in exclude_content:
                folderList.append(obj)
        else:
            sys.exit('\nIssues occured when listing files.')

    objectList.append(folderList)
    objectList.append(fileList)
    
    return objectList



def list_objects(objects,auto_color=False):
    if objects == []:
        sys.exit('No objects were found\nThis means that a build cant be created att all pleace check your paths and script location.')
    else:
        print(c_string('Found Objects:','\033[1m',auto_color))
        for obj in objects[0]:
            print(c_string(obj,'\033[42m',auto_color),end=' ')
        for obj in objects[1]:
            print(c_string(obj,'\033[96m',auto_color),end=' ')
        print()



def build_release(package_name='',build_type='', release_candidate=0, public_version=False, public_file_paths=[], public_operations=[], auto_color=False):

    def replace(file,searchExp,replaceExp):
        for line in fileinput.input(file, inplace=1):
            if searchExp in line:
                line = line.replace(searchExp,replaceExp)
            sys.stdout.write(line)

    temp = tempfile.mkdtemp()

    name = set_package_name(package_name,build_type,release_candidate,public_version)
    dummy_name = '{}.md'.format(name)
    version = get_script_version_number(version_file,'str')
    branch_name = get_git_branch_name()
    commit_hash = get_git_commit_hash(True)

    # copying files to release folder
    print('Starting build copying...')

    content_list = fetch_objects()
    folder_list = content_list[0]
    file_list = content_list[1]

    for obj in file_list:
        print('Featching ' + c_string(obj,'\033[96m',auto_color) + '...')
        shutil.copy2(obj, temp)
    for obj in folder_list:
        print('Featching ' + c_string(obj,'\033[42m',auto_color) + ' directory...')
        shutil.copytree(obj, '{}/{}'.format(temp,obj))

    if not os.path.isdir('release'):
        try:
            relase_folder = os.stat('release')
        except:
            relase_folder = os.mkdir('release')
    else:
        relase_folder = 'release'

    if public_version:
        public_build = ' public'
    else:
        public_build = ''

    # creating public build from config
    if public_version:
        print('Creating public build...')

        if not len(public_operations[0]) == 0:
            print('Replacing gear...')
            for file in public_file_paths[0]:
                print('Checking config file ' + c_string(get_filename_from_path_string(file),'\033[96m',auto_color) +'...')
                for gear in public_operations[0]:
                    print('Replacing ' + c_string('{}'.format(gear[0]),'\033[95m',auto_color) + ' with ' + c_string('{}'.format(gear[1]),'\033[95m',auto_color) + '.')
                    replace('{}/{}'.format(temp,file),gear[0],gear[1])

            for file in public_file_paths[1]:
                print('Checking script file ' + c_string(get_filename_from_path_string(file),'\033[96m',auto_color) +'...')
                for gear in public_operations[0]:
                    print('Replacing ' + c_string('{}'.format(gear[0]),'\033[95m',auto_color) + ' with ' + c_string('{}'.format(gear[1]),'\033[95m',auto_color) + '.')
                    replace('{}/{}'.format(temp,file),gear[0],gear[1])
                    
            for file in public_file_paths[2]:
                print('Checking ace arsena file ' + c_string(get_filename_from_path_string(file),'\033[96m',auto_color) +'...')
                for gear in public_operations[0]:
                    print('Replacing ' + c_string('{}'.format(gear[0]),'\033[95m',auto_color) + ' with ' + c_string('{}'.format(gear[1]),'\033[95m',auto_color) + '.')
                    replace('{}/{}'.format(temp,file),gear[0],gear[1])

        if not len(public_operations[1]) == 0:
            print('Removing gear...')
            for file in public_file_paths[0]:
                print('Checking config file ' + c_string(get_filename_from_path_string(file),'\033[96m',auto_color) +'...')
                for gear in public_operations[1]:
                    print('Removing ' + c_string('{}'.format(gear),'\033[95m',auto_color) + '.')
                    replace('{}/{}'.format(temp,file),gear, "\"\"")
                    replace('{}/{}'.format(temp,file),"        \"\",", "")

            for file in public_file_paths[1]:
                print('Checking script file ' + c_string(get_filename_from_path_string(file),'\033[96m',auto_color) +'...')
                for gear in public_operations[1]:
                    print('Removing ' + c_string('{}'.format(gear),'\033[95m',auto_color) + '.')
                    replace('{}/{}'.format(temp,file),gear, "\"\"")

            for file in public_file_paths[2]:
                print('Checking ace arsena file ' + c_string(get_filename_from_path_string(file),'\033[96m',auto_color) +'...')
                for gear in public_operations[1]:
                    print('Removing ' + c_string('{}'.format(gear),'\033[95m',auto_color) + '.')
                    replace('{}/{}'.format(temp,file),gear, "\"\"")

        if os.path.isfile('{}/cba_settings.sqf'.format(temp)):
            print(c_string('cba_settings.sqf','\033[96m',auto_color) + ' detected allowing for adjustmetns to be made...')

            if not len(public_operations[2]) == 0:
                print('Applying adjustmetns to settings...')
                for setting in public_operations[2]:
                    print('Changing ' + c_string('{}'.format(setting[0]),'\033[95m',auto_color) + ' with ' + c_string('{}'.format(setting[1]),'\033[95m',auto_color) + '.')
                    replace('{}/cba_settings.sqf'.format(temp),setting[0],setting[1])

            if not len(public_operations[3]) == 0:
                print('Adding new settings...')
                with open('{}/cba_settings.sqf'.format(temp), 'a') as settings_file:
                    settings_file.write('\n')
                    for line in public_operations[3]:
                        print('Adding ' + c_string('{}'.format(line),'\033[95m',auto_color) + ' to the end of the ' + c_string('cba_settings.sqf','\033[96m',auto_color))
                        settings_file.write('\n{}'.format(line))
                settings_file.close()

        else:
            print('No CBA settings file detected skipping changes...')

    print('Creating version dummy file...')
    dummy = open('{}/{}'.format(temp,dummy_name),"w+")
    dummy.write('{}{} version {}\nrev: {}\nbranch: {}'.format(script_name,public_build,version,commit_hash,branch_name))
    dummy.close()


    print('Building archive...')
    archive_name = '{}'.format(name)
    shutil.make_archive('{}/{}'.format(relase_folder,archive_name), 'zip', temp)

# #########################################################################################

def main():
    # Handle arguments
    parser = argparse.ArgumentParser(
        prog='Build',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        description='This script build and pack the selected mission framework.',
        epilog='This build script is primarly built to pack 7th Cavalry Script package; cScripts.\nThe tool should be cross platform and can be used for other packages as well.'
    )

    parser.add_argument('-b', '--buildtype',
        required=False,
        choices=['release', 'dev', 'test', 'custom'],
        default='test',
        help="Add a additional tag to a to the build"
    )
    parser.add_argument("-p", "--public",
        help="Create a \"public\" build to be used on non CavPack Enviroment",
        required=False,
        action="store_true"
    )
    parser.add_argument('-rc', '--releasecandidate',
        type=int,
        required=False,
        help="Set a release candidate number to the build \".RC1\" for example."
    )

    parser.add_argument("-y", "--fastbuild",
        help="Will instantly run untill done.",
        action="store_false"
    )
    parser.add_argument("--auto_color",
        help="Enable collors in the script." if os.name == 'nt' else "Disable colors in the script.",
        action="store_true" if os.name == 'nt' else "store_false"
    )

    parser.add_argument('-v', '--version', action='version', version='Author: Andreas Broström <andreas.brostrom.ce@gmail.com>\nScript version: {}.'.format(__version__))

    args = parser.parse_args()

    # Construct public build
    public_file_paths = []
    public_operations = []
    
    if args.public:
        config_gear_files = config['PATHS']['config_gear_files']
        config_gear_files = config_gear_files.replace(' ','')
        config_gear_files = config_gear_files.replace('\n',',')
        config_gear_files = config_gear_files.split(',')
        config_gear_files = [x for x in config_gear_files if x] # Remove empty array object if exists.
        public_file_paths.append(config_gear_files)

        script_gear_files = config['PATHS']['script_gear_files']
        script_gear_files = script_gear_files.replace(' ','')
        script_gear_files = script_gear_files.replace('\n',',')
        script_gear_files = script_gear_files.split(',')
        script_gear_files = [x for x in script_gear_files if x] # Remove empty array object if exists.
        public_file_paths.append(script_gear_files)

        acearsenal_files = config['PATHS']['acearsenal_files']
        acearsenal_files = acearsenal_files.replace(' ','')
        acearsenal_files = acearsenal_files.replace('\n',',')
        acearsenal_files = acearsenal_files.split(',')
        acearsenal_files = [x for x in acearsenal_files if x] # Remove empty array object if exists.
        public_file_paths.append(acearsenal_files)

        # Replace Handler
        replace = config['PUBLIC BUILD OPERATIONS']['Replace_gear']
        replace = replace.replace(' ','')
        replace = replace.replace('\n',',')
        replace = replace.split(',')
        replace = [x for x in replace if x] # Remove empty array object if exists.
        replaces = []
        replacesList = []
        if not (len(replace) % 2) == 0:
            sys.exit('Replace have a detected a uneven replace number. You can\'t replace anything in to nothing. Use the remove operation for this. \nBuild Aborted')
        for x in replace:
            replaces.append(x)
            if len(replaces) == 2:
                replacesList.append(replaces)
                replaces = []
        public_operations.append(replacesList)

        # Remove Handler
        remove = config['PUBLIC BUILD OPERATIONS']['Remove_gear']
        remove = remove.replace(' ','')
        remove = remove.replace('\n',',')
        remove = remove.split(',')
        remove = [x for x in remove if x] # Remove empty array object if exists.
        removes = []
        for x in remove:
            removes.append(x)
        public_operations.append(removes)

        # Settings Change handler
        change_setting = config['PUBLIC BUILD OPERATIONS']['Change_settings']
        change_setting = change_setting.replace(', ',',')
        change_setting = change_setting.replace('\n',',')
        change_setting = change_setting.split(',')
        change_setting = [x for x in change_setting if x] # Remove empty array object if exists.
        change_settings = []
        change_settings_list = []
        if not (len(change_setting) % 2) == 0:
            sys.exit('Settings changes have a detected a uneven change number. You can\'t change a settings in to nothing. \nBuild Aborted')
        for x in change_setting:
            change_settings.append(x)
            if len(change_settings) == 2:
                change_settings_list.append(change_settings)
                change_settings = []
        public_operations.append(change_settings_list)

        # Settings Add handler
        add_setting = config['PUBLIC BUILD OPERATIONS']['New_settings']
        add_setting = add_setting.replace('\n',',')
        add_setting = add_setting.split(',')
        add_setting = [x for x in add_setting if x] # Remove empty array object if exists.
        add_settings = []
        for x in add_setting:
            add_settings.append(x)
        public_operations.append(add_settings)

    # build handler
    print(c_string('Preparing a build for {}\n'.format(script_name),'\033[1m',args.auto_color))

    objects = fetch_objects()
    list_objects(objects,args.auto_color)

    # press enter to start build
    input('\nPress enter to start the build process...') if args.fastbuild else print('')

    # prep release
    if args.buildtype == 'release':
        if not get_git_branch_name() == 'master':
            if args.fastbuild:
                action = request_action('You are currently not on master branch. Do you wish to checkout master?')
                if action:
                    try:
                        subprocess.check_output(['git', 'checkout', 'master'], shell=True)
                    except:
                        action = request_action('Do you wish to continue anyways?')
                    if not action:
                        sys.exit()
            else:
                try:
                    subprocess.check_output(['git', 'checkout', 'master'], shell=True)
                except:
                    print(c_string('Warning: Checkout was aborted. Your still on branch {}...'.format(get_git_branch_name()),'\033[91m',args.auto_color))
                
    name = set_package_name(script_name,args.buildtype,args.releasecandidate)

    build_release(script_name,args.buildtype,args.releasecandidate,args.public,public_file_paths,public_operations,args.auto_color)

    print('Build complet.')

    if os.name == 'nt':
        os.system('explorer.exe {}\\release'.format(rootDir))

if __name__ == "__main__":
    sys.exit(main())
