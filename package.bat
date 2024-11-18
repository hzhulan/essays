@echo off

set zipPath=D:\system\7-Zip\
set zipExe=%zipPath%/7z.exe
echo current path: %zipExe%

:: 使用 call 命令确保 npm run build
echo start build process...
call npm run build
if %errorlevel% neq 0 (
    echo Build failed with error code %errorlevel%
    exit /b %errorlevel%
)
echo build successfully.

echo start package process...
%zipExe% a -tzip "D:\workspace\front\essays\dist.zip" "D:\workspace\front\essays\dist"
echo package successfully.
pause
exit
