@echo off
color 1b
cls

:bootscreen
cls
set /p password= Password:
if %password% == SXI goto cloudpass
if not %password% == SXI goto bootscreentwo

:cloudpass
cls
set /p cloudpass= Cloud Password:
if %cloudpass% == 123 goto desktop
if not %cloudpass% == 123 goto bootscreentwo

:desktop
cls
color 0a
cls
echo Welcome Shanmukh Das
echo CloudOS
echo Date: %date% Time: %time% 
echo Created by Shanmukh Das  Mode: Admin Account: Shanmukh Das OS Build: 1550.5654 Version: 1.12.2  This is a 8-bit OS
echo Here are your options in your own OS!!:
echo 1)Writer
echo 2)Documents
echo 3)Calculator
echo 4)Antivirus
echo 5)Tic Tac Toe
echo 6)Quiz
echo 7)Defragment and Optimize drives
echo 8)Check for errors
echo 9)Boost System
echo 10)System Info
echo 11)Virtual Machine
echo 12)Check for updates

set /p menuselect= 
if %menuselect% == 1 goto writer
if %menuselect% == 2 goto browse
if %menuselect% == 3 goto calculator
if %menuselect% == 4 goto antivirus
if %menuselect% == 5 goto Tic Tac Toe
if %menuselect% == 6 goto Quiz
if %menuselect% == 7 goto defragment
if %menuselect% == 8 goto errors
if %menuselect% == 9 goto booster
if %menuselect% == 10 goto sysinfo
if %menuselect% == 11 goto vm
if %menuselect% == 12 goto updates

:vm
echo Welcome to Virtual Machine
echo Your Virtual Machine has been opened!
start CloudOS VM.bat
pause
goto desktop


:sysinfo
cls
echo Welcome to System Information!
echo Info
echo OS Build: 1550.5654 Update: 21  Version 1.12.2 Coded language: Batch OS Created with: MS Visual Studio Code 
echo OS Files created with: MS Visual Studio  OS File types: sln , exe , sys
echo Updaters were created using: MS Blend for Visual Studio
echo OS Care and antivirus files were created using: GitHub
echo OS Repository was created using: GitHub
echo Source code available at: https://github.com/ShanmukhXD/CloudOS
echo Do you want to return to the desktop? 
echo 1)Yes
echo 2)No

set /p return=
if %return% == 1 goto desktop
if %return% == 2 goto sysinfo

:booster
cls
echo Welcome to System Booster
echo Please wait while we boost your device...
echo Scanning for boosting-required files and apps...
echo 24 apps need boosting...Preparing for boosting...
echo Scanning for required boosting files[DONE]
echo Downloading boosting files[DONE]
echo Boosting apps....24/24
echo Deleting unnecessary files[DONE]
echo Deleting used boosting files[DONE]
echo congratulations! Your system is now boosted
echo Ok. Now you will be redirected to the desktop
pause
goto desktop

:errors
cls
echo Plase wait while we are checking for errors
echo No errors were found
echo Ok. Now you will be redirected to the desktop
pause
goto desktop

:defragment
cls
echo Please wait while we defragment your drives
echo Defragmentation Complete
echo Optimizing drives...
echo Opstimization complete 
echo Now you will be redirected to the desktop
pause
goto desktop

:updates
cls
echo Checking for updates...
echo Updates found!
echo Do you want to update?

echo 1)Yes
echo 2)No
set /p updating=

if %updating% == 1 goto update
if %updating% == 2 goto desktop

:update
cls
echo Updates remaining:
echo Feature update to CloudOS 22H1 (10544165424) 
echo CloudOS Security update (20893284454545)
echo Driver update for ClousOS touchpad precision (219012354)
echo Downloading update files...[DONE]
echo Updating system...[DONE]
echo Your system has been updated.
echo What's new in this update:
echo Added option for checking errors
echo Added option for system boosting
echo Fixed a glitch were defragmentation would crash if you try to update drivers at the same time.
echo Updated security levels
echo Update touchpad presicion 

echo Now you will be redirected to the desktop
pause
goto desktop

