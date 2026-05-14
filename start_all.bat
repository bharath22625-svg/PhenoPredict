@echo off
title PhenoPredictor Startup

echo ========================================
echo Starting All Services...
echo ========================================

REM ---------- FRONTEND ----------
start cmd /k "cd /d C:\projects\2-1\PhenoPredictor-main\client && npm run dev"

REM ---------- NODE BACKEND ----------
start cmd /k "cd /d C:\projects\2-1\PhenoPredictor-main\server && call venv\Scripts\activate && npm run dev"

REM ---------- ML SERVICE ----------
start cmd /k "cd /d C:\projects\2-1\PhenoPredictor-main\server\ml_service && ..\venv\Scripts\python.exe -m uvicorn main:app --reload --port 8010"

echo ========================================
echo All services started.
echo ========================================

pause