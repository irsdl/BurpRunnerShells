@echo off
REM Author: @irsdl
setlocal
for /f "tokens=*" %%a in ('dir /b /od /a-d %~dp0burpsuite*.jar') do set latest=%%a
REM echo %~dp0%latest%
REM pause

REM 1GB memory, 256MB perm size - you can change them
java -jar -Xmx1g -XX:MaxPermSize=256m "%~dp0%latest%"

REM if you have SSL issue, use this:
REM java -Djsse.enableSNIExtension=false -jar -Xmx2g -XX:MaxPermSize=512m "%~dp0%latest%"
