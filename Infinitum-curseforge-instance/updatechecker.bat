REM Made by Send Dad Pics#0021
REM Infinitum Update Checker!
@echo off
setlocal enabledelayedexpansion
set count=0
set version
cls
echo Checking for updates...
cd %tmp%
rem del v.txt
curl https://raw.githubusercontent.com/wwe20watt/Infinitum/main/Infinitum-curseforge-instance/v.txt -L -o v.txt

for /f "tokens=*" %%x in (v.txt) do (
    set /a count+=1
    set var[!count!]=%%x
)
echo %var[2]%
rem if %var[2]% = v1.01 (echo "Infinitum is up to date (%var[2]%)") else (echo "Infinitum is not up to date or isnt installed. Current version: %var[2]%")
cls
echo "Note: Update checker is still under dev. For now it will only display when the latest release was, thanks!"
if %var[2]%==v1.01 (echo Infinitum Last updated %var[2]%) else (echo "Infinitum Last updated %var[2]%")
echo exiting...
@pause
