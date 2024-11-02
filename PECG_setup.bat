@echo off
title Setup - PECG

cd ..

@echo on
echo Installing dependencies, this might take a few moments...
haxelib --global update haxelib
haxelib setup
haxelib install lime
haxelib install openfl
haxelib install flixel
haxelib install flixel-tools
haxelib install flixel-addons
haxelib install flixel-ui
haxelib install hscript-iris
haxelib install hxdiscord_rpc
haxelib install tjson
haxelib install SScript
haxelib install hxCodec
haxelib install hxvlc
haxelib install hxcpp
haxelib install hxcpp-debug-server
haxelib install hscript
haxelib install actuate
haxelib git faxe https://github.com/ashea-code/faxe
haxelib git flxanimate https://github.com/Dot-Stuff/flxanimate
haxelib git linc_luajit https://github.com/superpowers04/linc_luajit
haxelib git funkin.vis https://github.com/FunkinCrew/funkVis
haxelib git grig.audio https://gitlab.com/haxe-grig/grig.audio
haxelib git hxvm-luajit https://github.com/nebulazorua/hxvm-luajit
haxelib update

echo Installed Haxe packages.

echo Installing Lime and OpenFL...
haxelib run lime setup flixel
haxelib run lime setup
lime install openfl
haxelib run flixel-tools setup
haxelib run openfl setup
lime setup windows

echo Installed Lime and OpenFL.

echo Installing Visual Studio, please wait...
curl -# -O https://download.visualstudio.microsoft.com/download/pr/3105fcfe-e771-41d6-9a1c-fc971e7d03a7/8eb13958dc429a6e6f7e0d6704d43a55f18d02a253608351b6bf6723ffdaf24e/vs_Community.exe
vs_Community.exe --add Microsoft.VisualStudio.Component.VC.Tools.x86.x64 --add Microsoft.VisualStudio.Component.Windows10SDK.19041 -p
del vs_Community.exe

echo Finished installing Visual Studio!

echo Press any key to exit.
pause >nul
