cd C:\Program Files (x86)\Android\android-sdk\platform-tools
echo Designed By Edison.Z
echo Github:https://github.com/EDISON-Z/Brevent-bat

@echo off
goto check_Permissions

:check_Permissions
    echo Administrative permissions required. Detecting permissions...
	echo ��Ҫ����ԱȨ�ޡ����ڼ�����ԱȨ�ޣ������ĵȴ�......

    net session >nul 2>&1
    if %errorLevel% == 0 (
		echo Success: Administrative permissions confirmed.
		echo �ɹ�������ԱȨ�޿���
		echo �������豸��������USB����
			pause
		adb devices
			pause
		adb -d shell sh /sdcard/Android/data/me.piebridge.brevent/brevent.sh
		pause
    ) else (
		echo ^G ���Թ���ԱȨ������ 
    )

    pause >nul

