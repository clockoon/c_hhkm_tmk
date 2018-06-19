@echo off

echo *************************
echo HHKB flashing batch scipt
echo WARNING: before proceed, you must install driver
echo After ready, press any key and press the back button within 5 seconds
echo *************************
pause

echo Waiting 5 seconds...
sleep 1
echo 4...
sleep 1
echo 3...
sleep 1
echo 2...
sleep 1
echo 1...
sleep 1
echo 1) Erasing firmware...
%~dp0\dfu-programmer-win\dfu-programmer.exe atmega32u4 erase --force
echo 2) Flashing firmware...
%~dp0\dfu-programmer-win\dfu-programmer.exe atmega32u4 flash .\c_hhkb_tmk.hex
echo 3) Resetting...
%~dp0\dfu-programmer-win\dfu-programmer.exe atmega32u4 reset
echo Complete! You now can use updated HHKB
echo Bye!
pause
