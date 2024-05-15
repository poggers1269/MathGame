@echo off
title Math Game
color 0a
echo.
echo.
echo.                                             Welcome to Math Game                    (Q to quit)
echo                                                                By Poggers1269
echo.
echo.
echo                                              What is your name?
echo                                              ------------------
Set /p N= 
echo.
echo.
echo.
echo                                              Hi %N%, lets get started.
echo                                              Press 1 to continue
choice /c 1q

if errorlevel 2 exit
if errorlevel 1 goto start1

:start1
cls
echo                                              Welcome to the Math Game, %N%            (Q to quit)
echo.
echo.
echo                                              Choose game type, %N%:
echo                                              -----------------------
echo                                              1) Addition  
echo                                              2) Subtraction
echo                                              3) Multiplication
echo                                              4) Division
choice /c 1234q

if errorlevel 5 exit
if errorlevel 4 goto DivisionHS
if errorlevel 3 goto MultiplicationHS
if errorlevel 2 goto SubtractionHS
if errorlevel 1 goto AdditionHS

:AdditionHS
cls
title Addition Home Screen
echo.
echo.
echo.
echo.
echo.
echo                                               Addition Home Screen                           (Q to quit)
echo                                              ----------------------
echo                                              1)Easy 
echo                                              2)Medium
echo                                              3)Hard AF
echo.
echo.
echo.
echo Please imput your number:
choice /c 123q >nul

if errorlevel 4 exit 
if errorlevel 3 goto HA
if errorlevel 2 goto MA
if errorlevel 1 goto EA

:SubtractionHS
cls
title Subtraction Home Screen
echo.
echo.
echo.
echo.
echo.
echo                                              Subtraction Home Screen (This Has Negatives)                          (Q to quit)
echo                                              ---------------------------------------------
echo                                              1)Easy 
echo                                              2)Medium
echo                                              3)Hard AF
echo.
echo.
echo.
echo Please imput your number:
choice /c 123q >nul

if errorlevel 4 exit 
if errorlevel 3 goto HS
if errorlevel 2 goto MS
if errorlevel 1 goto ES

:MultiplicationHS
cls
title Multiplication Home Screen
echo.
echo.
echo.
echo.
echo.
echo                                              Multiplication Home Screen                           (Q to quit)
echo                                              --------------------------
echo                                              1)Easy 
echo                                              2)Medium
echo                                              3)Hard AF
echo.
echo.
echo.
echo Please imput your number:
choice /c 123q >nul

if errorlevel 4 exit 
if errorlevel 3 goto HM
if errorlevel 2 goto MM
if errorlevel 1 goto EM

:DivisionHS
cls
title Division Home Screen
echo.
echo.
echo.
echo.
echo.
echo                                              Division Home Screen                           (Q to quit)
echo                                              --------------------
echo                                              1)Easy 
echo                                              2)Medium
echo                                              3)Hard AF
echo.
echo.
echo.
echo Please imput your number:
choice /c 123q >nul

if errorlevel 4 exit 
if errorlevel 3 goto HD
if errorlevel 2 goto MD
if errorlevel 1 goto ED


:EA
@echo off
title Easy Addition
cls

set /a "character1=%random% %% 9 + 1"
set /a "character2=%random% %% 9 + 1"

set /p "PlayerAns=What is %character1% + %character2%? "

set /a "answer=character1 + character2"

if "%PlayerAns%"=="%answer%" (
    goto correctEA
) else (
    goto wrongEA
)

:correctEA
echo Good Job %N%!
echo You are right
echo Press R to try again;Press Q to quit;Press M to go to the Math Home Screen
choice /c rqm

if errorlevel 3 goto start1
if errorlevel 2 exit
if errorlevel 1 goto EA

:wrongEA 
echo Sorry %N%, but you got it wrong.
echo Press R to try again;Press Q to quit
choice /c rq
if errorlevel 2 exit
if errorlevel 1 goto EA

:MA
@echo off
title Medium Addition
cls

set /a "character1=%random% %% 99 + 10"
set /a "character2=%random% %% 99 + 10"

set /p "PlayerAns=What is %character1% + %character2%? "

set /a "answer=character1 + character2"

if "%PlayerAns%"=="%answer%" (
    goto correctMA
) else (
    goto wrongMA
)

:correctMA
echo Good Job %N%!
echo You are right
echo Press R to try again;Press Q to quit;Press M to go to the Math Home Screen
choice /c rqm

if errorlevel 3 goto start1
if errorlevel 2 exit
if errorlevel 1 goto MA

:wrongMA 
echo Sorry %N%, but you got it wrong.
echo Press R to try again;Press Q to quit
choice /c rq
if errorlevel 2 exit
if errorlevel 1 goto MA

:HA
@echo off
title Hard Addition
cls

set /a "character1=%random% %% 999 + 100"
set /a "character2=%random% %% 999 + 100"

set /p "PlayerAns=What is %character1% + %character2%? "

set /a "answer=character1 + character2"

