# PC States Scripts

This repository contains PowerShell and CMD scripts to perform various actions related to the state of a PC, such as hibernating, rebooting, rebooting to BIOS, shutting down, entering safe mode, and suspending.

## Files

1. **pc_hibernate_now.ps1**
    - This PowerShell script hibernates the computer immediately.
    - It uses the `shutdown.exe` command with the `/h` option to initiate the hibernation process.

2. **pc_reboot_now.ps1**
    - This PowerShell script reboots the computer immediately.
    - It uses the `shutdown.exe` command with the `/r /t 00` options to initiate an immediate restart.

3. **pc_reboot_to_bios.ps1**
    - This PowerShell script reboots the computer into the BIOS/UEFI setup menu.
    - It uses the `shutdown.exe` command with the `/r /fw /t 1` options to restart the computer and enter the firmware setup menu.

4. **pc_shutdown_now.ps1**
    - This PowerShell script shuts down the computer immediately.
    - It uses the `shutdown.exe` command with the `/s /t 00` options to initiate an immediate shutdown.

5. **pc_reboot_to_secure_mode.ps1**
    - This PowerShell script sets the system to boot into safe mode and then reboots the computer immediately.
    - It uses the `bcdedit` command to set the system's boot configuration to enter Safe Mode and then the `shutdown` command to restart the computer immediately.
    - This script is useful for troubleshooting or performing maintenance tasks in Safe Mode.

6. **pc_suspend_now.ps1**
    - This PowerShell script suspends (puts into sleep mode) the computer immediately.
    - It utilizes `rundll32.exe` to call the `SetSuspendState` function from `powrprof.dll` to put the computer into suspend mode immediately.
    - This script is handy for quickly putting the computer into a low-power state.

## Usage

### Step 1: Clone the Repository

Clone this repository to your local machine using the following command:

```bash
git clone https://github.com/dgcosenza/Scripts.git
cd Scripts/Windows-Scripts/pc_states
