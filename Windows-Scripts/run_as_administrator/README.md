# PowerShell Context Menu Scripts

This repository contains registry scripts to add and remove the "Run as administrator" option for PowerShell script files (.ps1) in the Windows context menu.

## Files

1. **!Add_PS1_Run_as_administrator.reg**
    - This registry script adds the "Run as administrator" option to the context menu for PowerShell script files (.ps1).
    - It allows you to run PowerShell scripts with elevated privileges directly from the context menu.

2. **!Remove_PS1_Run_as_administrator.reg**
    - This registry script removes the "Run as administrator" option from the context menu for PowerShell script files (.ps1).
    - It reverts the changes made by `!Add_PS1_Run_as_administrator.reg`.

## Usage

### Step 1: Clone the Repository

Clone this repository to your local machine using the following command:

```bash
git clone https://github.com/dgcosenza/Scripts.git
cd Scripts/Windows-Scripts/context_menu_ps1
