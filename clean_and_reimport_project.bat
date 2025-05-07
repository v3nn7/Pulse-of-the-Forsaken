@echo off
REM Script to clean Gradle cache, delete build folders and reimport project

echo Stopping any running Gradle daemons...
gradlew --stop

echo Deleting Gradle cache...
rd /s /q "%USERPROFILE%\.gradle\caches"

echo Deleting Gradle daemon folders...
rd /s /q "%USERPROFILE%\.gradle\daemon"

echo Deleting build folders...
rd /s /q "simple-mod\build"
rd /s /q "build"

echo Deleting .gradle folders...
rd /s /q "simple-mod\.gradle"
rd /s /q ".gradle"

echo Refreshing Gradle wrapper...
gradlew wrapper --gradle-version 8.14

echo Running clean build...
cd simple-mod
..\gradlew.bat clean build --refresh-dependencies --no-build-cache

echo Done. Please reimport the project in your IDE as a Gradle project.
pause
