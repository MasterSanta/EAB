:: @ECHO OFF

:SETUP
SETLOCAL ENABLEDELAYEDEXPANSION
CD /d %~dp0

:BYPAS_OPEN_FILE_SEC
for /R %%X in ("*.ps1") do (
    SET z=%%X
    ECHO !z!
    ECHO %%X
    MOVE /Y %%X  !z!_new
    TYPE !z!_new > %%X
    DEL /F /S /Q !z!_new
)

:ACTION
PowerShell.exe -ExecutionPolicy RemoteSigned -File Start-PS.ps1

:END
PAUSE
