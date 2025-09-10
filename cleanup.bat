@echo off
set "TARGET_DIR=c:\Users\kasper\Documents\GitHub\extraction-cleanup\test-dir"
if not exist "%TARGET_DIR%" (
    echo Directory not found: %TARGET_DIR%
    exit /b 1
)
forfiles /P "%TARGET_DIR%" /D -30 /C "cmd /c del @path"
echo Files older than 30 days in %TARGET_DIR% have been deleted.