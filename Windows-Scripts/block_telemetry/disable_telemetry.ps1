# --------------------------------------------------------------------------
# This script disables Windows telemetry by stopping and disabling related services,
# disabling scheduled tasks related to telemetry, configuring the registry to prevent data collection,
# and setting user-specific configurations to block usage data collection.
# --------------------------------------------------------------------------

# Stop and disable telemetry-related services
Stop-Service -Name "DiagTrack" -Force
Stop-Service -Name "dmwappushservice" -Force
Set-Service -Name "DiagTrack" -StartupType Disabled
Set-Service -Name "dmwappushservice" -StartupType Disabled

# Disable scheduled tasks related to telemetry
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /Disable

# Configure the registry to disable telemetry
# This corresponds to setting "Computer Configuration > Administrative Templates > Windows Components > Data Collection and Preview Builds > Allow Telemetry" to Disabled
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -Type DWord -Value 0

# Modify user settings to prevent usage data collection
New-ItemProperty -Path "HKCU:\Software\Microsoft\Siuf\Rules" -Name "NumberOfSIUFInPeriod" -Value 0 -PropertyType DWord -Force
New-ItemProperty -Path "HKCU:\Software\Microsoft\Siuf\Rules" -Name "PeriodInNanoSeconds" -Value 0 -PropertyType DWord -Force

# Update Group Policy settings to ensure changes are applied
Invoke-Expression "gpupdate /force"

# Confirm changes
Write-Output "Telemetry successfully disabled."