:quiz
cls
color 0a
title Quiz
:menu
cls
echo Hey! Welcome to the game!
echo 1) Start!
echo 2) How to play
echo 3) Exit
echo 4)Go to Desktop
set /p number=

if %number% ==  1  goto Start Game
if %number% ==  2 goto How to play
if %number% ==  3 goto Exit
if %number% == 4 goto desktop

:Start Game
cls
echo Type your name:
set /p name=
echo Hello %name%!
echo Do you want to start the quiz? (y/n)
set/p start=
if %start% == y goto level1
if%start% == n goto main menu
goto Start Game

:How to play
cls
echo Press the number of the answer then hit enter.
echo go back? (y/n)
set /p menugoto=
if %menugoto% == y goto menu
if %menugoto% == n goto exit
goto How to play

:Exit
echo Thanks for playing %name%
goto Exit

:level1
cls
echo Okay , Let's Start the game.
echo What is 10 + 10?
echo 1)  1
echo 2) 20
echo 3) 200

set /p answer1=
if %answer1% == 1 goto wrong1
if %answer1% == 2 goto correct1
if %answer1% == 3 goto wrong1
goto level1

:correct1
echo You are right! Next Level?(y/n)
set /p NL1=

if  %NL1% == y goto level2
if  %NL1% == n goto menu
goto correct1

:wrong1
echo Sadly , you went wrong.  Retry? (y/n)
set /p WA1=
if %WA1% == y goto level1
if %WA1% == n goto menu
goto wrong1

:level2

cls
echo Who is on the 100 dollar bill?
echo 1) Ben Franklin
echo 2) Tommy King
echo 3) Thomas Train
echo 4) Jeff Dunham
set /p command=
if %command% == 1 goto correct2
if %command% == 2 goto wrong2
if %command% == 3 goto wrong2
if %command% == 4 goto wrong2
goto  level2

:correct2
cls
echo Yes! You are right %name% ! Next level (y/n)?
set /p Command=
if %Command% == y goto level3
if %Command% == n goto level2
goto correct2

:wrong2
cls
echo You LOST! %name% RETRY GAME? (y/n)
set /p retry=
if %retry% == y goto level2
if %retry% == n goto menu
goto wrong2

:level3
cls
echo Who is the current Prime Minister of India?
echo 1) %name%
echo 2) Narendra Modi
echo 3) Pranab Mukharjee
echo 4) Rajendra Prasad
set /p command2=
if %command2% == 1 goto wrong3
if %command2% == 2 goto correct3
if %command2% == 3 goto wrong3
if %command2% == 4 goto wrong3
goto level3

:correct3
cls
echo Wright answer Next Level(y/n)
set /p CommanD=
if %CommanD% == y goto level4
if %CommanD% == n goto level3
goto correct3

:wrong3
cls
echo No it is wrong answer!
echo Do you want to retry? (y/n)
set /p ry=
if %ry% == y goto level3
if %ry% == n goto menu
goto wrong3

:level4
cls
echo This is the last level %name%
echo Who is known as the father of the nation in India?
echo 1) Mahatma Gandhi
echo 2) %name%
echo 3) Jawarharlal Nehru
echo 4) Bhagat Singh
set /p aa=
if %aa% == 1 goto correct4
if %aa% == 2 goto wrong4
if %aa% == 3 goto wrong4
if %aa% == 4 goto wrong4
goto level4

:correct4
cls
echo Congratulations %name% You have won the game friend
goto correct4

:wrong4
cls
echo YOU HAVE LOST THE GAME %name%
echo Ok. Now you will be redirected to the desktop.
pause
goto desktop

:writer
cls
echo Welcome to Writer, an application which let's you write text files...
echo What will be the name of your text?
set /p writeone= Name:
cls
echo Ok, your file has been created. Have fun!
pause
cls
set /p textone=
pause
echo Ok, now your done, you will be redirected to the desktop...
pause
goto desktop

:calculator
cls
set /p equ=
set /a equ=%equ%
cls
echo %equ%
pause
goto desktop

