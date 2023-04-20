Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process -Force
# Get a list of all .ps1 files in the current directory
$installScripts = Get-ChildItem -Path . -Filter install-*.ps1 -File

# Iterate through the list and execute each script
foreach ($script in $installScripts) {
    Write-Host "Running $($script.FullName)..."
    & $script.FullName
}
