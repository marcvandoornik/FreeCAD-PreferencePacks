@echo off

REM ============================================================================
REM SETTINGS FOR THIS FREECAD INSTANCE
REM ============================================================================

REM The name of the FreeCAD installation directory under %BIN_DIR%
set FREECAD_DIR=freecad_1.1RC3

REM Name for the program title bar
set EXE_NAME="FreeCAD Portable"

REM Directory containing the custom images
set BRANDING_DIR=%~dp0launcher


REM ============================================================================
REM SET UP NECESSARY ENVIRONMENT VARIABLES
REM ============================================================================

set QT_QPA_PLATFORM=windows:darkmode=2

set FREECAD_USER_HOME=%~dp0data
set FREECAD_USER_TEMP=%~dp0temp
set FREECAD_MACRO_DIR=%~dp0macros


REM ============================================================================
REM ADD SCRIPTS DIR TO PATH
REM ============================================================================

set PATH=%BIN_DIR%\%FREECAD_DIR%\bin\Scripts;%PATH%


REM ============================================================================
REM LAUNCH FREECAD
REM ============================================================================

start %BIN_DIR%\%FREECAD_DIR%\bin\freecad.exe^
 launcher\freecad_startup.py^
 %1 %2 %3 %4 %5 %6 %7 %8 %9^
 -l^
 --set-config ExeName=%EXE_NAME%^
 --set-config ExeVersion=%EXE_VERSION%^
 --set-config AppIcon=%BRANDING_DIR%\freecad.ico^
 --set-config SplashScreen=%BRANDING_DIR%\SplashScreen.png^
 --set-config ProgramIcons=%BRANDING_DIR%\freecad.ico^
 --set-config ProgramLogo=%BRANDING_DIR%\freecad.ico
