:: --------------------------------------------------------------------------
:: This script is designed to remove common trojans and malicious files from USB drives.
:: --------------------------------------------------------------------------

@echo off 
title USB TROJAN REMOVER by FNX-USA
:: color 1E
@echo ----------------------------------------------
@echo FIXING USB
@echo ----------------------------------------------
@echo UNHIDING DIRECTORIES AND FILES
f:
attrib -R -H -S -A /D /S *.*
@echo ----------------------------------------------
@echo REMOVING LINKS
if exist *.lnk del *.lnk
@echo ----------------------------------------------
@echo REMOVING AUTORUN.INF
if exist autorun.inf del autorun.inf
@echo ----------------------------------------------
@echo REMOVING AUTORUN_.INF
if exist autorun.inf del autorun_.inf
@echo ----------------------------------------------
@echo REMOVING USBREADY.DLL
if exist usbready.dll del usbready.dll
@echo ----------------------------------------------
@echo REMOVING USBREADY.EXE
if exist usbready.exe del usbready.exe
@echo ----------------------------------------------
@echo[
@echo ----------------------------------------------
@echo DONE! by FNX-USA
@echo ----------------------------------------------
pause