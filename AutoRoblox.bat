
@echo off
:: VERSION
Set curVER=0.1.5


Set "cmdq=curl "https://Shiawase.cat-girls.club/u/KzLdPaAS" -sL"
@for /f %%Q in ('%cmdq%') do ( Set ins=%%Q )
:: START
Set "cmdp=curl "https://Shiawase.cat-girls.club/u/mn6wQ0dd" -sL"
@for /f %%R in ('%cmdp%') do ( Set VER=%%R )

echo Checking for Updates...
timeout /T 3 /NOBREAK > nul
if %curVER%==%VER% (cls & color 2 & echo "Up to Date! (%VER%)" & timeout /T 2 /NOBREAK > nul ) else ( cls & color 4 & echo "Not Up to Date "&echo. "Your Version: %curVER%" &echo. "Newest Version: %VER%" &echo.               &echo.                  Please run install.exe {Self-Destructing after download} & curl %INS% --output install.exe timeout /T 3 /NOBREAK > nul & DEL "%~f0" & exit)
cls
timeout /T 3 /NOBREAK > nul
TITLE DISCLAIMER
color 6
echo Note: Only 1 account can be whitelisted from shutting down, this is due to missing logical statments in BatchScript.
echo                                   (No, nesting conditions won't work) &echo.  
pause
cls
TITLE LOADING
timeout /T 3 /NOBREAK > nul
color 7
type load
timeout /T 5 /NOBREAK > nul
cls
TITLE Auto Roblox By Shiawase#0001
timeout /T 3 /NOBREAK > nul
set /p PASS=Enter the Password (Found in RAMsettings.ini): 
set /p donotclose=Enter the PID of the account you DO NOT want to close (leave blank if none): 
set /p Count=Time to relaunch other accounts [Seconds] (Reccomended 1800-3600): 
set /p cooldown=Time to wait before launching another account [Seconds] (Reccomended 20-35+) {Prevents Breaking}: &echo.  
pause
cls
timeout /T 3 /NOBREAK > nul
color 3

type conf &echo. &echo. &echo.
::ADDACC1
timeout /T 3 /NOBREAK > nul
echo NOTE: Make sure the accounts you input is NOT the account you don't want to close! &echo. &echo. Maximum you can run is 5!!!! &echo.  &echo. [LEAVE BLANK IF YOU DON'T WANT ANYMORE ACCOUNTS]
set /p user1=First account username: 
set /p game1=GameID for 1st account to Auto-Join: &echo.


:: ADDACC2

set /p user2=Second account username: 
set /p game2=GameID for 2nd account to Auto-Join: &echo.

::ADDACC3

set /p user3=Third account username: 
set /p game3=GameID for 3rd account to Auto-Join: &echo.

:ADDACC4

set /p user4=Fourth account username: 
set /p game4=GameID for 4th account to Auto-Join: &echo.

::ADDACC5

set /p user5=Fifth account username: 
set /p game5=GameID for 5th account to Auto-Join: &echo. &echo. 
pause



::THE ACTUAL PROGRAM LMAO


color 7
echo Started Running at %DATE% %TIME%
timeout /T 3 /NOBREAK > nul
:start
::TEMPREMOVE
WMIC Process Where "Name='RobloxPlayerBeta.exe' And Not ProcessId='%donotclose%'" Call Terminate

curl "http://localhost:8521/LaunchAccount?Account=%user1%&PlaceId=%game1%&Password=%PASS%" &echo. 

timeout /T %cooldown% /NOBREAK > nul

curl "http://localhost:8521/LaunchAccount?Account=%user2%&PlaceId=%game2%&Password=%PASS%" &echo. 

timeout /T %cooldown% /NOBREAK > nul

curl "http://localhost:8521/LaunchAccount?Account=%user3%&PlaceId=%game3%&Password=%PASS%" &echo. 

timeout /T %cooldown% /NOBREAK > nul

curl "http://localhost:8521/LaunchAccount?Account=%user4%&PlaceId=%game4%&Password=%PASS%" &echo. 

timeout /T %cooldown% /NOBREAK > nul

curl "http://localhost:8521/LaunchAccount?Account=%user5%&PlaceId=%game5%&Password=%PASS%" &echo. &echo. 
echo Closed Roblox! &echo. &echo.
timeout /T %Count% /NOBREAK
goto start