if "%PlayerAns%"=="%answer%" (
    goto correctHA
) else (
    goto wrongHA
)

:correctHA
echo Good Job %N%!
echo You are right
echo Press R to try again;Press Q to quit;Press M to go to the Math Home Screen
choice /c rqm

if errorlevel 3 goto start1
if errorlevel 2 exit
if errorlevel 1 goto HA

:wrongHA 
echo Sorry %N%, but you got it wrong.
echo Press R to try again;Press Q to quit
choice /c rq
if errorlevel 2 exit
if errorlevel 1 goto HA

:ES
@echo off
title Easy Subtraction
cls

set /a "character1=%random% %% 9 + 1"
set /a "character2=%random% %% 9 + 1"
if %character1% gtr 9 goto ES
if %character2% gtr 9 goto ES
if %character1% lss 1 goto ES
if %character2% lss 1 goto ES

set /p "PlayerAns=What is %character1% - %character2%? "

set /a "answer=%character1% - %character2%"

if "%PlayerAns%"=="%answer%" (
    goto correctES
) else (
    goto wrongES
)

:correctES
echo Good Job %N%!
echo You are right
echo Press R to try again;Press Q to quit;Press M to go to the Math Home Screen
choice /c rqm

if errorlevel 3 goto start1
if errorlevel 2 exit
if errorlevel 1 goto ES

:wrongES
echo Sorry %N%, but you got it wrong.
echo The answer is %answer%
echo Press R to try again;Press Q to quit
choice /c rq
if errorlevel 2 exit
if errorlevel 1 goto ES

:MS
@echo off
title Medium Subtraction
cls

set /a "character1=%random% %% 99 + 10"
set /a "character2=%random% %% 99 + 10"
if %character1% gtr 99 goto MS
if %character2% gtr 99 goto MS
if %character1% lss 10 goto MS
if %character2% lss 10 goto MS

set /p "PlayerAns=What is %character1% - %character2%? "

set /a "answer=%character1% - %character2%"

if "%PlayerAns%"=="%answer%" (
    goto correctES
) else (
    goto wrongES
)

:correctMS
echo Good Job %N%!
echo You are right
echo Press R to try again;Press Q to quit;Press M to go to the Math Home Screen
choice /c rqm

if errorlevel 3 goto start1
if errorlevel 2 exit
if errorlevel 1 goto MS

:wrongMS
echo Sorry %N%, but you got it wrong.
echo The answer is %answer%
echo Press R to try again;Press Q to quit
choice /c rq
if errorlevel 2 exit
if errorlevel 1 goto MS

:HS
@echo off
title Hard Subtraction
cls

set /a "character1=%random% %% 999 + 100"
set /a "character2=%random% %% 999 + 100"
if %character1% gtr 999 goto HS
if %character2% gtr 999 goto HS
if %character1% lss 100 goto HS
if %character2% lss 100 goto HS

set /p "PlayerAns=What is %character1% - %character2%? "

set /a "answer=%character1% - %character2%"

if "%PlayerAns%"=="%answer%" (
    goto correctHS
) else (
    goto wrongHS
)

:correctHS
echo Good Job %N%!
echo You are right
echo Press R to try again;Press Q to quit;Press M to go to the Math Home Screen
choice /c rqm

if errorlevel 3 goto start1
if errorlevel 2 exit
if errorlevel 1 goto HS

:wrongHS
echo Sorry %N%, but you got it wrong.
echo The answer is %answer%
echo Press R to try again;Press Q to quit
choice /c rq
if errorlevel 2 exit
if errorlevel 1 goto HS

:EM
@echo off
title Easy Multiplication
cls

set /a "character1=%random% %% 9 + 1"
set /a "character2=%random% %% 9 + 1"
if %character1% gtr 9 goto HS
if %character2% gtr 9 goto HS
if %character1% lss 1 goto HS
if %character2% lss 1 goto HS

set /p "PlayerAns=What is %character1% X %character2%? "

set /a "answer=%character1% * %character2%"

if "%PlayerAns%"=="%answer%" (
    goto correctEM
) else (
    goto wrongEM
)

:correctEM
echo Good Job %N%!
echo You are right
echo Press R to try again;Press Q to quit;Press M to go to the Math Home Screen
choice /c rqm

if errorlevel 3 goto start1
if errorlevel 2 exit
if errorlevel 1 goto EM

:wrongEM
echo Sorry %N%, but you got it wrong.
echo The answer is %answer%
echo Press R to try again;Press Q to quit
choice /c rq
if errorlevel 2 exit
if errorlevel 1 goto EM

:MM	
@echo off
title Medium Multiplication
cls

set /a "character1=%random% %% 99 + 10"
set /a "character2=%random% %% 99 + 10"
if %character1% gtr 99 goto HS
if %character2% gtr 99 goto HS
if %character1% lss 10 goto HS
if %character2% lss 10 goto HS

set /p "PlayerAns=What is %character1% X %character2%? "

set /a "answer=%character1% * %character2%"

