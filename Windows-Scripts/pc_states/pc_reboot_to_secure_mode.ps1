# --------------------------------------------------------------------------
# This command sequence modifies the boot configuration data (BCD) to set the
# current operating system to boot into minimal safe mode using 'bcdedit'.
# Then, it restarts the computer immediately ('shutdown /r /f /t 00').
# --------------------------------------------------------------------------

bcdedit /set {current} safeboot minimal && shutdown /r /f /t 00