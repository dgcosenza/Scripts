# --------------------------------------------------------------------------
# This script updates applications using Chocolatey package manager.
# --------------------------------------------------------------------------

# Display a title
Write-Host
Write-Host "----------------------------------------------"
Write-Host "CHOCOLATEY UPDATER by FNX-USA"
Write-Host "----------------------------------------------"

# Update applications
Write-Host
Write-Host "----------------------------------------------"
Write-Host "UPDATING APPLICATIONS"
Write-Host "----------------------------------------------"
choco upgrade all -y
Write-Host

# Pause to keep the window open
Pause
