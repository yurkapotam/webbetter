@echo off
set calling_path=%~dp0
echo Windows Registry Editor Version 5.00>reg_installer.reg
echo.>>reg_installer.reg
echo [HKEY_CLASSES_ROOT\Webby]>>reg_installer.reg
echo.@="URL:Webby Protocol">>reg_installer.reg
echo."URL Protocol"="">>reg_installer.reg
echo.>>reg_installer.reg
echo.[HKEY_CLASSES_ROOT\Webby\shell]>>reg_installer.reg
echo.@="open">>reg_installer.reg
echo.>>reg_installer.reg
echo.[HKEY_CLASSES_ROOT\Webby\shell\open]>>reg_installer.reg
echo.@="&Play this Unreal level">>reg_installer.reg
echo.>>reg_installer.reg
echo.[HKEY_CLASSES_ROOT\Webby\shell\open\command]>>reg_installer.reg
echo.@="%calling_path%\webbetter.exe \"%%1\"">>reg_installer.reg
echo.>>reg_installer.reg
reg_installer
