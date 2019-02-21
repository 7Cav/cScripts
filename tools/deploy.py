#!/usr/bin/env python3
import sys, os, fnmatch, fileinput
import argparse, shutil, subprocess, tempfile

__version__ = 2.0

# GLOBALS #################################################################################

version_file = 'cScripts//script_component.hpp'

# #########################################################################################

# set projecty path
scriptPath = os.path.realpath(__file__)
scriptDir = os.path.dirname(scriptPath)
rootDir = os.path.dirname(os.path.dirname(scriptPath))
os.chdir(rootDir)

# #########################################################################################

def color_string(string='', color='\033[0m', auto_color=False):
    if auto_color:
        return '\033[0m{}{}\033[0m'.format(color,string)
    else:
        return string

def get_git_latest_tag(return_type='str'):
    latest_tag = ''
    try:
        latest_tag = subprocess.check_output(['git', 'describe', '--abbrev=0', '--tags']).strip()
    except:
        latest_tag = ''

    latest_tag = latest_tag.decode("utf-8")

    if return_type == 'arr':
        latest_tag_arr = []
        tagarr = latest_tag.split(".")
        for i in tagarr:
            latest_tag_arr.append(int(i))

        return latest_tag_arr
    elif return_type == 'str':
        return latest_tag
    else:
        return ''

def get_script_version_number(version_file='', return_type='str'):
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

# #########################################################################################

def main():
    # Handle arguments
    latestTag = get_git_latest_tag('str')
    latestTagArr = get_git_latest_tag('arr')
    scriptVersion = get_script_version_number(version_file,'str')
    scriptVersionArr = get_script_version_number(version_file,'arr')
    # latestTag = "1.2.1"
    # latestTagArr = [1,2,2]
    # scriptVersion = "1.2.2"
    # scriptVersionArr = [1,2,1]


    if (not scriptVersion == latestTag):
        update = [(x < y) for x, y in zip(latestTagArr,scriptVersionArr)]
        if True in update:
            return scriptVersion
        else:
            print('Script version is lower then tag number {}.'.format(latestTag))
            return 0
    else:
        print('Version {} number is same as release build.'.format(scriptVersion))
        return 0


if __name__ == "__main__":
    sys.exit(main())
