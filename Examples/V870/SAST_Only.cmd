@echo off

pushd "%~dp0"
set JAVA_HOME=
set PATH=%JAVA_HOME%/bin;%PATH%

java -Xmx1024m -jar CxConsolePlugin-CLI-8.80.2.jar Scan -ProjectName "CxServer\CLI_SAST_SCAN" -CxServer "http://server" -cxUser "user" -cxPassword "password" -locationType shared -locationUser "user" -locationPassword "XXX" -locationPath "path" -preset Default -v -comment "comment" -SASTHigh 1 -SASTMedium 2 -SASTLow 3
set exitCode=%errorlevel%

popd
Exit /B %exitCode%
