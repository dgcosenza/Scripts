# --------------------------------------------------------------------------
# This script sets up firewall rules to block telemetry data.
# It prompts the user to confirm the User Account Control (UAC) prompt
# and then runs a PowerShell script with elevated privileges to add
# the necessary firewall rules. After the rules are added, it displays
# a message indicating that the rules should now be included in the
# firewall configuration. Finally, it pauses to keep the window open
# for the user to see the output.
# --------------------------------------------------------------------------

@echo off
cls
echo Block Telemetry Firewall Rules 
echo Confirm the UAC prompt to continue.
echo.
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -Scope -File ""%~dp0.\rules.ps1""' -Verb RunAs}"
echo Rules should be included in Firewall.
echo.
pause