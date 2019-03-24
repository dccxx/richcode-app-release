@echo off
echo INSTALLING...
echo ---
SET v8=%cd%\tools
cd src
%v8%\v8.exe ../tools/yarn/bin/yarn.js install --production
echo ---
echo RUNNING...
%v8%\v8.exe ../tools/yarn/bin/yarn.js run v8-start
