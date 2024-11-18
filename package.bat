@echo off

set zipPath=D:\system\7-Zip\
set zipExe=%zipPath%/7z.exe
echo current path: %zipExe%

echo start package process...
%zipExe% a -tzip "D:\workspace\front\essays\dist.zip" "D:\workspace\front\essays\dist"
echo package finished.
pause
exit
