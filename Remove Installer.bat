@echo off
rem Deletes the Afterglow setup file once Afterglow is installed.
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0tools\remove-installer.ps1"
echo.
pause
