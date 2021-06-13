@echo off
cd server
..\artifact\FXServer.exe +set sv_enforceGameBuild 2060 +set onesync_enabled 1 +exec live.cfg
pause