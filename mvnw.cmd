@echo off
setlocal
set MAVEN_PROJECTBASEDIR=%~dp0
if not exist "%MAVEN_PROJECTBASEDIR%\.mvn\wrapper\maven-wrapper.jar" (
  echo Downloading Maven Wrapper bootstrap...
  powershell -NoProfile -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri 'https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.3.2/maven-wrapper-3.3.2.jar' -OutFile '%MAVEN_PROJECTBASEDIR%\.mvn\wrapper\maven-wrapper.jar'"
  if errorlevel 1 exit /b 1
)
set MAVEN_PROJECTBASEDIR=%MAVEN_PROJECTBASEDIR:~0,-1%
java -Dmaven.multiModuleProjectDirectory="%MAVEN_PROJECTBASEDIR%" -classpath "%MAVEN_PROJECTBASEDIR%\.mvn\wrapper\maven-wrapper.jar" org.apache.maven.wrapper.MavenWrapperMain %*
endlocal
