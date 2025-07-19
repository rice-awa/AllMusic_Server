@echo off

setlocal enabledelayedexpansion
<<<<<<< HEAD
:: ï¿½æ±¾ï¿½Ð±ï¿½
=======
:: °æ±¾ÁÐ±í
>>>>>>> 3249721bd9785067bef65761987b2124fd45fd20
set "PROJECTS[0]=forge_1_7_10"
set "PROJECTS[1]=forge_1_12_2"
set "PROJECTS[2]=forge_1_16_5"
set "PROJECTS[3]=forge_1_18_2"
set "PROJECTS[4]=forge_1_19_2"
set "PROJECTS[5]=forge_1_20"
set "PROJECTS[6]=fabric_1_16_5"
set "PROJECTS[7]=fabric_1_18_2"
set "PROJECTS[8]=fabric_1_19_2"
set "PROJECTS[9]=fabric_1_19_3"
set "PROJECTS[10]=fabric_1_20"
set "PROJECTS[11]=fabric_1_20_2"
set "PROJECTS[12]=fabric_1_20_6"
set "PROJECTS[13]=fabric_1_21"
set "PROJECTS[14]=fabric_1_21_4"
set "PROJECTS[15]=fabric_1_21_5"
set "PROJECTS[16]=fabric_1_21_6"
<<<<<<< HEAD
set "PROJECTS[17]=fabric_1_21_7"
set "PROJECTS[18]=neoforge_1_20_4"
set "PROJECTS[19]=neoforge_1_20_6"
set "PROJECTS[20]=neoforge_1_21"
set "PROJECTS[21]=neoforge_1_21_4"
set "PROJECTS[22]=neoforge_1_21_5"
set "PROJECTS[23]=neoforge_1_21_6"
set "PROJECTS[24]=neoforge_1_21_7"
set "PROJECTS[25]=folia"
set "PROJECTS[26]=server"
set "PROJECTS[27]=server_top"

set /a ARRAY_LENGTH=27
=======
set "PROJECTS[17]=neoforge_1_20_4"
set "PROJECTS[18]=neoforge_1_20_6"
set "PROJECTS[19]=neoforge_1_21"
set "PROJECTS[20]=neoforge_1_21_4"
set "PROJECTS[21]=neoforge_1_21_5"
set "PROJECTS[22]=neoforge_1_21_6"
set "PROJECTS[23]=folia"
set "PROJECTS[24]=server"
set "PROJECTS[25]=server_top"

set /a ARRAY_LENGTH=25
>>>>>>> 3249721bd9785067bef65761987b2124fd45fd20

cls

