# --------------------------------------------------------------------------
# This script performs network troubleshooting tasks such as releasing and
# renewing the IP address, flushing DNS cache, and managing the Printer Spooler service.
# --------------------------------------------------------------------------

# Display a title
Write-Host
Write-Host "----------------------------------------------"
Write-Host "NETWORK FIXER by FNX-USA"
Write-Host "----------------------------------------------"

# Release IP Address
Write-Host
Write-Host "----------------------------------------------"
Write-Host "RELEASING IP ADDRESS"
Write-Host "----------------------------------------------"
ipconfig /release
Write-Host

# Renew IP Address
Write-Host
Write-Host "----------------------------------------------"
Write-Host "RENEWING IP ADDRESS"
Write-Host "----------------------------------------------"
ipconfig /renew
Write-Host

# Flush DNS
Write-Host
Write-Host "----------------------------------------------"
Write-Host "FLUSHING DNS"
Write-Host "----------------------------------------------"
ipconfig /flushdns
Write-Host

# Stop Printer Spooler
Write-Host
Write-Host "----------------------------------------------"
Write-Host "STOPPING PRINTER SPOOLER"
Write-Host "----------------------------------------------"
Stop-Service -Name Spooler -Force
Get-Service -Name Spooler
Write-Host

# Start Printer Spooler
Write-Host "----------------------------------------------"
Write-Host "STARTING PRINTER SPOOLER"
Write-Host "----------------------------------------------"
Start-Service -Name Spooler
Write-Host
Get-Service -Name Spooler
Write-Host

# Pause to keep the window open
Pause
