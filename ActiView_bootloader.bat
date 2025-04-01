@echo off
:start
echo Welcome to the new Biosemi loader.
echo Select from the following options by typing the number and hit ENTER
echo.
echo 1 - All labs not listed below - 128 channel cap / 2048 Hz PICK THIS IF YOU'RE NOT SURE
echo 2 - Haigh lab - 32 channel cap / 512 Hz
echo 3 - Photodiode - 128 channel cap / 2048 Hz
echo See: https://www.biosemi.com/faq/trigger_signals.htm for photodiode parameter tweaks
echo.
set choice=
set /p choice=Type menu item: 
if '%choice%'=='1' goto other
if '%choice%'=='2' goto haigh
if '%choice%'=='3' goto pd
echo "%choice%" is not valid, try again.
echo.
goto start

::Choices
:other
echo Other labs selected. Please wait for ActiView to open.
D:\ActiView902-Win\ActiView902-Win.exe
goto end

:haigh
echo Haigh lab selected. Please wait for ActiView to open.
D:\ActiView902-Win_32ch\ActiView902-Win.exe
goto end

:pd
echo Photodiode selected. Please wait for ActiView to open.
D:\ActiView902-Win_PD\ActiView902-Win.exe
goto end

::Quit programs
:end