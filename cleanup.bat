@echo off
set "TARGET_DIR=D:\UFED"
if not exist "%TARGET_DIR%" (
    echo Directory not found: %TARGET_DIR%
    exit /b 1
)
forfiles /P "%TARGET_DIR%" /D -30 /C "cmd /c if @isdir==TRUE (rmdir /s /q @path) else (del @path)"
echo Files en directories ouder dan 30 dagen in %TARGET_DIR% zijn verwijderd.