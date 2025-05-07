@echo off
REM Script to fix Gradle wrapper by deleting existing wrapper files and regenerating them

echo Deleting existing Gradle wrapper files...
del gradlew
del gradlew.bat
rd /s /q gradle\wrapper

echo Regenerating Gradle wrapper...
REM Requires local Gradle installation and gradle command in PATH
gradle wrapper

echo Gradle wrapper has been regenerated.
pause
