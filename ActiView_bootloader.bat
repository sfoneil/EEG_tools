@echo off
:start
echo Welcome to the new Biosemi loader.
echo Select from the following options by typing the number and hit ENTER
echo.
echo 1 - All labs not listed below - PICK THIS IF YOU'RE NOT SURE
echo 2 - Haigh lab - 32 channel cap / 512 Hz
echo.
set choice=
set /p choice=Type menu item: 
if '%choice%'=='1' goto other
if '%choice%'=='2' goto haigh
echo "%choice%" is not valid, try again.
echo.
goto start

::Choices
:other
echo Other labs selected. Please wait for ActiView to open.
D:\ActiView\ActiView707-Lores.exe
goto end

:haigh
echo Haigh lab selected. Please wait for ActiView to open.
D:\ActiViewHaigh\ActiView707-Lores.exe
goto end

::Quit programs
:end