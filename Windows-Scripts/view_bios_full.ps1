# --------------------------------------------------------------------------
# This script retrieves detailed information about the system BIOS.
# --------------------------------------------------------------------------

Get-WmiObject -Class Win32_BIOS | Format-List *