@echo off
rem Detecting and installing Docker, Git, Node.js, and Python

echo Checking for Docker...
if not exist "C:\Program Files\Docker\Docker\Docker Desktop.exe" (
    echo Docker not found. Installing...
    rem Insert Docker installation command here
) else (
    echo Docker is already installed.
)

echo Checking for Git...
if not exist "C:\Program Files\Git\bin\git.exe" (
    echo Git not found. Installing...
    rem Insert Git installation command here
) else (
    echo Git is already installed.
)

echo Checking for Node.js...
if not exist "C:\Program Files\nodejs\node.exe" (
    echo Node.js not found. Installing...
    rem Insert Node.js installation command here
) else (
    echo Node.js is already installed.
)

echo Checking for Python...
if not exist "C:\Python39\python.exe" (
    echo Python not found. Installing...
    rem Insert Python installation command here
) else (
    echo Python is already installed.
)

echo Clearing storage space if needed...
call :ClearStorage
exit /b

:ClearStorage
rem Insert storage clearing commands here
exit /b