:browse
cls
echo 1)%writeone%
echo 2)%writetwo%
echo 3)%writethree%
echo 4)%writefour%
set /p browse=
if %browse% == 1 goto textone
if %browse% == 2 goto texttwo
if %browse% == 3 goto textthree
if %browse% == 3 goto textfour

:Tic Tac Toe
cls
color f0
echo Welcome to the game of Tic Tac Toe
@mode con cols=80 lines=25
title Tic Tac Toe
:BEGIN
  REM Skill level
  set sl=
  cls
  echo                          Tic Tac Toe                             (Q to quit)
  echo.
  echo.
  echo        Pick your skill level (press a number)
  echo.
  echo               (1) Easy
echo.
  echo               (2) Medium
echo.
  echo               (3) I Think I can lose a computer
echo.
  CHOICE /c:123q /n > nul
  if errorlevel 4 goto end
  if errorlevel 3 set sl=3
  if errorlevel 3 goto layout
  if errorlevel 2 set sl=2
  if errorlevel 2 goto layout
  set sl=1

:LAYOUT
  REM Player turn ("x" or "o")
  set pt=
  REM Game winner ("x" or "o")
  set gw=
  REM No moves
  set nm=
  REM Set to one blank space after equal sign (check with cursor end)
  set t1=
  set t2=
  set t3=
  set t4=
  set t5=
  set t6=
  set t7=
  set t8=
  set t9=

:UPDATE
  cls
  echo   (S to set skill level)          Tic Tac Toe                     (Q to quit)
  echo.
  echo                               You are the X player.
  echo                    Press the number where you want to put an X.
  echo.
  echo   Skill level %sl%                       7 8 9
  echo                                       4 5 6
  echo                                       1 2 3
  echo.
  echo                                       :   :
  echo                                     %t1% : %t2% : %t3%
  echo                                   ....:...:....
  echo                                     %t4% : %t5% : %t6%
  echo                                   ....:...:....
  echo                                     %t7% : %t8% : %t9%
  echo                                       :   :
  if "%gw%"=="x" goto winx2
  if "%gw%"=="o" goto wino2
  if "%nm%"=="0" goto nomoves

:PLAYER
  set pt=x
  CHOICE /c:789456123sq /n > nul
  if errorlevel 11 goto end
  if errorlevel 10 goto begin
  if errorlevel 9 goto 9
  if errorlevel 8 goto 8
  if errorlevel 7 goto 7
  if errorlevel 6 goto 6
  if errorlevel 5 goto 5
  if errorlevel 4 goto 4
  if errorlevel 3 goto 3
  if errorlevel 2 goto 2
  goto 1

:1

  if "%t1%"=="x" goto player
  if "%t1%"=="o" goto player
  set t1=x
  goto check
:2
  if "%t2%"=="x" goto player
  if "%t2%"=="o" goto player
  set t2=x
  goto check
:3
  if "%t3%"=="x" goto player
  if "%t3%"=="o" goto player
  set t3=x
  goto check
:4
  if "%t4%"=="x" goto player
  if "%t4%"=="o" goto player
  set t4=x
  goto check
:5
  if "%t5%"=="x" goto player
  if "%t5%"=="o" goto player
  set t5=x
  goto check
:6
  if "%t6%"=="x" goto player
  if "%t6%"=="o" goto player
  set t6=x
  goto check
:7
  if "%t7%"=="x" goto player
  if "%t7%"=="o" goto player
  set t7=x
  goto check
:8
  if "%t8%"=="x" goto player
  if "%t8%"=="o" goto player
  set t8=x
  goto check
:9
  if "%t9%"=="x" goto player
  if "%t9%"=="o" goto player
  set t9=x
  goto check

