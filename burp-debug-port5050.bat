REM Author: @irsdl
setlocal
SET javahome=C:\openjdk14
for /f "tokens=*" %%a in ('dir /b /od /a-d %~dp0burpsuite*.jar') do set latest=%%a
REM echo %~dp0%latest%
REM pause

REM 1GB memory - you can change it
REM java -jar -Xmx2g -XX:MaxPermSize=512m "%~dp0%latest%"

REM java -Djsse.enableSNIExtension=false -jar -Xmx2g -XX:MaxPermSize=512m "%~dp0%latest%"

REM java -Xdebug -Xrunjdwp:transport=dt_socket,server=y,address="5050" -jar -Xmx8g -Dsun.java2d.noddraw=true -XX:MaxPermSize=512m "%~dp0%latest%"

"%javahome%\bin\java" -jar -Xmx8g -Dsun.java2d.noddraw=true -XX:MaxPermSize=512m -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address="5050" "%~dp0%latest%"
