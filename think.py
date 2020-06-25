#!/usr/bin/env python
#Python version of think.sh

import sys
import os
import datetime

# Declared Variables
FirstLine = "*  Thoughts\n"
FirstThought = "I think therefore I am.\n\n"
OutputFile = os.path.expanduser("~/thoughts.org")

#Get a timestamp and format it
Now = datetime.datetime.now() #datetime object
TimeStamp = "** "+Now.strftime("%a %d %b %Y %H:%M:%S %p %z")+"\n   "
# TODO, %z returns empty string because time object is nieve, fix this.

if len(sys.argv) > 1:
#Get the user's input
    Thought = " ".join(sys.argv[1:])+'\n\n'
else:
#unless there is no thought to be had
    Thought = ""

if os.path.isfile(OutputFile) == False:
#Make sure the file is initalized
    TimeStamp = FirstLine+TimeStamp
    if Thought == "":
        Thought = FirstThought

if Thought != "":
#open the file and write to it
    ThoughtFile = open(OutputFile,'a')
    ThoughtFile.write(TimeStamp)
    ThoughtFile.write(Thought)
    ThoughtFile.close()

#Finaly display the file
os.system("tail "+OutputFile)
