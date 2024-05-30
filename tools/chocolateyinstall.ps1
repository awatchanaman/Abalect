$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'abalect.zip'
$Dossier = Join-Path $env:Programfiles "\Abalect"
$exeLocation = Join-Path $Dossier "abalect.exe"

#Installation du package
Get-ChocolateyUnzip $fileLocation -Destination $Dossier

#On créer un raccourci OUAIP dans le menu demarrer
If (Test-Path $exeLocation) {
    #Mise en place du Raccourci alluser sur le bureau
    Install-ChocolateyShortcut -ShortcutFilePath "$env:PUBLIC\Desktop\Abalect.lnk" -TargetPath "$exeLocation"
    }
    
#Suppression du  ZIP dans tools
Remove-Item -Path "$fileLocation" -Recurse -ErrorAction SilentlyContinue