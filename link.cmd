@echo off

mkdir "build\libs"
@REM mkdir ".gradle"

setlocal enabledelayedexpansion

set array=folia server_top server forge_1_20 ^
forge_1_19_2 forge_1_18_2 forge_1_16_5 forge_1_12_2 forge_1_7_10 ^
fabric_1_20_2 fabric_1_20 fabric_1_19_3 fabric_1_19_2 fabric_1_18_2 ^
fabric_1_16_5 fabric_1_20_6 fabric_1_21 neoforge_1_20_4 neoforge_1_20_5 neoforge_1_21 ^
<<<<<<< HEAD
neoforge_1_21_4 fabric_1_21_4 fabric_1_21_5 neoforge_1_21_5 fabric_1_21_6 neoforge_1_21_6 ^
fabric_1_21_7 neoforge_1_21_7
=======
neoforge_1_21_4 fabric_1_21_4 fabric_1_21_5 neoforge_1_21_5 fabric_1_21_6 neoforge_1_21_6
>>>>>>> 3249721bd9785067bef65761987b2124fd45fd20

for %%i in (%array%) do (
    if not exist "%%i\src\main\java\com\coloryr\allmusic\server\core" mklink /j "%%i\src\main\java\com\coloryr\allmusic\server\core" "core"
    if not exist "%%i\build" mkdir "%%i\build" && mklink /j "%%i\build\libs" "build\libs"
    @REM if not exist "%%i\.gradle" mklink /j "%%i\.gradle" ".gradle"
)

set array1=folia server_top forge_1_20 ^
forge_1_19_2 forge_1_18_2 forge_1_16_5 forge_1_12_2 forge_1_7_10 ^
fabric_1_20_2 fabric_1_20 fabric_1_19_3 fabric_1_19_2 fabric_1_18_2 ^
fabric_1_16_5 fabric_1_20_6 fabric_1_21 neoforge_1_20_4 neoforge_1_20_5 neoforge_1_21 ^
<<<<<<< HEAD
neoforge_1_21_4 fabric_1_21_4 fabric_1_21_5 neoforge_1_21_5 fabric_1_21_6 neoforge_1_21_6 ^
fabric_1_21_7 neoforge_1_21_7
=======
neoforge_1_21_4 fabric_1_21_4 fabric_1_21_5 neoforge_1_21_5 fabric_1_21_6 neoforge_1_21_6
>>>>>>> 3249721bd9785067bef65761987b2124fd45fd20

for %%i in (%array1%) do (
    if not exist "%%i\src\main\java\com\coloryr\allmusic\server\codec" mklink /j "%%i\src\main\java\com\coloryr\allmusic\server\codec" "codec"
)

set array2=folia server_top server

for %%i in (%array2%) do (
    if not exist "%%i\src\main\java\com\coloryr\allmusic\server\bstats" mklink /j "%%i\src\main\java\com\coloryr\allmusic\server\bstats" "bstats"
)
