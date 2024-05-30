# Display a title
Write-Host
Write-Host "----------------------------------------------"
Write-Host "LISTING NETWORK IP ADDRESSES by FNX-USA"
Write-Host "----------------------------------------------"

# Display WI-FI IP Address
Write-Host
Write-Host "----------------------------------------------"
Write-Host "LISTING WI-FI IP ADDRESS"
Write-Host "----------------------------------------------"
netsh interface ipv4 show config "Wi-Fi"
Write-Host "----------------------------------------------"

# Display Ethernet IP Address
Write-Host
Write-Host "----------------------------------------------"
Write-Host "LISTING ETHERNET IP ADDRESS"
Write-Host "----------------------------------------------"
netsh interface ipv4 show config "Ethernet"
Write-Host "----------------------------------------------"
Write-Host

# Pause to keep the window open
Pause
