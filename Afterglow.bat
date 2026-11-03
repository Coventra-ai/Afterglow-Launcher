@echo off
cd /d "%~dp0"
if not exist node_modules call npm install
start "" /b node_modules\electron\dist\electron.exe .
