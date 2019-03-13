@echo off

pushd "%~dp0"
set JAVA_HOME=
set PATH=%JAVA_HOME%/bin;%PATH%

java -Xmx1024m -jar CxConsolePlugin-CLI-8.80.2.jar Scan -ProjectName "CxServer\CLI_SAST_AND_OSA_SCAN" -CxServer "http://server" -cxUser "user" -cxPassword "password" -locationType shared -locationUser "user" -locationPassword "password" -locationPath "SAST path" -preset Default -v -comment "comment" -SASTHigh 1 -SASTMedium 2 -SASTLow 3 -EnableOsa -osaLocationPath "OSA path" -OSAHigh 1 -OSAMedium 2 -OSALow 3
set exitCode=%errorlevel%

popd
Exit /B %exitCode%
