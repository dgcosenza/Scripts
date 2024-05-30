# Título del script
Write-Host
Write-Host "----------------------------------------------"
Write-Host "WINGET UPDATER by FNX-USA"
Write-Host "----------------------------------------------"

# Actualizar aplicaciones
Write-Host
Write-Host "----------------------------------------------"
Write-Host "UPDATING APPLICATIONS"
Write-Host "----------------------------------------------"
winget upgrade --all
Write-Host

# Pausa para mantener la ventana abierta
Pause
