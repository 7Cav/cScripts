import os
import git

versionFilePath = "..\\cScripts\\CavFnc\\functions" # Make Sure to use double backslashes !
versionFile = ("{}\\script_component.hpp".format(versionFilePath))

def main():
    currentVersion = getVersion(versionFile)
    print (currentVersion)

def getVersion(FilePath):
    verFile = open(FilePath)
    for i, line in enumerate(verFile):
        if i == 1:
            line = line.partition('"')[-1].rpartition('"')[0]
            line = line.split(".")
            version = line
    return version

def setVersion():
    repo = git.Repo('..\\')
    diff = repo.git.diff('HEAD~1', 'HEAD')
    diff = diff.index
    print (diff)

if __name__ == "__main__":
    main()
    setVersion()
