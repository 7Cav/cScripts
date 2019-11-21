#!/usr/bin/env python3

import sys, os, fnmatch, fileinput
import argparse, shutil, subprocess, tempfile, json
import configparser

__version__ = 1.0

# set projecty path
scriptPath = os.path.realpath(__file__)
scriptDir = os.path.dirname(scriptPath)
rootDir = os.path.dirname(os.path.dirname(scriptPath))

outputDir = '{}/doc'.format(rootDir)
function_dir  = '{}/cScripts/CavFnc/functions'.format(rootDir)

def color_string(string='', color='\033[0m', auto_color=False):
    if auto_color:
        return '\033[0m{}{}\033[0m'.format(color,string)
    else:
        return string


def fetch_objects(path=''):
    os.chdir(path)
    content = os.listdir(path)

    objectList = []

    folderList = [] # Collect directories
    fileList = []   # Collect files

    for obj in content:
        if os.path.isfile(obj):
            fileList.append(obj)
        elif os.path.isdir(obj):
            folderList.append(obj)
        else:
            sys.exit('\nIssues occured when listing files.')

    objectList.append(folderList)
    objectList.append(fileList)

    os.chdir(scriptDir)

    return objectList


def main():
    os.chdir(rootDir)

    #print('Featching all functions...')
    function_dict = {}
    function_categories = fetch_objects(function_dir)
    function_categories = function_categories[0]

    for function_category in function_categories:
        functions = fetch_objects('{}/{}'.format(function_dir, function_category))
        functions = functions[1]

        function_dict.update({function_category : {}})
        
        for function in functions:
            function_file = function
            function_name = function_file.replace('.sqf', '')
            function_func = function_name.replace('fn_', 'cScripts_fnc_')
            function_link = 'https://github.com/7Cav/cScripts/blob/master/cScripts/CavFnc/functions/{}/{}'.format(function_category,function_file)
            function_path = './cScripts/CavFnc/functions/{}/{}'.format(function_category,function_file)
    
            function_dict[function_category].update({function_name : {}})
            function_dict[function_category][function_name].update({
                'call': function_func,
                'file': function_file,
                'link': function_link,
                'path': function_path,
                'arguments': [],
                'description': "",
                'author': "",
                'exsamples': []
            })

            file = open('{}/{}/{}'.format(function_dir, function_category, function_file))
            script_header = []
            for i, line in enumerate(file):
                if ' */' in line:
                    break
                if '/*' in line:
                    continue
                if ' *' in line:
                    line = line.replace(' * ', '')
                    line = line.replace(' *', '')
                    line = line.replace('\n', '')
                    script_header.append(line)
            
            description = []
            arguments = []
            return_value = []
            exsamples = []
            block = [
                False, # Description
                False, # Arguments
                False, # Return Value
                False  # Exsample
            ]
            for i, line in enumerate(script_header):
                if 'Author:' in line:
                    author = line.replace('Author: ', '')
                    function_dict[function_category][function_name].update({'author': author})
                    block = [False,False,False,False]
                    continue
                if 'Public:' in line:
                    author = line.replace('Public: ', '')
                    function_dict[function_category][function_name].update({'public': author})
                    block = [False,False,False,False]
                    continue
                if 'Arguments:' in line:
                    block = [False,True,False,False]
                if 'Return Value:' in line:
                    block = [False,False,True,False]
                if 'Example:' in line or 'Examples:' in line:
                    block = [False,False,False,True]

                if block[0]:
                    description.append(line)
                    continue
                if block[1]:
                    arguments.append(line)
                    continue
                if block[2]:
                    return_value.append(line)
                    continue
                if block[3]:
                    exsamples.append(line)
                    continue
                
                if not line == "":
                    description.append(line)

            if int(len(arguments)) >= 1:
                arguments.remove(arguments[0])
                arguments = [x for x in arguments if x]
            if int(len(return_value)) >= 1:
                return_value.remove(return_value[0])
                return_value = [x for x in return_value if x]
            if int(len(exsamples)) >= 1:
                exsamples.remove(exsamples[0])
                exsamples = [x for x in exsamples if x]

            description_text = '\n'.join(description)
            function_dict[function_category][function_name].update({'description': description_text})

            function_dict[function_category][function_name].update({'arguments': arguments})
            function_dict[function_category][function_name].update({'exsamples': exsamples})

    print(json.dumps(function_dict))

if __name__ == "__main__":
    sys.exit(main())
