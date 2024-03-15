#!/bin/bash

#@echo off
#setlocal enabledelayedexpansion

# Switch to script directory
#cd /D "%~dp0"
pythonversion="python3 -V"

# Check if convert.py exists
if [ ! -f "convert.py" ]; 
then
    echo "convert.py is missing."
    pause
    #exit /B 1
    exit
fi
if ! command -v python3 >/dev/null 2>&1
        then
                echo "Python not found. Please install Python 3.9 or newer."
        else
                echo "Found Python at"
                python3 -c "import sys; print(':'.join(x for x in sys.path if x))"
                echo "Python version:"
                python3 -V
                python3 convert.py

                exit

fi
# Try every possible Python command until one works
