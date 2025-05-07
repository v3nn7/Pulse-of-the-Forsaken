@echo off
setlocal

rem Ustaw JAVA_HOME na JDK 17
set "JAVA_HOME=C:\Program Files\Eclipse Adoptium\jdk-17.0.14.7-hotspot"

rem Ustaw ścieżkę do lokalnej instalacji Gradle 7.6.4
set "GRADLE_HOME=C:\Gradle\gradle-7.6.4"
set "PATH=%GRADLE_HOME%\bin;%PATH%"

rem Uruchom Gradle build
"%GRADLE_HOME%\bin\gradle.bat" %*

endlocal
