<#
This is a script for installing software on new computer.
Zhenqi Liu
2017/08/09
See https://echoliu.me
#>

# Welcome
echo '----------------------------------------------------------'
echo 'This is a script for installing software on new computer.'
echo 'Zhenqi Liu'
echo '2017/08/09'
echo 'See https://echoliu.me'
echo '----------------------------------------------------------'

# install chocolatey
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
# set -y
choco feature enable -n=allowGlobalConfirmation
# get current path
$ScriptPath = $MyInvocation.MyCommand.Path
$ScriptDir = Split-Path -Parent $ScriptPath
$ConfigPath =$ScriptDir + '\packages.config'
# install packages
cinst $ConfigPath