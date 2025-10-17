#!/usr/bin/env python3

import time
import shutil
import json
import os
import sys

fname = "/home/christoss/Music/notification"

def printState():
    print(json.dumps({
        "text": "\uf0f3" if os.path.isfile(fname) else "\uf1f6",
        "class": "notifications"
    }), flush=True)

def loop():
    prevState = -1
    
    while True:
        currentState = os.path.isfile(fname)
        if prevState != currentState:
            printState()
            prevState = currentState

        time.sleep(0.3)


if __name__ == "__main__":
    if len(sys.argv) == 1:
        loop()
    else:
        if os.path.isfile(fname):
            shutil.move(fname, f"{fname}.off")
        else:
            shutil.move(f"{fname}.off", fname)
