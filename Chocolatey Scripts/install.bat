REM This is a script for installing software on new computer.
REM Zhenqi Liu
REM 2017/08/09
REM See https://echoliu.me

@echo off
echo Started
SET DIR=%~dp0%
@PowerShell -NoProfile -ExecutionPolicy Unrestricted -Command "& '%DIR%setup.ps1' %*"
SET PATH=%PATH%;%systemdrive%\chocolatey\bin
echo Exit From Powershell
echo Finished
pause