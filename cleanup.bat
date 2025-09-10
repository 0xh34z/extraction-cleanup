@echo off
set /p TARGET_DIR=Enter the full path of the directory to clean: 
if not exist "%TARGET_DIR%" (
    echo Directory not found: %TARGET_DIR%
    exit /b 1
)
forfiles /P "%TARGET_DIR%" /D -30 /C "cmd /c del @path"
echo Files older than 30 days in %TARGET_DIR% have been deleted.