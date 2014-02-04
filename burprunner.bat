@echo off
REM Author: @irsdl
setlocal
for /f "tokens=*" %%a in ('dir /b /od /a-d %~dp0burpsuite*.jar') do set latest=%%a
REM echo %~dp0%latest%
REM pause

REM 1GB memory - you can change it
java -jar -Xmx1g "%~dp0%latest%"