:COMPUTER
  set pt=o
  if "%sl%"=="1" goto skill1

  if "%t1%"=="o" if "%t3%"=="o" if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if "%t1%"=="o" if "%t9%"=="o" if not "%t5%"=="x" if not "%t5%"=="o" goto c5
  if "%t1%"=="o" if "%t7%"=="o" if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if "%t3%"=="o" if "%t7%"=="o" if not "%t5%"=="x" if not "%t5%"=="o" goto c5
  if "%t3%"=="o" if "%t9%"=="o" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t9%"=="o" if "%t7%"=="o" if not "%t8%"=="x" if not "%t8%"=="o" goto c8

  if "%t2%"=="o" if "%t8%"=="o" if not "%t5%"=="x" if not "%t5%"=="o" goto c5
  if "%t4%"=="o" if "%t6%"=="o" if not "%t5%"=="x" if not "%t5%"=="o" goto c5

  if "%t1%"=="o" if "%t2%"=="o" if not "%t3%"=="x" if not "%t3%"=="o" goto c3
  if "%t1%"=="o" if "%t5%"=="o" if not "%t9%"=="x" if not "%t9%"=="o" goto c9
  if "%t1%"=="o" if "%t4%"=="o" if not "%t7%"=="x" if not "%t7%"=="o" goto c7
  if "%t2%"=="o" if "%t5%"=="o" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
  if "%t3%"=="o" if "%t2%"=="o" if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if "%t3%"=="o" if "%t5%"=="o" if not "%t7%"=="x" if not "%t7%"=="o" goto c7
  if "%t3%"=="o" if "%t6%"=="o" if not "%t9%"=="x" if not "%t9%"=="o" goto c9
  if "%t4%"=="o" if "%t5%"=="o" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t6%"=="o" if "%t5%"=="o" if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if "%t7%"=="o" if "%t4%"=="o" if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if "%t7%"=="o" if "%t5%"=="o" if not "%t3%"=="x" if not "%t3%"=="o" goto c3
  if "%t7%"=="o" if "%t8%"=="o" if not "%t9%"=="x" if not "%t9%"=="o" goto c9
  if "%t8%"=="o" if "%t5%"=="o" if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if "%t9%"=="o" if "%t8%"=="o" if not "%t7%"=="x" if not "%t7%"=="o" goto c7
  if "%t9%"=="o" if "%t5%"=="o" if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if "%t9%"=="o" if "%t6%"=="o" if not "%t3%"=="x" if not "%t3%"=="o" goto c3

  if "%t1%"=="x" if "%t2%"=="x" if not "%t3%"=="x" if not "%t3%"=="o" goto c3
  if "%t1%"=="x" if "%t5%"=="x" if not "%t9%"=="x" if not "%t9%"=="o" goto c9
  if "%t1%"=="x" if "%t4%"=="x" if not "%t7%"=="x" if not "%t7%"=="o" goto c7
  if "%t2%"=="x" if "%t5%"=="x" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
  if "%t3%"=="x" if "%t2%"=="x" if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if "%t3%"=="x" if "%t5%"=="x" if not "%t7%"=="x" if not "%t7%"=="o" goto c7
  if "%t3%"=="x" if "%t6%"=="x" if not "%t9%"=="x" if not "%t9%"=="o" goto c9
  if "%t4%"=="x" if "%t5%"=="x" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t6%"=="x" if "%t5%"=="x" if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if "%t7%"=="x" if "%t4%"=="x" if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if "%t7%"=="x" if "%t5%"=="x" if not "%t3%"=="x" if not "%t3%"=="o" goto c3
  if "%t7%"=="x" if "%t8%"=="x" if not "%t9%"=="x" if not "%t9%"=="o" goto c9
  if "%t8%"=="x" if "%t5%"=="x" if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if "%t9%"=="x" if "%t8%"=="x" if not "%t7%"=="x" if not "%t7%"=="o" goto c7
  if "%t9%"=="x" if "%t5%"=="x" if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if "%t9%"=="x" if "%t6%"=="x" if not "%t3%"=="x" if not "%t3%"=="o" goto c3

  if "%t1%"=="x" if "%t3%"=="x" if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if "%t1%"=="x" if "%t9%"=="x" if not "%t5%"=="x" if not "%t5%"=="o" goto c5
  if "%t1%"=="x" if "%t7%"=="x" if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if "%t3%"=="x" if "%t7%"=="x" if not "%t5%"=="x" if not "%t5%"=="o" goto c5
  if "%t3%"=="x" if "%t9%"=="x" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t9%"=="x" if "%t7%"=="x" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
  if "%sl%"=="2" goto skill2

  if "%t2%"=="x" if "%t4%"=="x" if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if "%t2%"=="x" if "%t6%"=="x" if not "%t3%"=="x" if not "%t3%"=="o" goto c3
  if "%t8%"=="x" if "%t4%"=="x" if not "%t7%"=="x" if not "%t7%"=="o" goto c7
  if "%t8%"=="x" if "%t6%"=="x" if not "%t9%"=="x" if not "%t9%"=="o" goto c9

  if "%t1%"=="x" if "%t6%"=="x" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
  if "%t1%"=="x" if "%t8%"=="x" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t3%"=="x" if "%t8%"=="x" if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if "%t3%"=="x" if "%t4%"=="x" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
  if "%t9%"=="x" if "%t4%"=="x" if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if "%t9%"=="x" if "%t2%"=="x" if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if "%t7%"=="x" if "%t2%"=="x" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t7%"=="x" if "%t6%"=="x" if not "%t2%"=="x" if not "%t2%"=="o" goto c2

