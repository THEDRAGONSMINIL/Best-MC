@echo off
title Minecraft Server

rem Read MIN_RAM and MAX_RAM from setting.txt
for /f "tokens=1,2 delims==" %%a in (setting.txt) do (
    if "%%a"=="MIN_RAM" set MIN_RAM=%%b
    if "%%a"=="MAX_RAM" set MAX_RAM=%%b
)

echo Starting Minecraft server with %MIN_RAM%G - %MAX_RAM%G RAM...
java -Xms%MIN_RAM%G -Xmx%MAX_RAM%G -jar server.jar nogui
pause
