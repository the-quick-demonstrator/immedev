function chocoInstall {
    param(
        [string]$packageName
    )

    $installedPackages = choco list -local-only | Select-String -Pattern $packageName

    if ($installedPackages) {
        Write-Host "$packageName is already installed."
    } else {
        Write-Host "$packageName is being installed..."
        choco install "$packageName" -f -y
        Write-Host "$packageName has been installed!"
    }
}