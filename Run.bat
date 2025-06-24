@echo off
REM Navigate to the application directory
cd /d "D:\Release\net6.0"

REM Log the start time
echo [%date% %time%] Starting ConsoleApp2 with CONFIG.txt >> log.txt

REM Run the application with CONFIG.txt
ConsoleApp2.exe CONFIG.txt >> log.txt 2>&1

REM Check for errors and log the result
if %ERRORLEVEL% neq 0 (
    echo [%date% %time%] Error occurred with exit code %ERRORLEVEL% >> log.txt
) else (
    echo [%date% %time%] Application executed successfully >> log.txt
)

REM Log the end time
echo [%date% %time%] Finished execution >> log.txt
