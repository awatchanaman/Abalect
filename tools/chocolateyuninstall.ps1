$ErrorActionPreference = 'Stop'; 

$Dossier = Join-Path $env:Programfiles "\Abalect"

#Suppression du dossier Abalect dans proramfiles
Remove-Item -Path "$Dossier" -Recurse -ErrorAction SilentlyContinue

#Suppression du  Raccourci sur le bureau alluser
Remove-Item -Path "$env:PUBLIC\Desktop\Abalect.lnk" -Recurse -ErrorAction SilentlyContinue