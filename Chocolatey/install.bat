REM This is a script for installing software on new computer.
REM Zhenqi Liu
REM 2017/08/09
REM See https://echoliu.me

@echo off
echo ----------------------
echo Script Started
echo Entering Powershell...
echo ----------------------
SET DIR=%~dp0%
@PowerShell -NoProfile -ExecutionPolicy Unrestricted -Command "& '%DIR%setup.ps1' %*" "Set-Location '%DIR%'"
SET PATH=%PATH%;%systemdrive%\chocolatey\bin
echo ----------------------
echo Exiting From Powershell...
echo Finished
echo ----------------------
pause