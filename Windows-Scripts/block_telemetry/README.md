# Telemetry Blocking Firewall Rules

This repository contains scripts to block telemetry-related network requests on Windows using firewall rules and to disable telemetry services and tasks.

## Files

1. **add_rules.cmd**
    - This is a batch script that executes the PowerShell script with elevated privileges.
    - It clears the screen, prompts for UAC (User Account Control) confirmation, and runs the `rules.ps1` script.

2. **rules.ps1**
    - This PowerShell script adds several firewall rules to block outbound traffic to specified telemetry-related IP addresses and domains.

3. **disable_telemetry.ps1**
    - This PowerShell script disables Windows telemetry by stopping and disabling related services, disabling scheduled tasks related to telemetry, configuring the registry to prevent data collection, and setting user-specific configurations to block usage data collection.

## Usage

### Step 1: Clone the Repository

Clone this repository to your local machine using the following command:

```bash
git clone https://github.com/dgcosenza/Scripts.git
cd Scripts/Windows-Scripts/block_telemetry
