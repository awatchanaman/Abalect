$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'abalect'
  softwareName   = 'abalect*'
  fileType       = 'exe'
  url            = 'https://www.abalog.fr/Fichiers%20divers/abalect.exe'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0)
  checksum       = '9D3487360D48AF87E4AB519B0FD1672EE6D48E6883D5EBD41A600AA2F9B4061A'
  checksumType   = 'sha256'
  }

Install-ChocolateyPackage @packageArgs

#Suppression du  Raccourci currentuserr sur le bureau
#Remove-Item -Path "$env:USERPROFILE\Desktop\Abalect.lnk" -Recurse -ErrorAction SilentlyContinue

#Mise en place du Raccourci alluser sur le bureau
#$filepath = Join-Path "${env:programfiles(x86)}\Abalect" 'Abalect.exe'
#Install-ChocolateyShortcut -ShortcutFilePath "$env:PUBLIC\Desktop\Abalect.lnk" -TargetPath "$filepath"

#if ((Get-PackageParameters).NoDesktopShortcut) {
#    Write-Host "(Get-PackageParameters).NoDesktopShortcut)"
#    Remove-Item -Path "$env:PUBLIC\Desktop\Abalect.lnk"
#    }
