# --------------------------------------------------------------------------
# This script updates applications using Windows Package Manager (winget).
# --------------------------------------------------------------------------

# Display a title
Write-Host
Write-Host "----------------------------------------------"
Write-Host "WINGET UPDATER by FNX-USA"
Write-Host "----------------------------------------------"

# Update applications
Write-Host
Write-Host "----------------------------------------------"
Write-Host "UPDATING APPLICATIONS"
Write-Host "----------------------------------------------"
winget upgrade --all
Write-Host

# Pause to keep the window open
Pause
