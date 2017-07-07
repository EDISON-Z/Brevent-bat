@echo off
title Brevent-bat By Edison.Z
echo Brevent-bat By Edison.Z
echo Github:https://github.com/EDISON-Z/Brevent-bat
echo Please connect your devices, and make sure you are already enable USB Debug Mode
echo 请连接设备，并开启USB调试
pause
adb devices
pause
adb devices
adb -d shell sh /data/data/me.piebridge.brevent/brevent.sh
pause
