:: --------------------------------------------------------------------------
:: This batch script presents a menu for launching various tools, including updaters, cleaners, and fixers.
:: Users can select options by entering corresponding numbers.
:: --------------------------------------------------------------------------

@echo off
mode con: cols=140  lines=35
:z
cls
@echo:
call :yellowcolor Menu App v1.0 By FNX-USA - Copyright 2024
@echo:
@echo Enter the number of the tool you want to launch.
@echo:
@echo Press 1 to run Apps and System Updater tools.
@echo Press 2 to run OS Cleaner tools.
@echo Press 3 to run OS Fixer tools.
@echo Press 4 to exit.
@echo:
set /p ans=Enter the number: 

if %ans%==1 (
goto a
)
if %ans%==2 (
goto b
)
if %ans%==3 (
goto c
)
if %ans%==4 (
goto d
)
else
goto z

:a
:y
cls
@echo:
call :yellowcolor Apps and System Updater v1.0 By FNX-USA - Copyright 2024
@echo:
@echo Enter the number of the Updater you want to launch.
@echo:
@echo Press 1 to launch Chocolatey Apps Updater.
@echo Press 2 to launch Winget Apps Updater.
@echo Press 3 to launch Windows Updates.
@echo Press 4 to launch Windows Store Updates.
@echo Press 5 to Exit to Menu App.
@echo Press 6 to Exit.
@echo:
set /p ans2=Enter number: 

if %ans2%==1 (
goto e
)
if %ans2%==2 (
goto f
)
if %ans2%==3 (
goto g
)
if %ans2%==4 (
goto h
)
if %ans2%==5 (
goto i
)
if %ans2%==6 (
goto j
)
else
goto y

:e
cls
@echo:
call :yellowcolor Updating Chocolatey Apps
@echo:
@echo Please Wait...
@echo:
choco upgrade all -y
pause
cls
goto y

:f
cls
@echo:
call :yellowcolor Updating Winget Apps
@echo:
@echo Please Wait...
@echo:
winget upgrade --all
pause
cls
goto y

:g
cls
@echo:
call :yellowcolor Updating Windows
@echo:
@echo Please Wait...
@echo:
C:\Windows\System32\control.exe /name Microsoft.WindowsUpdate
cls
goto y

:h
cls
@echo:
call :yellowcolor Updating Windows Store
@echo:
@echo "Please Wait..."
@echo:
C:\Windows\System32\cmd.exe /c start "" "ms-windows-store:"
cls
goto y

:i
goto z

:j
exit

:b
:x
cls
@echo:
call :yellowcolor OS Cleaner v1.0 By FNX-USA - Copyright 2024
@echo:
@echo Enter the number of the Cleaner you want to launch.
@echo:
@echo Press 1 to launch Windows Disk CleanUp.
@echo Press 2 to launch CCleaner.
@echo Press 3 to launch CleanMyPC.
@echo Press 4 to launch Defraggler.
@echo Press 5 to Exit to Menu App.
@echo Press 6 to Exit.
@echo:
set /p ans2=Enter number: 

if %ans2%==1 (
goto k
)
if %ans2%==2 (
goto l
)
if %ans2%==3 (
goto ll
)
if %ans2%==4 (
goto m
)
if %ans2%==5 (
goto n
)
if %ans2%==6 (
goto o
)
else
goto x

:k
cls
@echo:
call :yellowcolor Launching Windows Disk CleanUp
@echo:
@echo Please Wait...
@echo:
cleanmgr
cls
goto x

:l
cls
@echo:
call :yellowcolor Launching CCleaner
@echo:
@echo "Please Wait..."
@echo:
"C:\Program Files\CCleaner\Ccleaner64.exe"
cls
goto x

:ll
cls
@echo:
call :yellowcolor Launching CleanMyPC
@echo:
@echo "Please Wait..."
@echo:
"C:\Program Files\CleanMyPC\CleanMyPC.exe"
cls
goto x

:m
cls
@echo:
call :yellowcolor Launching Defraggler
@echo:
@echo "Please Wait..."
@echo:
"C:\Program Files\Defraggler\defraggler64.exe"
cls
goto x

:n
goto z

:o
exit

:c
:w
cls
@echo:
call :yellowcolor OS Fixer v1.0 By FNX-USA - Copyright 2024
@echo:
@echo Enter the number of the OS Fixer you want to launch.
@echo:
@echo Press 1 to launch Network/IP Fixer tool.
@echo Press 2 to launch Printer Spooler Fixer tool.
@echo Press 3 to Exit to Menu App.
@echo Press 4 to Exit.
@echo:
set /p ans2=Enter number: 

if %ans2%==1 (
goto p
)
if %ans2%==2 (
goto q
)
if %ans2%==3 (
goto z
)
if %ans2%==4 (
goto o
)
else
goto w

:p
cls
@echo:
call :yellowcolor Restarting Network IP
@echo:
@echo Please Wait...
@echo:
ipconfig/release
ipconfig/renew
pause
cls
goto w

:q
cls
@echo:
call :yellowcolor Restarting Printer Spooler
@echo:
@echo Please Wait...
@echo:
net stop spooler
net start spooler
pause
cls
goto w

:yellowcolor
powershell -Command Write-Host "%*" -foreground "yellow"