#!/usr/bin/env python3

import sys, os, fnmatch, fileinput
import argparse, shutil, subprocess, tempfile
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


    print('Featching all functions...')
    all_functions = {}
    func_categories = fetch_objects(function_dir)
    func_categories = func_categories[0]

    for func_cat in func_categories:

        functions = fetch_objects('{}\{}'.format(function_dir, func_cat))
        functions = functions[1]
        
        all_functions[func_cat] = {'functions': functions}
        

    print('Writing Function list article...')
    article = open('{}/Function-list.md'.format(outputDir),"w+")
    article.write('\n## Index\n')
    
    for category in all_functions:
        article.write('\n\n#### {}\n'.format(category.capitalize()))
        for func_name in all_functions[category]['functions']:
            func_name_prity = func_name[:-4]
            func_name_function = 'cScripts_fnc_' + func_name_prity

            article.write('- [[{}|Function-list#{}]]\n'.format(func_name_function, func_name_prity))

    article.write('\n# Functions\n')

    for category in all_functions:
        article.write('\n\n## {}\n'.format(category.capitalize()))
        for func_name in all_functions[category]['functions']:
            func_name_prity = func_name[:-4]
            func_name_function = 'cScripts_fnc_' + func_name_prity
            article.write('\n\n### {}\n'.format(func_name_prity))
            article.write('[`{}`](https://github.com/7Cav/cScripts/blob/master/cScripts/CavFnc/functions/{}/{})\n'.format(func_name_function, category, func_name))

            # Get and function file read file
            file = open('{}/{}/{}'.format(function_dir, category, func_name))
            func_info = []
            is_quto = False
            is_list = False
            is_argu = False
            is_exam = False
            is_code = False
            for i, line in enumerate(file):
                line = line.replace('<', '&#60;')
                line = line.replace('>', '&#62;')
                if ' */' in line:
                    break
                if '/*' in line:
                    continue
                if ' *' in line:
                    info = line.replace('*','').strip()
                    if 'Arguments:' in info:
                        is_quto = False
                        is_list = False
                        is_argu = True
                        is_exam = False
                        is_code = False
                        info = info.replace('Arguments:','**Arguments:**').strip()
                        article.write('\n\n\n{}\n'.format(info))
                        continue
                    if 'Return Value:' in info:
                        is_quto = False
                        is_list = False
                        is_argu = False
                        is_exam = False
                        is_code = True
                        info = info.replace('Return Value:','**Return Value:**').strip()
                        article.write('\n\n\n{}\n'.format(info))
                        continue
                    if 'Example:' in info or 'Examples:' in info:
                        is_quto = False
                        is_list = False
                        is_argu = False
                        is_exam = True
                        is_code = False
                        info = info.replace('Example:','**Example:**').strip()
                        article.write('\n\n\n{}\n'.format(info))
                        continue
                    if 'Author:' in info:
                        is_quto = True
                        is_list = False
                        is_argu = False
                        is_exam = False
                        is_code = False
                        info = info.replace('Author:','**Author:**').strip()
                        article.write('\n\n{}\n\n\n'.format(info))
                        continue
                    if 'Edited:' in info:
                        is_quto = True
                        is_list = False
                        is_argu = False
                        is_exam = False
                        is_code = False
                        info = info.replace('Edited:','**Edited:**').strip()
                        article.write('{}\n\n\n'.format(info))
                        continue
                    if 'Public:' in info:
                        is_quto = True
                        is_list = False
                        is_argu = False
                        is_exam = False
                        is_code = False
                        info = info.replace('Public:','**Public:**').strip()
                        article.write('\n\n{}\n'.format(info))
                        continue
                    if info == '':
                        continue

                    if is_quto:
                        article.write('> {}<br>'.format(info))
                        continue
                    if is_list:
                        article.write('\n- {}\n'.format(info))
                        continue
                    if is_argu:
                        article.write('\n{}<br>'.format(info))
                        continue
                    if is_exam:
                        article.write('\n```\n{}\n```\n'.format(info))
                        continue
                    if is_code:
                        article.write('`{}`\n'.format(info))
                        continue
                    article.write('\n{}\n'.format(info))
    article.close()


if __name__ == "__main__":
    sys.exit(main())
