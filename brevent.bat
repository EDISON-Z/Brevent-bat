cd C:\Program Files (x86)\Android\android-sdk\platform-tools
echo Designed By Edison.Z
echo Github:https://github.com/EDISON-Z/Brevent-bat

@echo off
goto check_Permissions

:check_Permissions
    echo Administrative permissions required. Detecting permissions...
	echo 需要管理员权限。正在检测管理员权限，请耐心等待......

    net session >nul 2>&1
    if %errorLevel% == 0 (
		echo Success: Administrative permissions confirmed.
		echo 成功：管理员权限可用
		echo 请连接设备，并开启USB调试
			pause
		adb devices
			pause
		adb -d shell sh /sdcard/Android/data/me.piebridge.brevent/brevent.sh
		pause
    ) else (
		echo ^G 请以管理员权限运行 
    )

    pause >nul

