import os
import glob
import re
import collections
# Information
print ('This script list all items used in cScripts.')

print()
print(' Console Log:')
# Paths
loadoutPath = "..\\cScripts\\Loadouts" # Make Sure to use double backslashes !
loadoutFiles = glob.glob("{}\\CfgLoadouts_*.hpp".format(loadoutPath))

# Get Equipment Used
def getEquipment(FilePath,getObject):
    equipmentList = [] #This dictionary will store every tag
    Success = True
    try:
        if (getObject == "backpack") or (getObject == "goggles") or (getObject == "headgear") or (getObject == "uniform") or (getObject == "vest"):
            print ("  [INFO] Looking for {}...".format(getObject))
            with open(FilePath, "r") as eqFile:
                equipmentList = []
                #get backpacks
                for line in eqFile:
                    if "{}[]".format(getObject) in line:
                        findEquipment = re.search(getObject, line)
                        line = line.partition('"')[-1].rpartition('"')[0]
                        if line == "":
                            print("  [WARNING] A unit don't use {} at all...".format(getObject))
                        else: 
                            equipmentList.append(line)
                # Do some unnecessary grammar.
                if (getObject[-1:] != "s") and (not len(equipmentList) == 1):
                    strGrammar_W_getObject = getObject
                    strGrammar_S_getObject = "s" 
                    getObject = ''.join((strGrammar_W_getObject,strGrammar_S_getObject))
                print("  [INFO] Found a total of {} {}...".format(len(equipmentList),getObject))
        else:
            Success = False

    except IOError:
        #print("The file could not be opened")
        Success = False

    if Success:
        #print("Files loaded")
        pass

    return equipmentList


# List load out files
backpackList = []
glassesList = []
headgearList = []
uniformkList = []
vestList = []

for loadoutFile in loadoutFiles:
    loadoutFileName = loadoutFile[21:]
    print ("  [INFO] Searching through {}...".format(loadoutFileName))

    backpack = getEquipment(loadoutFile,"backpack")
    backpackList.extend(backpack)
    
    glasses = getEquipment(loadoutFile,"goggles")
    glassesList.extend(glasses)
    
    headgear = getEquipment(loadoutFile,"headgear")
    headgearList.extend(headgear)
    
    uniform = getEquipment(loadoutFile,"uniform")
    uniformkList.extend(uniform)
    
    vest = getEquipment(loadoutFile,"vest")
    vestList.extend(vest)

print()
list1 = collections.Counter(backpackList)
list2 = collections.Counter(glassesList)
list3 = collections.Counter(headgearList)
list4 = collections.Counter(uniformkList)
list5 = collections.Counter(vestList)
print (list1)
print (list2)
print (list3)
print (list4)
print (list5)