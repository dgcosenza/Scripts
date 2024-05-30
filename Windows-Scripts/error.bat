@echo off
:: Note: Lines beginning with "REM" or :: are comments
:: Script by: https://github.com/thiojoe
:: Purpose: Creates a much more user friendly output for the Microsoft Error Lookup Tool (err.exe). It parses the original output and modifies the text.
:: Usage: Just call the batch file with command prompt along with the error code the same as you would with err.exe
:: Example:  error.bat 50
:: Recommended to rename this script to something shorter like 'error.bat'. Must be next to the lookup tool exe file.



:: ---------------------------------------------------
:: Begin local environment to prevent variable leakage
setlocal enabledelayedexpansion

:: ---------------------------------------------------------------------------------------
:: SET THE NAME OF YOUR ERROR LOOKUP TOOL EXE HERE. Don't remove the quotes.
set "ERROR_TOOL=C:\Users\dgcosenza\AppData\Local\Microsoft\WinGet\Packages\Microsoft.err_Microsoft.Winget.Source_8wekyb3d8bbwe\err.exe"
:: ---------------------------------------------------------------------------------------


:: Set the current working directory to that of the batch file so script can be called from anywhere and it will still see the err.exe file
cd /d %~dp0

:: Check if error tool is found or not.
echo.
if not exist "%ERROR_TOOL%" (
	echo.
    echo   ### Error ### : %ERROR_TOOL% not found. Either rename the .exe file or to match, or change the name in this script file.
	echo.
	echo     ^> You can acquire the Error Lookup Tool here: https://www.microsoft.com/en-us/download/details.aspx?id=100432
    exit /b
)


:: Call err.exe with the provided error code and redirect its output to a temporary file
%ERROR_TOOL% %1 > temp.txt

:: Display a top border
echo.

:: Initialize a flag to help skip unwanted lines
set "skipNext=0"

:: Set previousLine variable
set "previousLine=--start--"

:: Iterate over each line of the temp file
for /f "usebackq delims=" %%a in (temp.txt) do (
	REM |  Store the current line in the variable 'line'
    set "line=%%a"
	rem echo         line: !line!
    
	REM |  If the current line indicates no results found
    if "!line:~0,22!"=="# No results found for" (
        echo.
		REM |  Display the message in a user-friendly manner
        echo * !line:~2! ^(as base error lookup^)
		
    ) else if "!skipNext!"=="1" (
	REM |  Check if the current line should be skipped based on the previous condition
        set "skipNext=0"
		
    ) else if "!line:~0,6!"=="# for " (
	REM |  If the line starts with '# for' it indicates a new error category
		if not "!previousLine:~0,12!"=="# as an HRES" (
			echo.
			echo.
		)
        echo ======================================= !line:~2! =======================================
		
    ) else if "!line:~0,12!"=="# as an HRES" (
	REM |  If the line starts with '# as an HRES', it indicates an HRESULT error description
		echo.
		echo.	
        echo ================== !line:~2! ===================
		REM |  Mark the next line to be skipped since we're reading a new category of errors
		rem set "skipNext=1"

    ) else if "!line:~0,1!"=="#" (
	REM |  If the line starts with '#', it's a comment or description for the error
        REM |  Display the comment lines with the prefix and indentation
        echo       --^>  !line:~2!
		
    ) else if "!line!" NEQ "" (
	REM |  If it's none of the above, it's likely the name of the error itself
        REM |  Display the remaining lines
        echo !line!
    )
	set "previousLine=!line!"
) 3< temp.txt

echo.
echo -------------------------------------------------------------------------
echo.

:: Clean up the temporary file
del temp.txt

endlocal