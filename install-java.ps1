Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process -Force
. .\choco-install.ps1

chocoInstall "jdk8"
chocoInstall "intellijidea-community"
chocoInstall "maven"