set "LINK_SCRIPT=link.cmd"
<<<<<<< HEAD
echo ï¿½ï¿½ï¿½ï¿½Ö´ï¿½ï¿½Ô¤ï¿½ï¿½ï¿½ï¿½ï¿½Å±ï¿½: %LINK_SCRIPT%
call "%LINK_SCRIPT%" || (
    echo Ô¤ï¿½ï¿½ï¿½ï¿½ï¿½Å±ï¿½Ê§ï¿½Ü£ï¿½ï¿½Ë³ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
=======
echo ÕýÔÚÖ´ÐÐÔ¤´¦Àí½Å±¾: %LINK_SCRIPT%
call "%LINK_SCRIPT%" || (
    echo Ô¤´¦Àí½Å±¾Ê§°Ü£¬ÍË³ö±àÒëÁ÷³Ì
>>>>>>> 3249721bd9785067bef65761987b2124fd45fd20
    pause
    exit /b 1
)

:menu
cls
<<<<<<< HEAD
echo AllMusicï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
echo Ñ¡ï¿½ï¿½ï¿½ï¿½Òªï¿½ï¿½ï¿½ï¿½ï¿½Ä°æ±¾ï¿½ï¿½
echo ----------------------------

:: ï¿½ï¿½ï¿½É²Ëµï¿½Ñ¡ï¿½ï¿½
=======
echo AllMusic·þÎñÆ÷±àÒë
echo Ñ¡ÔñÐèÒª¹¹½¨µÄ°æ±¾£º
echo ----------------------------

:: Éú³É²Ëµ¥Ñ¡Ïî
>>>>>>> 3249721bd9785067bef65761987b2124fd45fd20
for /L %%i in (0,1,%ARRAY_LENGTH%) do (
    call echo  [%%i] - %%PROJECTS[%%i]%%
)
echo ----------------------------
<<<<<<< HEAD
echo ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Òªï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ä¿ï¿½ï¿½ï¿½ (0-%ARRAY_LENGTH%):
set /p SELECTION=?

:: ï¿½ï¿½Ö¤ï¿½ï¿½ï¿½ï¿½ï¿½Ç·ï¿½Îªï¿½ï¿½ï¿½ï¿½
if not defined SELECTION (
    echo ï¿½ï¿½ï¿½ï¿½Î´ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
=======
echo ÇëÊäÈëÒª±àÒëµÄÏîÄ¿±àºÅ (0-%ARRAY_LENGTH%):
set /p SELECTION=?

:: ÑéÖ¤ÊäÈëÊÇ·ñÎªÊý×Ö
if not defined SELECTION (
    echo ´íÎó£ºÎ´ÊäÈë±àºÅ
>>>>>>> 3249721bd9785067bef65761987b2124fd45fd20
    pause
    goto :menu
)
if not "%SELECTION%" == "" (
    set /a SELECTION=%SELECTION%
    if %SELECTION% LSS 0 (
<<<<<<< HEAD
        echo ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ë²»ï¿½ï¿½Ð¡ï¿½ï¿½0
=======
        echo ´íÎó£ºÊäÈë²»ÄÜÐ¡ÓÚ0
>>>>>>> 3249721bd9785067bef65761987b2124fd45fd20
        pause
        goto :menu
    )
    if %SELECTION% GEQ %ARRAY_LENGTH%+1 (
<<<<<<< HEAD
        echo ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ë³¬ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½%ARRAY_LENGTH%
=======
        echo ´íÎó£ºÊäÈë³¬¹ý×î´óË÷Òý%ARRAY_LENGTH%
>>>>>>> 3249721bd9785067bef65761987b2124fd45fd20
        pause
        goto :menu
    )
)

<<<<<<< HEAD
:: ï¿½ï¿½È¡Ñ¡ï¿½ï¿½Â·ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ì·ï¿½/Â·ï¿½ï¿½
call set "SELECTED_PATH=%%PROJECTS[%SELECTION%]%%"

:: ï¿½ï¿½ï¿½Â·ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
if not exist "%SELECTED_PATH%" (
    echo ï¿½ï¿½ï¿½ï¿½Â·ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ - %SELECTED_PATH%
=======
:: »ñÈ¡Ñ¡¶¨Â·¾¶²¢²ð·ÖÅÌ·û/Â·¾¶
call set "SELECTED_PATH=%%PROJECTS[%SELECTION%]%%"

:: ¼ì²éÂ·¾¶´æÔÚÐÔ
if not exist "%SELECTED_PATH%" (
    echo ´íÎó£ºÂ·¾¶²»´æÔÚ - %SELECTED_PATH%
>>>>>>> 3249721bd9785067bef65761987b2124fd45fd20
    pause
    goto :menu
)

<<<<<<< HEAD
:: Ö´ï¿½ï¿½Ä¿Â¼ï¿½Ð»ï¿½
cd /D "%SELECTED_PATH%"

:: ï¿½ï¿½Ê¾ï¿½ï¿½Ç°Â·ï¿½ï¿½ï¿½ï¿½Ö´ï¿½Ð±ï¿½ï¿½ï¿½
echo ï¿½ï¿½Ç°ï¿½ï¿½ï¿½ï¿½Ä¿Â¼ï¿½ï¿½
cd
echo ï¿½ï¿½ï¿½ï¿½Ö´ï¿½ï¿½Gradleï¿½ï¿½ï¿½ï¿½...
call gradlew build

:: ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
if %ERRORLEVEL% EQU 0 (
    echo ï¿½ï¿½ï¿½ï¿½É¹ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î»ï¿½Ã£ï¿½build\libs
) else (
    echo ï¿½ï¿½ï¿½ï¿½Ê§ï¿½Ü£ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ï¢
=======
:: Ö´ÐÐÄ¿Â¼ÇÐ»»
cd /D "%SELECTED_PATH%"

:: ÏÔÊ¾µ±Ç°Â·¾¶²¢Ö´ÐÐ±àÒë
echo µ±Ç°¹¤×÷Ä¿Â¼£º
cd
echo ÕýÔÚÖ´ÐÐGradle±àÒë...
call gradlew build

:: ±àÒë½á¹û´¦Àí
if %ERRORLEVEL% EQU 0 (
    echo ±àÒë³É¹¦£¡Éú³ÉÎ»ÖÃ£ºbuild\libs
) else (
    echo ±àÒëÊ§°Ü£¬Çë¼ì²é´íÎóÐÅÏ¢
>>>>>>> 3249721bd9785067bef65761987b2124fd45fd20
)
pause

goto :menu