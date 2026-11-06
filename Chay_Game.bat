@echo off
title Web Game Cau Ca 3D - Desktop
cd /d "%~dp0"
echo ========================================================
echo       DANG KHOI DONG GAME CAU CA 3D (DESKTOP)
echo ========================================================
echo.
echo Dang mo trinh duyet tai: http://localhost:8085/Map.html ...
start "" "http://localhost:8085/Map.html"
python cors_server.py
pause
