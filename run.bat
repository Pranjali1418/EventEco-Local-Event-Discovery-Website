@echo off
cd /d "%~dp0"

echo Installing dependencies for frontend...
cd client
call npm install
echo Frontend dependencies installed.

echo Installing dependencies for backend...
cd ../server
call npm install
echo Backend dependencies installed.

echo Starting frontend...
start cmd /k "cd /d %~dp0client && npm run dev"

echo Starting backend...
start cmd /k "cd /d %~dp0server && node index.js"

echo All processes started.
exit