if "%PlayerAns%"=="%answer%" (
    goto correctMM
) else (
    goto wrongMM
)

:correctMM
echo Good Job %N%!
echo You are right
echo Press R to try again;Press Q to quit;Press M to go to the Math Home Screen
choice /c rqm

if errorlevel 3 goto start1
if errorlevel 2 exit
if errorlevel 1 goto MM

:wrongMM
echo Sorry %N%, but you got it wrong.
echo The answer is %answer%
echo Press R to try again;Press Q to quit
choice /c rq
if errorlevel 2 exit
if errorlevel 1 goto MM

:HM
@echo off
title Hard Multiplication
cls

set /a "character1=%random% %% 999 + 100"
set /a "character2=%random% %% 999 + 100"
if %character1% gtr 999 goto HS
if %character2% gtr 999 goto HS
if %character1% lss 100 goto HS
if %character2% lss 100 goto HS

set /p "PlayerAns=What is %character1% X %character2%? "

set /a "answer=%character1% * %character2%"

if "%PlayerAns%"=="%answer%" (
    goto correctHM
) else (
    goto wrongHM
)

:correctHM
echo Good Job %N%!
echo You are right
echo Press R to try again;Press Q to quit;Press M to go to the Math Home Screen
choice /c rqm

if errorlevel 3 goto start1
if errorlevel 2 exit
if errorlevel 1 goto HM

:wrongHM
echo Sorry %N%, but you got it wrong.
echo The answer is %answer%
echo Press R to try again;Press Q to quit
choice /c rq
if errorlevel 2 exit
if errorlevel 1 goto HM

:ED
@echo off
title Easy Division
cls
echo There is NO decimal place which means all answers are ROUNDED to the nearest 1
echo There is Negatives

set /a "character1=%random% %% 9 + 1"
set /a "character2=%random% %% 9 + 1"
if %character1% gtr 9 goto ED
if %character2% gtr 9 goto ED
if %character1% lss 1 goto ED
if %character2% lss 1 goto ED
if %character2% gtr %character1% goto ED
if %character2% equ %character1% goto ED

set /p "PlayerAns=What is %character1% / %character2%? "

set /a "answer=%character1% / %character2%"

if "%PlayerAns%"=="%answer%" (
    goto correctED
) else (
    goto wrongED
)

:correctED
echo Good Job %N%!
echo You are right
echo Press R to try again;Press Q to quit;Press M to go to the Math Home Screen
choice /c rqm

if errorlevel 3 goto start1
if errorlevel 2 exit
if errorlevel 1 goto ED

:wrongED
echo Sorry %N%, but you got it wrong.
echo The answer is APPROXIMATELY %answer%
echo Press R to try again;Press Q to quit
choice /c rq
if errorlevel 2 exit
if errorlevel 1 goto ED

:MD
@echo off
title Medium Division
cls
echo There is NO decimal place which means all answers are ROUNDED DOWN to the nearest 1
echo There is Negatives

set /a "character1=%random% %% 99 + 1"
set /a "character2=%random% %% 9 + 1"
if %character1% gtr 99 goto MD
if %character2% gtr 99 goto MD
if %character1% lss 1 goto MD
if %character2% lss 1 goto MD

set /p "PlayerAns=What is %character1% / %character2%? "

set /a "answer=%character1% / %character2%"

if "%PlayerAns%"=="%answer%" (
    goto correctMD
) else (
    goto wrongMD
)

:correctMD
echo Good Job %N%!
echo You are right
echo Press R to try again;Press Q to quit;Press M to go to the Math Home Screen
choice /c rqm

if errorlevel 3 goto start1
if errorlevel 2 exit
if errorlevel 1 goto MD

:wrongMD
echo Sorry %N%, but you got it wrong.
echo The answer is APPROXIMATELY %answer%
echo Press R to try again;Press Q to quit
choice /c rq
if errorlevel 2 exit
if errorlevel 1 goto MD

:HD
@echo off
title Medium Division
cls
echo There is NO decimal place which means all answers are ROUNDED DOWN to the nearest 1
echo There is Negatives

set /a "character1=%random% %% 999 + 1"
set /a "character2=%random% %% 99 + 1"
if %character1% gtr 999 goto HD
if %character2% gtr 99 goto HD
if %character1% lss 1 goto HD
if %character2% lss 1 goto HD

set /p "PlayerAns=What is %character1% / %character2%? "

set /a "answer=%character1% / %character2%"

if "%PlayerAns%"=="%answer%" (
    goto correctHD
) else (
    goto wrongHD
)

:correctHD
echo Good Job %N%!
echo You are right
echo Press R to try again;Press Q to quit;Press M to go to the Math Home Screen
choice /c rqm

if errorlevel 3 goto start1
if errorlevel 2 exit
if errorlevel 1 goto HD

:wrongHD
echo Sorry %N%, but you got it wrong.
echo The answer is APPROXIMATELY %answer%
echo Press R to try again;Press Q to quit
choice /c rq
if errorlevel 2 exit
if errorlevel 1 goto HD




