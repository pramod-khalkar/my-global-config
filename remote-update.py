import os
import subprocess

std_output = subprocess.Popen(["git", "status"], stdout=subprocess.PIPE)
output = str(std_output.stdout.read())

if output.find("changes not staged"):
    subprocess.call(["git", "add", ".txt"])
    print("--ONLY EDITED TEXT FILE ADDED--")
    subprocess.call(["git", "commit", "-m", "modified"])
    subprocess.call(["git", "push"])
    print("remote repository udpated")
else:
    print("Update to date")
