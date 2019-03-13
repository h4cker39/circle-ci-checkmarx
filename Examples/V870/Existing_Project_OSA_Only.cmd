@echo off

pushd "%~dp0"
set JAVA_HOME=
set PATH=%JAVA_HOME%/bin;%PATH%

java -Xmx1024m -jar CxConsolePlugin-CLI-8.80.2.jar OsaScan -ProjectName "CxServer\ExistProjectPath" -CxServer "http://server" -cxUser "user" -cxPassword "password" -locationType shared -locationUser "user" -locationPassword "password" -v -osaLocationPath "path" -OSAHigh 1 -OSAMedium 2 -OSALow 3
set exitCode=%errorlevel%

popd
Exit /B %exitCode%
