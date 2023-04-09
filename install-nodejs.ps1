Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process -Force
. .\chocoInstall.ps1

chocoInstall "nodejs"
chocoInstall "vscode"
chocoInstall "subl"
