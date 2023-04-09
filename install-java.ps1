Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process -Force
. .\chocoInstall.ps1

chocoInstall "jdk8"
chocoInstall "intellijidea-community"
chocoInstall "maven"
