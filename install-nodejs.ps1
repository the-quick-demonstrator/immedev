Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process -Force
. .\choco-install.ps1

chocoInstall "nodejs"
chocoInstall "vscode"
chocoInstall "subl"
