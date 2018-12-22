#!/usr/bin/env python3

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
import sys, os, fnmatch
import argparse, shutil, subprocess, tempfile
__version__ = 2.0

# GLOBALS #################################################################################

exlude_content = ['.vscode', '.editorconfig', '.git', '.gitattributes', '.github', '.gitignore', '.travis.yml','mission.sqm', 'release', 'resourses', 'tools', 'tmp']
version_file = 'cScripts\\script_component.hpp'
script_name = 'cScripts'

# #########################################################################################

# set projecty path
scriptDir = os.path.realpath(__file__)
rootDir = os.path.dirname(os.path.dirname(scriptDir))
os.chdir(rootDir)

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

    commit_hash = str(commit_hash)
    commit_hash = commit_hash[:-1]
    commit_hash = commit_hash[2:]

    return commit_hash



def get_git_branch_name():
    branch_name = ''
    try:
        branch_name = subprocess.check_output(['git', 'rev-parse', '--abbrev-ref', 'HEAD']).strip()
    except:
        branch_name = ''

    branch_name = str(branch_name)
    branch_name = branch_name[:-1]
    branch_name = branch_name[2:]

    return branch_name



def get_script_version_number(version_file='',return_type='arr'):
    file = open(version_file)
    for i, line in enumerate(file):
        if i == 1:
            line = line.partition('"')[-1].rpartition('"')[0]
            line = line.split(".")
            version = line
            version = list(map(int, version))
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



def set_package_name(package_name='',build_type='',release_candidate=0):
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



    if release_candidate:
        release_candidate = '_rc{}'.format(release_candidate)
    else:
        release_candidate = ''

    name = '{}{}{}{}'.format(package_name,version_number,build_type,release_candidate)

    return name



def request_action(text='Continue?'):
    while(True):
        yes_no = input('{} (Yes or No)\n> '.format(text))
        yes_no = yes_no.lower()
        if (yes_no == 'yes' or yes_no == 'y'):
            return True
        elif (yes_no == 'no' or yes_no == 'n'):
            return False
        else:
            pass



def fetch_objects():
    content = os.listdir(rootDir)

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



def build_release(package_name='',build_type='',release_candidate=0, auto_color=False):
    temp = tempfile.mkdtemp()

    name = set_package_name(package_name,build_type,release_candidate)
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

    print('Creating version dummy file...')
    dummy = open('{}\{}'.format(temp,dummy_name),"w+")
    dummy.write('{} version {}\nrev: {}\nbranch: {}'.format(script_name,version,commit_hash,branch_name))

    print('Building archive...')
    archive_name = '{}'.format(name)
    shutil.make_archive('{}/{}'.format(relase_folder,archive_name), 'zip', temp)
    
# #########################################################################################

def main():
    # Handle arguments
    parser = argparse.ArgumentParser()

    #group = parser.add_mutually_exclusive_group(required=False)

    parser.add_argument('-b', '--buildtype',
        required=False,
        choices=['release', 'dev', 'test', 'custom'],
        default='test',
        help="Add a additional tag to a to the build"
    )
    parser.add_argument("-p", "--public",
        help="Create a \"public\" build to be used on non CavPack Enviroment",
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
        help="This will set color to the build.",
        action="store_true"
    )

    parser.add_argument('-v', '--version', action='version', version='Build script version {}.'.format(__version__))

    args = parser.parse_args()


    # build handler
    print(c_string('Preparing a build for {}\n'.format(script_name),'\033[1m',args.auto_color))

    objects = fetch_objects()
    list_objects(objects,args.auto_color)

    # press enter to start build
    if args.fastbuild:
        input('\nPress enter to start the build process...')
    else:
        print('')

    # prep release
    if args.buildtype == 'release':
        if not get_git_branch_name() == 'master':
            if args.fastbuild:
                action = request_action('WARNING! You are currently not on master branch do you wish to checkout master?')
                if action:
                    subprocess.check_output(['git', 'checkout', 'master'], shell=True)
            else:
                subprocess.check_output(['git', 'checkout', 'master'], shell=True)
                
    name = set_package_name(script_name,args.buildtype,args.releasecandidate)

    build_release(script_name,args.buildtype,args.releasecandidate,args.auto_color)

    print('Build compleet.')

    if os.name == 'nt':
        os.system('explorer.exe {}\\release'.format(rootDir))

if __name__ == "__main__":
    sys.exit(main())
