@echo off

echo *************************
echo HHKB flashing batch scipt
echo WARNING: before proceed, you must install driver
echo After ready, press any key and press the back button within 5 seconds
echo *************************
pause

echo Waiting 5 seconds...
pause 1
echo 4...
pause 1
echo 3...
pause 1
echo 2...
pause 1
echo 1...
pause 1
echo 1) Erasing firmware...
./dfu-programmer-win/dfu-programmer.exe atmegau32u4 erase
echo 2) Flashing firmware...
./dfu-programmer-win/dfu-programmer.exe atmegau32u4 flash c_hkkb_tmk.hex
echo 3) Resetting...
./dfu-programmer-win/dfu-programmer.exe atmegau32u4 reset
echo Complete! You now can use updated HHKB
echo Bye!
