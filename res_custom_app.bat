@echo off
setlocal enabledelayedexpansion

:main
cls
echo Force Any Application to run in certain resolution -- useful for certain games when chaning aspect ratio
===============
echo  Current values (width: %screenWidth% - height: %screenHeight%)
echo ==================================================
echo. Type C to begin setting the resolution values (I recommend 1920 X 822 for 21:9 setup on a 1080p monitor)
echo.
echo  Type R to run Application
echo.
echo ==================================================
echo.
set /p i=Input: 

if /i "%i%" == "C" (
    set "i="
    goto resolution_custom
)
if /i "%i%" == "R" (
    set "i="
    echo Launching Genshin Impact with resolution - screen-width %screenWidth% - screen-height %screenHeight%...
    start "" "Path\to\application.exe" -screen-width %screenWidth% -screen-height %screenHeight%
    exit
)

:resolution_custom
cls
echo ==================================================
echo  Current values (width: %screenWidth% - height: %screenHeight%)
echo ==================================================
echo.
set /p newScreenWidth=Set width : 
set /p newScreenHeight=Set height: 

rem Validate user input for screen width
if not defined newScreenWidth set newScreenWidth=%screenWidth%

rem Validate user input for screen height
if not defined newScreenHeight set newScreenHeight=%screenHeight%

echo Launching Application with resolution - screen-width %newScreenWidth% - screen-height %newScreenHeight%...
start "" "Path\to\application.exe" -screen-width %newScreenWidth% -screen-height %newScreenHeight%
exit