:SKILL2
  if "%t2%"=="x" if "%t8%"=="x" if not "%t5%"=="x" if not "%t5%"=="o" goto c5
  if "%t4%"=="x" if "%t6%"=="x" if not "%t5%"=="x" if not "%t5%"=="o" goto c5

  if "%t1%"=="x" if "%t9%"=="x" if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if "%t3%"=="x" if "%t7%"=="x" if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if "%t1%"=="x" if "%t9%"=="x" if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if "%t3%"=="x" if "%t7%"=="x" if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if "%t1%"=="x" if "%t9%"=="x" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t3%"=="x" if "%t7%"=="x" if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if "%t1%"=="x" if "%t9%"=="x" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
  if "%t3%"=="x" if "%t7%"=="x" if not "%t8%"=="x" if not "%t8%"=="o" goto c8
:SKILL1
  if not "%t5%"=="x" if not "%t5%"=="o" goto c5
  if not "%t1%"=="x" if not "%t1%"=="o" goto c1
  if not "%t3%"=="x" if not "%t3%"=="o" goto c3
  if not "%t7%"=="x" if not "%t7%"=="o" goto c7
  if not "%t9%"=="x" if not "%t9%"=="o" goto c9
  if not "%t2%"=="x" if not "%t2%"=="o" goto c2
  if not "%t4%"=="x" if not "%t4%"=="o" goto c4
  if not "%t6%"=="x" if not "%t6%"=="o" goto c6
  if not "%t8%"=="x" if not "%t8%"=="o" goto c8
  set nm=0
  goto update

:C1
  set t1=o
  goto check
:C2
  set t2=o
  goto check
:C3
  set t3=o
  goto check
:C4
  set t4=o
  goto check
:C5
  set t5=o
  goto check
:C6
  set t6=o
  goto check
:C7
  set t7=o
  goto check
:C8
  set t8=o
  goto check
:C9
  set t9=o
  goto check

:CHECK
  if "%t1%"=="x" if "%t2%"=="x" if "%t3%"=="x" goto winx
  if "%t4%"=="x" if "%t5%"=="x" if "%t6%"=="x" goto winx
  if "%t7%"=="x" if "%t8%"=="x" if "%t9%"=="x" goto winx
  if "%t1%"=="x" if "%t4%"=="x" if "%t7%"=="x" goto winx
  if "%t2%"=="x" if "%t5%"=="x" if "%t8%"=="x" goto winx
  if "%t3%"=="x" if "%t6%"=="x" if "%t9%"=="x" goto winx
  if "%t1%"=="x" if "%t5%"=="x" if "%t9%"=="x" goto winx
  if "%t3%"=="x" if "%t5%"=="x" if "%t7%"=="x" goto winx
  if "%t1%"=="o" if "%t2%"=="o" if "%t3%"=="o" goto wino
  if "%t4%"=="o" if "%t5%"=="o" if "%t6%"=="o" goto wino
  if "%t7%"=="o" if "%t8%"=="o" if "%t9%"=="o" goto wino
  if "%t1%"=="o" if "%t4%"=="o" if "%t7%"=="o" goto wino
  if "%t2%"=="o" if "%t5%"=="o" if "%t8%"=="o" goto wino
  if "%t3%"=="o" if "%t6%"=="o" if "%t9%"=="o" goto wino
  if "%t1%"=="o" if "%t5%"=="o" if "%t9%"=="o" goto wino
  if "%t3%"=="o" if "%t5%"=="o" if "%t7%"=="o" goto wino
  if "%pt%"=="x" goto computer
  if "%pt%"=="o" goto update

