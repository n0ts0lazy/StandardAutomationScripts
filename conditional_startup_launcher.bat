
@echo off
set website= example.com
set delay_seconds=10

:pingLoop
echo Pinging %website%...
ping -n 1 %website% | find "TTL=" > nul

if errorlevel 1 (
    echo If no connection is found then this loop will run indefinitely till it establishes connection with %website%. Retrying in %delay_seconds% seconds...
    timeout /nobreak /t %delay_seconds%
    goto pingLoop
) else (
    REM create a shortcut for this script in shell:startup folder 
	full/path/to/application/yourapplication.ext
	full/path/to/application/yourotherapplication.ext`
)

pause


