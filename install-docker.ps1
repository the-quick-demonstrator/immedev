Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process -Force
. .\choco-install.ps1
workflow Enable-HyperVAndInstallDocker {
    # Enable Hyper-V
    # Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
    # # Restart-Computer -Wait -Force

    # Install Windows Subsystem for Linux 2
    chocoInstall "wsl2"
    # Restart-Computer -Wait -Force

    # Ensure virtualization has been enabled
    # This could be a PowerShell script to check if Hyper-V is enabled

    # Oracle Virtual Box
    chocoInstall "virtualbox"
    # Restart-Computer -Wait -Force

    # Docker Command Line Interface
    chocoInstall "docker-cli"
    # Restart-Computer -Wait -Force

    # Docker Oracle Virtual Machine
    chocoInstall "docker-machine"
    # Restart-Computer -Wait -Force

    # Docker Desktop IDE
    chocoInstall "docker-desktop --pre"
    # Restart-Computer -Wait -Force
}

Enable-HyperVAndInstallDocker