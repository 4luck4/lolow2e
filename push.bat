@echo off
chcp 65001 >nul
echo Auto-pushing changes to GitHub...
powershell -ExecutionPolicy Bypass -File auto-push.ps1
pause
