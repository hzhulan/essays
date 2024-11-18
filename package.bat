@echo off
set zipPath=D:\system\7-Zip\
set zipExe=%zipPath%/7z.exe

echo "current path: %zipExe%"
%zipExe% a -tzip "D:\workspace\front\essays\dist.zip" "D:\workspace\front\essays\dist"
pause
echo "package finished"
exit
