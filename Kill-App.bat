@echo off
REM --- Continuous Process Termination Script ---

REM **********************************************************************************
REM WARNING: Running this script continuously may cause system instability
REM or prevent a required application from running. Use it with caution.
REM **********************************************************************************

REM ----------------------------------------------------------------------------------
REM STEP 1: Replace 'AppName.exe' with the exact executable filename of the
REM application you want to terminate (for example, 'chrome.exe', 'explorer.exe', etc.).
REM ----------------------------------------------------------------------------------
set PROCESS_NAME=AppName.exe

:loop
    REM Check whether the process is running (using 'tasklist' and 'findstr').
    tasklist /FI "IMAGENAME eq %PROCESS_NAME%" | findstr /I %PROCESS_NAME%

    REM %ERRORLEVEL% will be 0 if the process was found.
    if %ERRORLEVEL% equ 0 (
        echo [%time%] Terminating process: %PROCESS_NAME%

        REM taskkill:
        REM /IM: Specifies the image/process name.
        REM /F: Forces the process to terminate.
        taskkill /IM %PROCESS_NAME% /F
    ) else (
        echo [%time%] %PROCESS_NAME% is not running.
    )

    REM STEP 2: Set the check interval.
    REM Wait 2 seconds before checking again to reduce CPU usage.
    REM Change '2' if you want a different interval.
    timeout /t 2 /nobreak

    REM Return to the beginning of the loop.
    goto loop