:WINX
  set gw=x
  goto update
:WINX2
  echo   You win!
  echo   Play again (Y,N)?
  CHOICE /c:ynsq /n > nul
  if errorlevel 4 goto end
  if errorlevel 3 goto begin
  if errorlevel 2 goto end
  goto layout

:WINO
  set gw=o
  goto update
:WINO2
  echo   Sorry, You lose.
  echo   Play again (Y,N)?
  CHOICE /c:ynsq /n > nul
  if errorlevel 4 goto end
  if errorlevel 3 goto begin
  if errorlevel 2 goto end
  goto layout

:NOMOVES
  echo   There are no more moves left!
  echo   Play again (Y,N)?
  CHOICE /c:ynsq /n > nul
  if errorlevel 4 goto end
  if errorlevel 3 goto begin
  if errorlevel 2 goto end
  goto layout

:END
  cls
  echo Tic Tac Toe
  echo.
  set gw=
  set nm=
  set sl=
  set pt=
  set t1=
  set t2=
  set t3=
  set t4=
  set t5=
  set t6=
  set t7=
  set t8=
  set t9=

echo Ok. Now you will be redirected to the desktop
pause
goto desktop

:antivirus
cls
echo Scanning for viruses in your computer[DONE]
echo Processing cloud scan...[DONE]
echo Seatching for security breaches...[DONE]
echo No threats or security breaches were found.
echo Now you will be redirected to the desktop
pause
goto desktop

:desk1
cls
color 0a
cls
echo Welcome Shanmukh Das
echo.
echo Date: %date% Time: %time%
echo Mode: Admin Account: Shanmukh Das OS Build: 1550.5654 Version: 1.2.2
echo Here are your options in your own OS!!
echo Your computer is at a risk. A threat has been found. Write 5 to remove the threat
echo 1)Writer
echo 2)Documents
echo 3)Calculator
echo 4)Antivirus
echo 5)Remove Virus
set /p menuselect=
if %menuselect% == 1 goto writer
if %menuselect% == 2 goto browse
if %menuselect% == 3 goto calculator
if %menuselect% == 4 goto antivirus
if %menuselect% == 5 goto sec1
echo Created by Shanmukh Das

:textone
cls
echo %writeone%
echo %textone%
pause
goto desktop

:texttwo
cls
echo %writetwo%
echo %texttwo%
pause
goto desktop

:textthree
cls
echo %writethree%
echo %textthree%
pause
goto desktop

:textfour
cls
echo %writefour%
echo %textfour%
pause
goto desktop

:bootscreentwo
cls
echo ~That was the wrong password~
echo 1)Admin Login!
echo 2)Guest login!
set /p logintype=
if %logintype% == 1 goto bootscreen
if %logintype% == 2 goto ltddesktop

:ltddesktop
cls
echo Hello there, you are logged in as a guest, you do not have permission to create or browse through text files...
echo.
echo You can use the standard tools such as: The calculator and the clock...An antivirus & defragmenter is always turned on for geust accounts...
echo.
echo Have fun!
echo Mode: Guest Accout: Shanmukh Das OS Build: 1550.5654 Version: 1.2.2
pause
cls
echo 1)Calculator
echo 2)Clock
set /p ltdmenu=
if %ltdmenu% == 1 goto ltdcalculator
if %ltdmenu% == 2 goto clock
echo Created by Shanmukh Das

:clock
cls
echo %date% %time%
pause
goto ltddesktop

:ltdcalculator
cls
set /p equ=
set /a equ=%equ%
cls
echo %equ%
pause
goto ltddesktop
goto ltddesktop
