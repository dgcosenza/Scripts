# PC States Scripts

This repository contains PowerShell scripts to perform various actions related to the state of a PC, such as hibernating, rebooting, rebooting to BIOS, and shutting down.

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

## Usage

### Step 1: Clone the Repository

Clone this repository to your local machine using the following command:

```bash
git clone https://github.com/dgcosenza/Scripts.git
cd Scripts/Windows-Scripts/pc_states
