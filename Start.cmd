:: @ECHO OFF
SETLOCAL
CD /d %~dp0
PowerShell.exe -ExecutionPolicy RemoteSigned -File "Start.ps1"
PAUSE