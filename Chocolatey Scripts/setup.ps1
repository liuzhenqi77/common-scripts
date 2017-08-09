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

# You may need to input the following string by hand
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco feature enable -n=allowGlobalConfirmation
cinst packages.config