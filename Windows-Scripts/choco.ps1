# Título del script
Write-Host
Write-Host "----------------------------------------------"
Write-Host "CHOCOLATEY UPDATER by FNX-USA"
Write-Host "----------------------------------------------"

# Actualizar aplicaciones
Write-Host
Write-Host "----------------------------------------------"
Write-Host "UPDATING APPLICATIONS"
Write-Host "----------------------------------------------"
choco upgrade all -y
Write-Host

# Pausa para mantener la ventana abierta
Pause
