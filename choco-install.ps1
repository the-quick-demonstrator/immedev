function chocoInstall {
    param(
        [string]$packageName
    )
    
    Write-Host "$packageName is being installed..."
    choco install $packageName -f -y
    Write-Host "$packageName has been installed!"
}