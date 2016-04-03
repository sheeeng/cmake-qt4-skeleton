@echo off

call "C:\Program Files (x86)\Microsoft Visual Studio 8\VC\vcvarsall.bat" x86

REM set QTDIR=C:\Qt\4.5.3
REM set PATH=%PATH%;%QTDIR%\bin;
REM set | findstr /i qt

"C:\Program Files (x86)\CMake 2.6\bin\cmake.exe" -G "Visual Studio 8 2005" ..\miniprogram

REM "C:\Program Files (x86)\cmake-3.5.1-win32-x86\bin\cmake.exe" -G "Visual Studio 8 2005" ..\miniprogram

"C:\Windows\Microsoft.NET\Framework\v2.0.50727\MSBuild.exe" miniprogram.sln /verbosity:diagnostic /t:Rebuild /p:Configuration=Debug /p:Platform=Win32 /l:FileLogger,Microsoft.Build.Engine;logfile=%CD%\miniprogram_debug_x86.log

REM "C:\Program Files (x86)\Microsoft Visual Studio 8\Common7\IDE\devenv.exe" miniprogram.sln

REM "C:\Windows\Microsoft.NET\Framework\v2.0.50727\MSBuild.exe" miniprogram.sln /detailedsummary /maxcpucount:4 /verbosity:diagnostic /p:Configuration=Debug /p:Platform=Win32 /l:FileLogger,Microsoft.Build.Engine;logfile=%CD%\miniprogram_debug_x86.log

REM "C:\Program Files (x86)\Microsoft Visual Studio 8\VC\VCPackages\vcbuild.exe" miniprogram.sln

pause